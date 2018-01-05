--Event for a player EATING (here creating entity because food is implemented as a capsule) food.

script.on_event(defines.events.on_trigger_created_entity, function(event)
	local thismod_flag = false
if HUNGER_IMPLEMENT then
	if event.entity.name == "klondike-eating-raw-fish-entity" then
		player_property_update("increase", event.entity.last_user.index, "hunger_value", ADD_HUNGER_EATING_FISH)
		event.entity.last_user.character.health = event.entity.last_user.character.health + ADD_HEALTH_EATING_FISH
		thismod_flag = true
	end
	if event.entity.name == "eating-raw-meat-entity" then
		player_property_update("increase", event.entity.last_user.index, "hunger_value", ADD_HUNGER_EATING_RAW_MEAT)
		event.entity.last_user.character.health = event.entity.last_user.character.health + ADD_HEALTH_EATING_RAW_MEAT
		thismod_flag = true
	end
	if event.entity.name == "eating-mushroom-entity" then
		player_property_update("increase", event.entity.last_user.index, "hunger_value", ADD_HUNGER_EATING_MUSHROOM)
		event.entity.last_user.character.health = event.entity.last_user.character.health + ADD_HEALTH_EATING_MUSHROOM
		thismod_flag = true
	end
	if event.entity.name == "eating-cooked-meat-entity" then
		player_property_update("increase", event.entity.last_user.index, "hunger_value", ADD_HUNGER_EATING_COOKED_MEAT)
		event.entity.last_user.character.health = event.entity.last_user.character.health + ADD_HEALTH_EATING_COOKED_MEAT
		thismod_flag = true
	end
	if event.entity.name == "eating-apple-entity" then
		player_property_update("increase", event.entity.last_user.index, "hunger_value", ADD_HUNGER_EATING_APPLE)
		event.entity.last_user.character.health = event.entity.last_user.character.health + ADD_HEALTH_EATING_APPLE
		thismod_flag = true
	end
	if event.entity.name == "eating-applepie-entity" then
		player_property_update("increase", event.entity.last_user.index, "hunger_value", ADD_HUNGER_EATING_APPLEPIE)
		event.entity.last_user.character.health = event.entity.last_user.character.health + ADD_HEALTH_EATING_APPLEPIE
		thismod_flag = true
	end
	if event.entity.name == "eating-bread-entity" then
		player_property_update("increase", event.entity.last_user.index, "hunger_value", ADD_HUNGER_EATING_BREAD)
		event.entity.last_user.character.health = event.entity.last_user.character.health + ADD_HEALTH_EATING_BREAD
		thismod_flag = true
	end
	if event.entity.name == "eating-goulash-entity" then
		player_property_update("increase", event.entity.last_user.index, "hunger_value", ADD_HUNGER_EATING_GOULASH)
		event.entity.last_user.character.health = event.entity.last_user.character.health + ADD_HEALTH_EATING_GOULASH
		thismod_flag = true
	end
	if event.entity.name == "eating-pizza-entity" then
		player_property_update("increase", event.entity.last_user.index, "hunger_value", ADD_HUNGER_EATING_PIZZA)
		event.entity.last_user.character.health = event.entity.last_user.character.health + ADD_HEALTH_EATING_PIZZA
		thismod_flag = true
	end
	if event.entity.name == "eating-ricepan-entity" then
		player_property_update("increase", event.entity.last_user.index, "hunger_value", ADD_HUNGER_EATING_RICEPAN)
		event.entity.last_user.character.health = event.entity.last_user.character.health + ADD_HEALTH_EATING_RICEPAN
		thismod_flag = true
	end
	if event.entity.name == "eating-ham-entity" then
		player_property_update("increase", event.entity.last_user.index, "hunger_value", ADD_HUNGER_EATING_HAM)
		event.entity.last_user.character.health = event.entity.last_user.character.health + ADD_HEALTH_EATING_HAM
		thismod_flag = true
	end
	if event.entity.name == "eating-schnitzel-entity" then
		player_property_update("increase", event.entity.last_user.index, "hunger_value", ADD_HUNGER_EATING_SCHNITZEL)
		event.entity.last_user.character.health = event.entity.last_user.character.health + ADD_HEALTH_EATING_SCHNITZEL
		thismod_flag = true
	end
	if event.entity.name == "eating-soup-entity" then
		player_property_update("increase", event.entity.last_user.index, "hunger_value", ADD_HUNGER_EATING_SOUP)
		event.entity.last_user.character.health = event.entity.last_user.character.health + ADD_HEALTH_EATING_SOUP
		thismod_flag = true
	end
	if event.entity.name == "eating-tofu-entity" then
		player_property_update("increase", event.entity.last_user.index, "hunger_value", ADD_HUNGER_EATING_TOFU)
		event.entity.last_user.character.health = event.entity.last_user.character.health + ADD_HEALTH_EATING_TOFU
		thismod_flag = true
	end
	if thismod_flag then
		hunger_gui_check(event.entity.last_user.index)
		event.entity.destroy()
	end
end
end)
