data:extend({
	{
		type = "technology",
		name = "simplegarden",
		icon = "__Klondike__/graphics/icons/simplegarden.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
        		recipe = "simple-greenhouse-recipe"
			},
			{
				type = "unlock-recipe",
        		recipe = "riceplant-recipe"
			},
			{
				type = "unlock-recipe",
        		recipe = "soy-recipe"
			},
			{
				type = "unlock-recipe",
        		recipe = "rice-recipe"
			},
			{
				type = "unlock-recipe",
        		recipe = "soybean-recipe"
			},
		},
		prerequisites = {"humus","glas"},
		unit =
    	{
      		count = 150,
      		ingredients =
      		{
        		{"science-pack-1", 1},
        		{"science-pack-2", 1},      		
      		},
      		time = 30
    	}
	}
})