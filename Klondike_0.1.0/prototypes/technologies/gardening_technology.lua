data:extend({
	{
		type = "technology",
		name = "gardening",
		icon = "__Klondike__/graphics/icons/gardeningtech.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
        		recipe = "grain-recipe"
			},
			{
				type = "unlock-recipe",
        		recipe = "mushroom-recipe"
			},
			{
				type = "unlock-recipe",
        		recipe = "seeds-recipe"
			},
		},
		prerequisites = {"milling","garden"},
		unit =
    	{
      		count = 150,
      		ingredients =
      		{
        		{"science-pack-1", 1},
        		{"science-pack-2", 1},
        		{"nature-science-pack", 2},      		
      		},
      		time = 30
    	}
	}
})