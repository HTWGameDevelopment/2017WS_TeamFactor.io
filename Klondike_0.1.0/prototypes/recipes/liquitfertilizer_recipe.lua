data:extend({
	{
		type = "recipe",
		name = "liquitfertilizer-recipe",
		category = "chemistry",
		enabled = true,
		energy_required = 20,
		ingredients =
		{
			{"fertilizer-item", 15},			
			{"sulfur", 10},
			{"salt-item", 5},
			{type="fluid", name="water", amount=500},
		},		
		result = "liquitfertilizer-item",
		crafting_machine_tint =
    	{
      		primary = {r = color(50), g = color(68), b = color(2), a = 0.00},
      		secondary = {r = color(83), g = color(44), b = color(8), a = 0.00},
      		tertiary = {r = color(38), g = color(67), b = color(12), a = 0.00},
    	} 	
	}
})