data:extend({
	{
		type = "technology",
		name = "solarpanel",
		icon = "__Klondike__/graphics/icons/solarpaneltech.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
        		recipe = "better-solar-panel-recipe"
			},			
		},
		prerequisites = {"glas","fastunit","solar-energy"},
		unit =
    	{
      		count = 450,
      		ingredients =
      		{
        		{"science-pack-1", 1},
        		{"science-pack-2", 1},
        		{"science-pack-3", 1},
        		{"high-tech-science-pack", 1},     		
      		},
      		time = 30
    	}
	}
})