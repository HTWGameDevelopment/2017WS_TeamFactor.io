data:extend({
	{
		type = "technology",
		name = "chlorine",
		icon = "__Klondike__/graphics/icons/chlorinetech.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
        		recipe = "chlorine-recipe"
			},			
		},
		prerequisites = {"salt","advanced-oil-processing"},
		unit =
    	{
      		count = 150,
      		ingredients =
      		{
        		{"science-pack-1", 1},
        		{"science-pack-2", 1},
        		{"science-pack-3", 1},    		
      		},
      		time = 30
    	}
	}
})