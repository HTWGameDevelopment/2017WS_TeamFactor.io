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
    collision_box = {{-2.5, -2.4}, {2.5, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
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
    energy_usage = "1200kW",
    ingredient_count = 4,
	  animation = {
      layers = {
        {
          filename = "__Klondike__/graphics/entities/mill.png",
          width = 256,
          height = 256,
          frame_count = 25,
          line_length = 5,
          animation_speed = 0.1,
          shift = {0, 0}
        },
      }
    },
	}
})