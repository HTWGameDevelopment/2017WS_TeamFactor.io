data:extend({
	{
		type = "recipe",
		name = "salt-recipe",
		category = "chemistry",
		enabled = true,
		energy_required = 40,
		ingredients =
		{
			{type="fluid", name="water", amount=6000},			
		},
		result = "salt-item",
		crafting_machine_tint =
    	{
      		primary = {r = 0.000, g = 0.000, b = 0.098, a = 0.000}, -- #c8670000
      		secondary = {r = 0.000, g = 0.000, b = 0.020, a = 0.000}, -- #cacd9a00
      		tertiary = {r = 0.000, g = 0.048, b = 0.016, a = 0.000}, -- #d48c0000
    	} 	
	}
})