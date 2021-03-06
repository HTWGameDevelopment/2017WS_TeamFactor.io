--Event for respawning a player

script.on_event(defines.events.on_player_respawned, function(event)
	DEATH = 0
	local player = game.players[event.player_index]
	local player_data = global.klondike.player[event.player_index]
	if HUNGER_IMPLEMENT then
		player.insert{ name = "raw-meat-item", count = DEFAULT_ACQUIRE_RAW_FISH }
	end
	if player_data ~= nil and HUNGER_IMPLEMENT then
		player_property_update("fix", event.player_index, "hunger_value", MAXIMUM_HUNGER)
		hunger_gui_check(event.player_index)
	end
end)