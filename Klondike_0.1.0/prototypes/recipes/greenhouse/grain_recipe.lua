data:extend({
	{
		type = "recipe",
		name = "grain-recipe",
		category = "greenhouse",
		enabled = true,
		energy_required = 25,
		ingredients =
		{
			{"seeds-item", 5},
			{type="fluid", name="water", amount=350},			
		},
		icon = "__Klondike__/graphics/icons/getreide.png",
		subgroup = "rawfood",
		results =
    	{
      		{
        		name = "grain-item",
        		probability = 0.97,
        		amount = 5
      		},
      		{
        		name = "grain-item",
        		probability = 0.02,
        		amount = 6
      		},
      		{
       			name = "grain-item",
        		probability = 0.01,
        		amount = 7
      		}
    	}
	}
})