data:extend({
	{
		type = "item",
		name = "fertilizer-item",
		icon = "__Klondike__/graphics/icons/fertilizer_item.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "module",
		category = "growth",
    	order = "z-a[fertilizer]",
    	stack_size = 50,
    	default_request_amount = 10,
    	fuel_category = "biological",
        fuel_value = "25MJ",
	}
})