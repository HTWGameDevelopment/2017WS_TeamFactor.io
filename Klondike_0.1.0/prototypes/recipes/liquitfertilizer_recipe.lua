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
      		primary = {r = 0.785, g = 0.406, b = 0.000, a = 0.000}, -- #c8670000
      		secondary = {r = 0.795, g = 0.805, b = 0.605, a = 0.000}, -- #cacd9a00
      		tertiary = {r = 0.835, g = 0.551, b = 0.000, a = 0.000}, -- #d48c0000
    	} 	
	}
})