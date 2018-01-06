data:extend({
	{
		type = "recipe",
		name = "fertilizer-recipe",
		category = "chemistry",
		enabled = false,
		energy_required = 10,
		ingredients =
		{
			{"humus-item", 20},
			{"sulfur", 15},
			{"salt-item", 5},
		},		
		result = "fertilizer-item",
		crafting_machine_tint =
    	{
      		primary = {r = color(104), g = color(42), b = color(5), a = 0.00},
      		secondary = {r = color(145), g = color(61), b = color(12), a = 0.00},
      		tertiary = {r = color(42), g = color(62), b = color(6), a = 0.00},
    	} 	
	}
})