--Event for creating the player

script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index]
	if HUNGER_IMPLEMENT then
		player.insert{ name = "mushroom-item", count = DEFAULT_ACQUIRE_RAW_FISH }
	end
	create_player_data(event.player_index)
end)