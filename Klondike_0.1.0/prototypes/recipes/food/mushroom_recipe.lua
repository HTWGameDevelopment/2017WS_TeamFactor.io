data:extend({
	{
		type = "recipe",
		name = "mushroom-recipe",
		category = "greenhouse",
		enabled = false,
		energy_required = 15,
		ingredients =
		{
			{"mushroom-item", 4},
			{type="fluid", name="water", amount=250},			
		},
		icon = "__Klondike__/graphics/icons/mushroom.png",
		subgroup = "ingredience",
		results =
    	{
      		{
        		name = "mushroom-item",
        		probability = 0.96,
        		amount = 4
      		},
      		{
        		name = "mushroom-item",
        		probability = 0.03,
        		amount = 5
      		},
      		{
       			name = "mushroom-item",
        		probability = 0.01,
        		amount = 6
      		}
    	}
	}
})