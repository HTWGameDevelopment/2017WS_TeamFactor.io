--Event for mining trees by robots

script.on_event(defines.events.on_robot_mined_entity, function(event)
	local apple = {name = "apple-item", count = 1}
	local y = math.random(1, 10)
	local x
	if y > 5 then
		if event.entity.name == 'tree-01' then
			x = event.buffer.insert(apple)
		end
		if event.entity.name == 'tree-03' then
			x = event.buffer.insert(apple)
		end
	else
		if event.entity.name == 'tree-04' then
			x = event.buffer.insert(apple)
		end
		if event.entity.name == 'tree-05' then
			x = event.buffer.insert(apple)
		end
	end
end)