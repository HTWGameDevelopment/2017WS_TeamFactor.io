require("config")

--gui
require("graphics.gui.hunger_frame")

--events
require("events.hunger.on_player_created")
require("events.hunger.on_player_respawned")
require("events.hunger.on_player_mined_tile")
require("events.hunger.on_player_mined_item")
require("events.hunger.on_player_mined_entity")
require("events.hunger.on_player_joined_game")
require("events.hunger.on_player_crafted_item")
require("events.hunger.on_player_built_tile")
require("events.hunger.on_built_entity")
require("events.hunger.on_trigger_created_entity")

function initialize()
	if global.klondike == nil then

		global.klondike = {}

		global.klondike.player = {}
	end
end

function create_player_data(index)
	if global.klondike.player[index] == nil then
		player_property_update("fix", index, "hunger_value", 100)
		player_property_update("fix", index, "ticks", 0) --tickrate
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

script.on_init(function()
	initialize()
end)

script.on_load(function()
	initialize()
end)

--TODO: TESTEN!
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