data:extend({
	{
		type = "recipe",
		name = "gold-recipe",
		category = "crafting-with-fluid",
		enabled = false,
		energy_required = 2,
		ingredients =
		{
			{"stone", 5},
			{type="fluid", name="water", amount=200},			
		},
		icon = "__Klondike__/graphics/icons/gold.png",
		subgroup = "raw-material",
		results =
    	{
      		{
        		name = "gold-item",
        		probability = 0.05,
        		amount = 1
      		},
      		{
       			name = "kies-item",
        		probability = 0.95,
        		amount = 2
      		}
    	}
	}
})