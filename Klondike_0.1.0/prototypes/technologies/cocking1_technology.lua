data:extend({
	{
		type = "technology",
		name = "cocking1",
		icon = "__Klondike__/graphics/icons/cocking1tech.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
        		recipe = "flour-recipe"
			},
			{
				type = "unlock-recipe",
        		recipe = "bread-recipe"
			},
			{
				type = "unlock-recipe",
        		recipe = "schnitzel-recipe"
			},						
		},
		prerequisites = {"gardening","salt"},
		unit =
    	{
      		count = 150,
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