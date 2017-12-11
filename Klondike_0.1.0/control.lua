require("config")

function initialize()
	if global.klondike == nil then

		global.klondike = {}

		global.klondike.player = {}
	end
end

function create_player_data(index)
	if global.klondike.player[index] == nil then
		player_property_update("fix", index, "hunger_value", 100)
		player_property_update("fix", index, "ticks", 0) --verstehe ich nicht | glaub ech bedeutet, die tickrate anfangs auf 0 setzen?
	end
end

function player_property_update(mode, index, name, v)
	if global.klondike.player[index] == nil then
		global.klondike.player[index] = {}
	end
	if mode == "increase" then
		global.klondike.player[index][name] = global.klondike.player[index][name] + v
	end
	if mode == "decrease" then
		global.klondike.player[index][name] = global.klondike.player[index][name] - v
	end
	if mode == "fix" then
		global.klondike.player[index][name] = v
	end
	--Ober- und Untergrenze jeder Eigenschaft
	if name == "hunger_value" then
		if HUNGER_IMPLEMENT then
			if global.klondike.player[index][name] > 100 then
				global.klondike.player[index][name] = 100
			end
			if global.klondike.player[index][name] < 0 then
				global.klondike.player[index][name] = 0
			end
		else
			global.klondike.player[index][name] = 100
		end
	end
end

function player_damage(index, v)
	if game.players[index].character.health > v then
		game.players[index].character.health = game.players[index].character.health - v
	else
		game.players[index].character.die()
	end
end

function hunger_gui_check(player_index)
	local player = game.players[player_index]
	local player_data = global.klondike.player[player_index]
	local hunger_progress_value = player_data.hunger_value / 100
	if player.connected == true then
		if HUNGER_IMPLEMENT then
			if player.gui.top.hunger_indicator == nil then
				player.gui.top.add {
					type = "frame",
					name = "hunger_indicator"
				}
				player.gui.top.hunger_indicator.add {
					type = "flow",
					name = "hunger_contents",
					direction = "vertical"
				}
				player.gui.top.hunger_indicator.hunger_contents.add {
					type = "label",
					name = "hunger_label",
					caption = {"hunger-caption"}
				}
				player.gui.top.hunger_indicator.hunger_contents.add {
					type = "progressbar",
					name = "hunger_value",
					size = 100.0
				}
			end
			player.gui.top.hunger_indicator.hunger_contents.hunger_value.value = hunger_progress_value
		else
			if player.gui.top.hunger_indicator ~= nil then
				player.gui.top.hunger_indicator.destroy()
			end
		end
	end
end

--Events (Essen)


script.on_init(function()
	initialize()
end)

script.on_load(function()
	initialize()
end)

--Prozess wenn Spieler erstellt werden.
script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index]
	if HUNGER_IMPLEMENT then
		player.insert{ name = "klondike-raw-fish", count = DEFAULT_ACQUIRE_RAW_FISH }
	end
	create_player_data(event.player_index)
end)

script.on_event(defines.events.on_player_respawned, function(event)
	local player = game.players[event.player_index]
	local player_data = global.klondike.player[event.player_index]
	if HUNGER_IMPLEMENT then
		player.insert{ name = "klondike-raw-fish", count = DEFAULT_ACQUIRE_RAW_FISH }
	end
	if player_data ~= nil then
		player_property_update("fix", event.player_index, "hunger_value", 100)
		hunger_gui_check(event.player_index)
	end
end)

script.on_event(defines.events.on_player_joined_game, function(event)
	create_player_data(event.player_index)
	hunger_gui_check(event.player_index)
end)

--Event wenn der Spieler isst, nur Hunger wird aufgefuellt, nicht seine Lebenspunkte!
script.on_event(defines.events.on_trigger_created_entity, function(event)
	local thismod_flag = false
	if event.entity.name == "klondike-eating-raw-fish-entity" then
		player_property_update("increase", event.player_index.index, "hunger_value", ADD_HUNGER_EATING_FISH)
		--event.entity.last_user.character.health = event.entity.last_user.character.health + ADD_HEALTH_EATING_FISH
		thismod_flag = true
	end
	if thismod_flag then
		hunger_gui_check(event.player_index.index)
		event.entity.destroy()
	end
end)

script.on_event(defines.events.on_player_crafted_item, function(event)
	local player = game.players[event.player_index]
	player_property_update("decrease", event.player_index, "hunger_value", HUNGER_DECREASE_DEPEND_CRAFT)
	hunger_gui_check(event.player_index)
	if global.klondike.player[event.player_index].hunger_value == 0 and player.character ~= nil then
		player_damage(event.player_index, HEALTH_DECREASE_DEPEND_CRAFT)
	end
end)

script.on_event(defines.events.on_player_mined_tile, function(event)
	local player = game.players[event.player_index]
	player_property_update("decrease", event.player_index, "hunger_value", HUNGER_DECREASE_DEPEND_TILE)
	hunger_gui_check(event.player_index)
	if global.klondike.player[event.player_index].hunger_value == 0 and player.character ~= nil then
		player_damage(event.player_index, HEALTH_DECREASE_DEPEND_TILE)
	end
end)

script.on_event(defines.events.on_player_built_tile, function(event)
	local player = game.players[event.player_index]
	player_property_update("decrease", event.player_index, "hunger_value", HUNGER_DECREASE_DEPEND_TILE)
	hunger_gui_check(event.player_index)
	if global.klondike.player[event.player_index].hunger_value == 0 and player.character ~= nil then
		player_damage(event.player_index, HEALTH_DECREASE_DEPEND_TILE)
	end
end)

script.on_event(defines.events.on_player_mined_item, function(event)
	local player = game.players[event.player_index]
	player_property_update("decrease", event.player_index, "hunger_value", HUNGER_DECREASE_DEPEND_ITEM)
	hunger_gui_check(event.player_index)
	if global.klondike.player[event.player_index].hunger_value == 0 and player.character ~= nil then
		player_damage(event.player_index, HEALTH_DECREASE_DEPEND_ITEM)
	end
end)

script.on_event(defines.events.on_built_entity, function(event)
	local player = game.players[event.player_index]
	player_property_update("decrease", event.player_index, "hunger_value", HUNGER_DECREASE_DEPEND_BUILD)
	hunger_gui_check(event.player_index)
	if global.klondike.player[event.player_index].hunger_value == 0 and player.character ~= nil then
		player_damage(event.player_index, HEALTH_DECREASE_DEPEND_BUILD)
	end
end)

script.on_event(defines.events.on_player_mined_entity, function(event)
	player_property_update("decrease", event.player_index, "hunger_value", HUNGER_DECREASE_DEPEND_REMOVE)
	hunger_gui_check(event.player_index)
end)

script.on_event(defines.events.on_tick, function(event)
	if HUNGER_IMPLEMENT then
		for index, player in pairs(game.players) do
			if player.connected then
				create_player_data(index)
				player_property_update("increase", index, "ticks", 1)
				if global.klondike.player[index].ticks % HUNGER_PERIODIC_TICK == 0 then
					if global.klondike.player[index].hunger_value > 0 then
						player_property_update("decrease", index, "hunger_value", HUNGER_DECREASE)
						hunger_gui_check(index)
					end
				end
				if global.klondike.player[index].ticks % HEALTH_PERIODIC_TICK == 0 then
					if global.klondike.player[index].hunger_value == 0 and player.character ~= nil then
						if DIFFICULTY_VALUE == 0 then
							if player.character.health > HEALTH_DECREASE then
								player_damage(index, HEALTH_DECREASE)
							end
						else
							player_damage(index, HEALTH_DECREASE)
						end
					end
				end
			end
		end
	end
end)