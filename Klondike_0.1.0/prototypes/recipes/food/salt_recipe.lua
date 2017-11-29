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
      		primary = {r = color(250), g = color(247), b = color(165), a = 0.00},
      		secondary = {r = color(219), g = color(218), b = color(180), a = 0.00},
      		tertiary = {r = color(245), g = color(244), b = color(210), a = 0.00},
    	} 	
	}
})