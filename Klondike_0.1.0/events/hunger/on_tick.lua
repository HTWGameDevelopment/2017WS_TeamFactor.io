--Hunger function for every tick

script.on_event(defines.events.on_tick, function(event)
	if HUNGER_IMPLEMENT then
		for index, player in pairs(game.players) do
			if player.connected then
				create_player_data(index)
				player_property_update("increase", index, "ticks", 1)
				if global.klondike.player[index].ticks % HUNGER_PERIODIC_TICK == 0 then
					if global.klondike.player[index].hunger_value > 0 then
						player_property_update("decrease", index, "hunger_value", HUNGER_DECREASE)
						hunger_gui_check(index)
					end
				player_fatigue(index, global.klondike.player[index].hunger_value)
				end
				if global.klondike.player[index].ticks % HEALTH_PERIODIC_TICK == 0 then
					if global.klondike.player[index].hunger_value == 0 and player.character ~= nil then
						if DIFFICULTY_VALUE == 0 then
							if player.character.health > HEALTH_DECREASE then
								player_damage(index, HEALTH_DECREASE)
							end
						else
							player_damage(index, HEALTH_DECREASE)
						end
					end
				end
			end
		end
	end
end)