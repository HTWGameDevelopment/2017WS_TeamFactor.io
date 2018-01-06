data:extend({
	{
		type = "technology",
		name = "humus",
		icon = "__Klondike__/graphics/icons/humustech.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
        		recipe = "humus-recipe"
			},
			{
				type = "unlock-recipe",
        		recipe = "nature-science-pack-recipe"
			},
		},
		prerequisites = {"milling"},
		unit =
    	{
      		count = 50,
      		ingredients =
      		{
        		{"science-pack-1", 1},
        		{"science-pack-2", 1},      		
      		},
      		time = 30
    	}
	}
})