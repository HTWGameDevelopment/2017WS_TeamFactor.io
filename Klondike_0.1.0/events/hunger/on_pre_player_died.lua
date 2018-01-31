--Event that happens just before the player dies, need for slowing the player speed

script.on_event(defines.events.on_pre_player_died, function(event)
	DEATH = 1
end)