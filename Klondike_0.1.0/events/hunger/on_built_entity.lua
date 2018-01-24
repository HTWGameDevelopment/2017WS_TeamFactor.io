--Event for building / placing an entity, this will make you hungry!

script.on_event(defines.events.on_built_entity, function(event)
	local player = game.players[event.player_index]
	player_property_update("decrease", event.player_index, "hunger_value", HUNGER_DECREASE_DEPEND_BUILD * DIFFICULTY_SETTING)
	hunger_gui_check(event.player_index)
	
end)