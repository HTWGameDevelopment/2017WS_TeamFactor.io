data:extend({
	{
		type = "technology",
		name = "liquitfertilizer",
		icon = "__Klondike__/graphics/icons/liquitfertilizertech.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
        		recipe = "liquitfertilizer-recipe"
			},
		},
		prerequisites = {"fertilizer"},
		unit =
    	{
      		count = 350,
      		ingredients =
      		{
        		{"science-pack-2", 1},
        		{"science-pack-3", 1},
        		{"nature-science-pack", 1},   		
      		},
      		time = 30
    	}
	}
})