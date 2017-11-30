data:extend({
	{
		type = "recipe",
		name = "gold-recipe",
		category = "crafting-with-fluid",
		enabled = false,
		energy_required = 8,
		ingredients =
		{
			{"kies-item", 6},
			{"sand-item", 5},
			{type="fluid", name="water", amount=500},			
		},
		icon = "__Klondike__/graphics/icons/gold.png",
		subgroup = "raw-material",
		results =
    	{
      		{
        		name = "gold-item",
        		probability = 0.02,
        		amount = 1
      		},
      		{
        		name = "sand-item",
        		probability = 0.3,
        		amount = 1
      		},
      		{
       			name = "kies-item",
        		probability = 0.68,
        		amount = 2
      		}
    	}
	}
})