data:extend({
	{
		type = "item",
		name = "greenhouse-item",
		icon = "__Klondike__/graphics/icons/garden_item.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "production-machine",
    	order = "e[garden]",
    	place_result = "greenhouse",
		stack_size = 5
	}
})