--Event for building / placing an entity, this will make you hungry!

script.on_event(defines.events.on_built_entity, function(event)
	local player = game.players[event.player_index]
	player_property_update("decrease", event.player_index, "hunger_value", HUNGER_DECREASE_DEPEND_BUILD)
	hunger_gui_check(event.player_index)
	if global.klondike.player[event.player_index].hunger_value == 0 and player.character ~= nil then
		player_damage(event.player_index, HEALTH_DECREASE_DEPEND_BUILD)
	end
end)