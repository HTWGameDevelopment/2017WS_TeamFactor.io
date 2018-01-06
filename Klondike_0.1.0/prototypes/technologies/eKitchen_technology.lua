data:extend({
	{
		type = "technology",
		name = "eKitchen",
		icon = "__Klondike__/graphics/icons/kitchentech.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
        		recipe = "eKitchen-recipe"
			},			
		},
		prerequisites = {"garden","advanced-material-processing-2"},
		unit =
    	{
      		count = 300,
      		ingredients =
      		{
        		{"science-pack-1", 1},
        		{"science-pack-2", 1},
        		{"science-pack-3", 1},
        		{"nature-science-pack", 1},     		
      		},
      		time = 30
    	}
	}
})