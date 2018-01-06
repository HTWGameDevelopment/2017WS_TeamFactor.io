data:extend({
	{
		type = "technology",
		name = "glas",
		icon = "__Klondike__/graphics/icons/glastech.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
        		recipe = "glas-recipe"
			},
		},
		prerequisites = {"milling"},
		unit =
    	{
      		count = 75,
      		ingredients =
      		{
        		{"science-pack-1", 1},
        		{"science-pack-2", 1},      		
      		},
      		time = 30
    	}
	}
})