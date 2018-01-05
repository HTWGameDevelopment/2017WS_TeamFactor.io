--Event for crafting items, this will make you hungry!

script.on_event(defines.events.on_player_crafted_item, function(event)
	local player = game.players[event.player_index]
	player_property_update("decrease", event.player_index, "hunger_value", HUNGER_DECREASE_DEPEND_CRAFT)
	hunger_gui_check(event.player_index)
	
end)