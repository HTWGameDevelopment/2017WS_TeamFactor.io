
function AddLootToEntity(entityType, entityName, itemName, probability, countMin, countMax)
	if data.raw[entityType] ~= nil then
		if data.raw[entityType][entityName] ~= nil then
			if data.raw[entityType][entityName].loot == nil then
				data.raw[entityType][entityName].loot = {}
			end
			table.insert(data.raw[entityType][entityName].loot, {item = itemName, probability = probability, count_min = countMin, count_max = countMax})
		end
	end
end

 --[[
 Loot is an array of loot items. Each loot item is a table:

    item :: string: Item prototype name of the result.
    probability :: double: Probability that any loot at all will drop, as a number in range [0, 1].
    count_min :: double: Minimum amount of loot to drop.
    count_max :: double: Maximum amount of loot to drop.
    ]]


AddLootToEntity("unit-spawner","biter-spawner","mushroom-item",0.5,1,3)
AddLootToEntity("unit-spawner","spitter-spawner","seeds-item",0.8,1,5)
AddLootToEntity("tree","tree-01","apple-item",0.6,1,2)
AddLootToEntity("tree","tree-03","apple-item",0.7,1,2)
AddLootToEntity("tree","tree-04","apple-item",0.6,1,2)
AddLootToEntity("tree","tree-05","apple-item",0.7,1,2)
AddLootToEntity("tree","tree-02","apple-item",0.6,1,2)
AddLootToEntity("tree","tree-06","apple-item",0.7,1,2)
