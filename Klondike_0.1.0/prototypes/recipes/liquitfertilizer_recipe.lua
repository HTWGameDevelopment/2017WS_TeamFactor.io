data:extend({
	{
		type = "recipe",
		name = "liquitfertilizer-recipe",
		category = "crafting-with-fluid",
		enabled = true,
		energy_required = 20,
		ingredients =
		{
			{"fertilizer-item", 10},			
			{"sulfur", 5},
			{"salt-item", 1},
			{type="fluid", name="water", amount=250},
		},		
		result = "liquitfertilizer-item"    	
	}
})