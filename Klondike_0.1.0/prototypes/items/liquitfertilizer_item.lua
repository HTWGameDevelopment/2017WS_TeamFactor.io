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
		name = "liquitfertilizer-item",
		icon = "__Klondike__/graphics/icons/liquitfertilizer_item.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "module",
		category = "growth",
		tier = 1,
    	order = "z-b[fertilizer]",
    	stack_size = 50,
    	default_request_amount = 10,
    	effect =
    	{ 
    		speed = {bonus = 0.3},
    		productivity = {bonus = 0.06},
    		pollution = {bonus = 0.2}
    	},
    	limitation = gardenlimitation(),
    	limitation_message_key = "fertilizer-only-usable-ingreenhouse"
	}	
})