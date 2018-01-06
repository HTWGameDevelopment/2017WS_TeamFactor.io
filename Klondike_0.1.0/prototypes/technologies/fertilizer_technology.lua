data:extend({
	{
		type = "technology",
		name = "fertilizer",
		icon = "__Klondike__/graphics/icons/fertilizertech.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
        		recipe = "fertilizer-recipe"
			},
		},
		prerequisites = {"salt","sulfur-processing"},
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