data:extend({
	{
		type = "technology",
		name = "salt",
		icon = "__Klondike__/graphics/icons/salttech.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
        		recipe = "salt-recipe"
			},
			{
				type = "unlock-recipe",
        		recipe = "tofu-recipe"
			},			
		},
		prerequisites = {"garden"},
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