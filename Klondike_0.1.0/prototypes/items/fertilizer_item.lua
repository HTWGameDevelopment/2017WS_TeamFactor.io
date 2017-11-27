function gardenlimitation()
	return 
      	{
        	"riceplant-recipe",
        	"soy-recipe"
      	}
end

data:extend({
	{
		type = "module",
		name = "fertilizer-item",
		icon = "__Klondike__/graphics/icons/fertilizer_item.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "module",
		category = "growth",
		tier = 1,
    	order = "z-a[fertilizer]",
    	stack_size = 50,
    	default_request_amount = 10,
    	effect =
    	{ 
    		speed = {bonus = 0.2},
    		productivity = {bonus = 0.04},
    		pollution = {bonus = 0.1}
    	},
    	limitation = gardenlimitation(),
    	limitation_message_key = "fertilizer-only-usable-ingreenhouse"
	}
})