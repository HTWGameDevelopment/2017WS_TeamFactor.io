require("hunger_constants")

--gui
require("graphics.gui.hunger_frame")

--logic
require("logic.hungerspeed_sigmoid_function")

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
--require("events.hunger.on_tick")
require("events.food.getMeatEvent")

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

function player_fatigue(index, v)
	if v < 25 then
		game.players[index].character_running_speed_modifier = -0.75
	else
		game.players[index].character_running_speed_modifier = 0
	end
end

script.on_init(function()
	initialize()
end)

script.on_load(function()
	initialize()
end)