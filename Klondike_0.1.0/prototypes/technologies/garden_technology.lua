data:extend({
	{
		type = "technology",
		name = "garden",
		icon = "__Klondike__/graphics/icons/gardentech.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
        		recipe = "greenhouse-recipe"
			},			
		},
		prerequisites = {"humus","glas","steel-processing"},
		unit =
    	{
      		count = 250,
      		ingredients =
      		{
        		{"science-pack-1", 1},
        		{"science-pack-2", 1},
        		{"nature-science-pack", 1},     		
      		},
      		time = 30
    	}
	}
})