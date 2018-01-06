data:extend({
	{
		type = "technology",
		name = "fastunit",
		icon = "__Klondike__/graphics/icons/fastunittech.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
        		recipe = "fast-processing-unit-recipe"
			},			
		},
		prerequisites = {"gold","advanced-electronics-2"},
		unit =
    	{
      		count = 350,
      		ingredients =
      		{
        		{"science-pack-1", 1},
        		{"science-pack-2", 1},
        		{"science-pack-3", 1},
        		{"high-tech-science-pack", 1},     		
      		},
      		time = 30
    	}
	}
})