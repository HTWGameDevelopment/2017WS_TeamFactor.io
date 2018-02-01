require("hunger_constants")

--gui
require("graphics.gui.hunger_frame")

--logic
require("logic.hungerspeed_sigmoid_function")

--events
require("events.hunger.on_pre_player_died")
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
require("events.hunger.on_tick")
require("events.food.getMeatEvent")
require("events.hunger.on_robot_mined_entity")

function initialize()
	if global.klondike == nil then
		global.klondike = {}
		global.klondike.player = {}
		global.klondike.tick = {}
	end
end

function create_player_data(index)
	if global.klondike.player[index] == nil then
		global.klondike.tick[index] = SCHEITELPUNKT/2 + SCHIEBER
		--HUNGER_PERIODIC_TICK = SCHEITELPUNKT/2 + SCHIEBER
		player_property_update("fix", index, "hunger_value", MAXIMUM_HUNGER)
		player_property_update("fix", index, "ticks", 0) --tickrate
	end
end

function player_property_update(mode, index, name, v)
	if HUNGER_IMPLEMENT then
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

	end
	--Ober- und Untergrenze jeder Eigenschaft
	if name == "hunger_value" and HUNGER_IMPLEMENT then
		
			if global.klondike.player[index][name] > HUNGER_OVERLOAD then
				global.klondike.player[index][name] = HUNGER_OVERLOAD
			end
			if global.klondike.player[index][name] < 0 then
				global.klondike.player[index][name] = 0
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

	if (DEATH == 0) then
		if v < 30 then
			--game.players[index].character_running_speed_modifier = -0.5
			--game.print("lowering speed...")
			game.players[index].character_running_speed_modifier = v*(1/60)-0.5
			--game.print("speed lowered!")
		elseif v > MAXIMUM_HUNGER then
			--game.print("increasing speed...")
			game.players[index].character_running_speed_modifier = (MAXIMUM_HUNGER-v)*(-1/200)+1
			--game.print("speed increased!")

		else
			--game.print("normalizing speed...")
			game.players[index].character_running_speed_modifier = 0
			--game.print("speed normalized!")
		end
	end
end

script.on_init(function()
	if settings.startup["hunger-enabled"].value == true then
		HUNGER_IMPLEMENT = true
		DIFFICULTY_SETTING = settings.startup["hunger-difficulty"].value
        initialize()
    else
    	HUNGER_IMPLEMENT = false
    end	
end)

script.on_load(function()
	if settings.startup["hunger-enabled"].value == true then
		HUNGER_IMPLEMENT = true
		DIFFICULTY_SETTING = settings.startup["hunger-difficulty"].value
        initialize()
    else
    	HUNGER_IMPLEMENT = false
    end	
end)