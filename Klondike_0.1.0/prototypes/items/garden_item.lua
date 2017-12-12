data:extend({
	{
		type = "item",
		name = "garden-item",
		icon = "__Klondike__/graphics/icons/garden_item.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "production-machine",
    	order = "e[garden]",
    	--place_result = "garden",
		stack_size = 5
	}
})