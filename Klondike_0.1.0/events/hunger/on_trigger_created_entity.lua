--Event for a player EATING (here creating entity because food is implemented as a capsule) food.

script.on_event(defines.events.on_trigger_created_entity, function(event)
	local thismod_flag = false
	--謎の生魚
	if event.entity.name == "klondike-eating-raw-fish-entity" then
		player_property_update("increase", event.entity.last_user.index, "hunger_value", ADD_HUNGER_EATING_FISH)
		thismod_flag = true
	end
	if event.entity.name == "eating-raw-meat-entity" then
		player_property_update("increase", event.entity.last_user.index, "hunger_value", ADD_HUNGER_EATING_RAW_MEAT)
		thismod_flag = true
	end
	if thismod_flag then
		hunger_gui_check(event.entity.last_user.index)
		event.entity.destroy()
	end
end)
