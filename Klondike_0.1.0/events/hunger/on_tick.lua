--Hunger function for every tick

script.on_event(defines.events.on_tick, function(event)
	if HUNGER_IMPLEMENT then
		for index, player in pairs(game.players) do
			if player.connected then
				create_player_data(index)
				player_property_update("increase", index, "ticks", 1)
				if global.klondike.player[index].ticks % global.klondike.tick[index] == 0 then
					if global.klondike.player[index].hunger_value > 0 then
						player_property_update("decrease", index, "hunger_value", HUNGER_DECREASE)
						hunger_gui_check(index)
						
						global.klondike.tick[index] = hungerspeed_sigmoid(MAXIMUM_HUNGER - global.klondike.player[index].hunger_value)
						
					end				
				end
<<<<<<< HEAD
				--if game.players[index] ~= nil then
				--	player.print(index)
					player_fatigue(index, global.klondike.player[index].hunger_value)			
				--end
=======
				if game.players[index] ~= nil then
					player.print(index)
					player_fatigue(index, global.klondike.player[index].hunger_value)			
				end
>>>>>>> 308056be01b923875b6d216ea2566ca42771f1e5
			end
		end
	end
end)