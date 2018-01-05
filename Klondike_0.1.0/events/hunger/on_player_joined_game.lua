--Event for a player joining a game

script.on_event(defines.events.on_player_joined_game, function(event)
	if HUNGER_IMPLEMENT then
		create_player_data(event.player_index)
		hunger_gui_check(event.player_index)
	end
end)