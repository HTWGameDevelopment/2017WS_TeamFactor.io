data:extend({
	{
		type = "technology",
		name = "cocking3",
		icon = "__Klondike__/graphics/icons/cocking3tech.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
        		recipe = "goulash-recipe"
			},
			{
				type = "unlock-recipe",
        		recipe = "pizza-recipe"
			},
			{
				type = "unlock-recipe",
        		recipe = "ricepan-recipe"
			},				
		},
		prerequisites = {"cocking2"},
		unit =
    	{
      		count = 350,
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