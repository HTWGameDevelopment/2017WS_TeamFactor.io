script.on_event({defines.events.on_entity_died}, function (e)
    if e.entity.type == "unit" and e.entity.prototype.subgroup.name == "enemies" and e.entity.surface ~= nil then
        --local count = math.min(50, math.max(1, math.floor(math.sqrt(e.entity.prototype.max_health/10))))
        local meat = e.entity.surface.spill_item_stack(e.entity.position, {name="raw-meat-item", count=2}, false)
    end
end)

--[[
spill_item_stack(position, items, enable_looted)

Spill items on the ground centered at a given location.

Parameters
position :: Position: Center of the spillage
items :: LuaItemStack or SimpleItemStack: Items to spill
enable_looted :: boolean (optional): When true, each created item will be flagged with the LuaEntity::to_be_looted flag.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SimpleItemStack

An item stack may be specified either as a string (in which case it represents a full stack containing the specified item), or as the following table:

    name :: string: Prototype name of the item the stack holds.
    count :: uint (optional): Number of items the stack holds. If not specified, defaults to 1.
    health :: float (optional): Health of the items in the stack. Defaults to 1.0.
    durability :: double (optional): Durability of the tool items in the stack.
    ammo :: double (optional): Amount of ammo in the ammo items in the stack.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

to_be_looted :: boolean [Read-Write]

Will this entity be picked up automatically when the player walks over it?

Can only be used if this is ItemEntity
]]