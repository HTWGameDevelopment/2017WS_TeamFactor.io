script.on_event({defines.events.on_entity_died}, function (e)
    if e.entity.type == "unit" and e.entity.prototype.subgroup.name == "enemies" and e.entity.surface ~= nil then
        --local count = math.min(50, math.max(1, math.floor(math.sqrt(e.entity.prototype.max_health/10))))
        local meat = e.entity.surface.spill_item_stack(e.entity.position, {name="raw-meat-item", count=2}, false)
    end
end)