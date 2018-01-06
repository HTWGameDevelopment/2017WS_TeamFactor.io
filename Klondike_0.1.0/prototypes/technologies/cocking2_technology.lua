data:extend({
	{
		type = "technology",
		name = "cocking2",
		icon = "__Klondike__/graphics/icons/cocking2tech.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
        		recipe = "applepie-recipe"
			},
			{
				type = "unlock-recipe",
        		recipe = "ham-recipe"
			},
			{
				type = "unlock-recipe",
        		recipe = "soup-recipe"
			},
			{
				type = "unlock-recipe",
        		recipe = "soysouce-recipe"
			},						
		},
		prerequisites = {"cocking1"},
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