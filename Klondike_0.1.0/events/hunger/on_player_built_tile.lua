--Event for building / placing a tile, this will make you hungry!

script.on_event(defines.events.on_player_built_tile, function(event)
	local player = game.players[event.player_index]
	player_property_update("decrease", event.player_index, "hunger_value", HUNGER_DECREASE_DEPEND_TILE)
	hunger_gui_check(event.player_index)
	
end)
