data:extend({
	{
		type = "technology",
		name = "gold",
		icon = "__Klondike__/graphics/icons/goldbarTech.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
        		recipe = "gold-recipe"
			},
			{
				type = "unlock-recipe",
        		recipe = "goldbar-A-recipe"
			},
			{
				type = "unlock-recipe",
        		recipe = "goldbar-B-recipe"
			},
			{
				type = "unlock-recipe",
        		recipe = "goldwire-recipe"
			},
			{
				type = "unlock-recipe",
        		recipe = "gold-statue-recipe"
			},
		},
		prerequisites = {"automation-2","mining-productivity-8"},
		unit =
    	{
      		count = 300,
      		ingredients =
      		{
        		{"science-pack-1", 1},
        		{"science-pack-2", 1},
        		{"science-pack-3", 1},
        		{"production-science-pack", 1}        		
      		},
      		time = 30
    	}
	}
})