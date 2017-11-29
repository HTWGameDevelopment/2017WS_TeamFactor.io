data:extend(
{    
	{
    type = "simple-entity",
    name = "goldStatue",
    icon = "__Klondike__/graphics/icons/goldStatue32.png",
	  flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "gold-statue-item"},
	  fast_replaceable_group = "goldStatue",
    max_health = 300,
	  corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.5, -2.4}, {2.5, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      pictures = {
        {
          filename = "__Klondike__/graphics/entities/goldStatue.png",
          width = 128,
          height = 128
        },
    },
	}
})