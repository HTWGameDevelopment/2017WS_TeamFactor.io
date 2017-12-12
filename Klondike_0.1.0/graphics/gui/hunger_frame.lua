--Function to create the hunger gui

function hunger_gui_check(player_index)
	local player = game.players[player_index]
	local player_data = global.klondike.player[player_index]
	local hunger_progress_value = player_data.hunger_value / 100
	if player.connected == true then
		if HUNGER_IMPLEMENT then
			if player.gui.top.hunger_indicator == nil then
				player.gui.top.add {
					type = "frame",
					name = "hunger_indicator"
				}
				player.gui.top.hunger_indicator.add {
					type = "flow",
					name = "hunger_contents",
					direction = "vertical"
				}
				player.gui.top.hunger_indicator.hunger_contents.add {
					type = "label",
					name = "hunger_label",
					caption = {"hunger-caption"}
				}
				player.gui.top.hunger_indicator.hunger_contents.add {
					type = "progressbar",
					name = "hunger_value",
					size = 100.0
				}
			end
			player.gui.top.hunger_indicator.hunger_contents.hunger_value.value = hunger_progress_value
		else
			if player.gui.top.hunger_indicator ~= nil then
				player.gui.top.hunger_indicator.destroy()
			end
		end
	end
end