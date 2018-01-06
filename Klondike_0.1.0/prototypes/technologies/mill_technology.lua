data:extend({
	{
		type = "technology",
		name = "milling",
		icon = "__Klondike__/graphics/icons/milling.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
        		recipe = "mill-recipe"
			},
			{
				type = "unlock-recipe",
        		recipe = "kies-recipe"
			},
			{
				type = "unlock-recipe",
        		recipe = "sand-recipe"
			},
		},
		prerequisites = {"automation","landfill"},
		unit =
    	{
      		count = 100,
      		ingredients =
      		{
        		{"science-pack-1", 1},
        		{"science-pack-2", 1},      		
      		},
      		time = 30
    	}
	}
})