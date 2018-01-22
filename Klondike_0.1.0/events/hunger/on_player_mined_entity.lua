--Event for mining / destroying an entity, this will make you hungry!

script.on_event(defines.events.on_player_mined_entity, function(event)
	player_property_update("decrease", event.player_index, "hunger_value", HUNGER_DECREASE_DEPEND_REMOVE  * DIFFICULTY_SETTING)
	hunger_gui_check(event.player_index)
end)