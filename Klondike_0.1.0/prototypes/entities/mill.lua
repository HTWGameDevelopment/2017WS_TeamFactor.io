data:extend(
{    
	{
    type = "assembling-machine",
    name = "mill",
    icon = "__Klondike__/graphics/icons/mill.png",
	  flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "mill-item"},
	  fast_replaceable_group = "mill",
    max_health = 300,
	  corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.0, -0.8}, {0.0, 1.0}},
    selection_box = {{-1.1, -1.0}, {0.0, 1.3}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "productivity"},
    crafting_categories = {"mill"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.33 / 3.5
    },
    energy_usage = "750kW",
    ingredient_count = 4,
	  animation = {
      layers = {
        {
          filename = "__Klondike__/graphics/entities/mill.png",
          width = 80,
          height = 63,
          frame_count = 4,
          line_length = 2,
          animation_speed = 0.2,
          shift = {0, 0}
        },
      }
    },
	}
})