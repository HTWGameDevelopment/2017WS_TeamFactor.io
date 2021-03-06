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
    collision_box = {{-1.1, -1.0}, {1.1, 1.0}},
    selection_box = {{-1.2, -1.0}, {1.2, 1.0}},
    module_specification =
    {
      module_slots = 1
    },
    allowed_effects = {"speed", "productivity", "pollution"},
    crafting_categories = {"food"},
    crafting_speed = 1.3,
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
          shift = {0, 0}    
	     },
	   }
    },
    working_sound =
    {
      sound = {filename = "__Klondike__/sound/kitchensound.ogg"},
      apparent_volume = 2.5,
    },
  }
})