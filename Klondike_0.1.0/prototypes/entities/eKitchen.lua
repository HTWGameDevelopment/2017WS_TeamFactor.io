data:extend(
{
  {
    type = "assembling-machine",
    name = "eKitchen",
    icon = "__Klondike__/graphics/icons/eKitchen_icon.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "eKitchen-item"},
    fast_replaceable_group = "eKitchen",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",    
    collision_box = {{-0.5, -0.4}, {1.6, 1.1}},
    selection_box = {{-0.7, -0.7}, {1.6, 0.9}},
    module_specification =
    {
      module_slots = 1
    },
    allowed_effects = {"speed", "productivity", "pollution"},
    crafting_categories = {"food"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.005
    },
    energy_usage = "300kW",
    ingredient_count = 5,
    animation ={
      layers={
        {
          filename = "__Klondike__/graphics/entities/eKitchen.png",
          width = 80,
          height = 80,
          frame_count = 1,
          line_length = 1,
	        animation_speed = 1 / 3,
          shift = {0.5, 0}    
	     },
	   }
    },
  }
})