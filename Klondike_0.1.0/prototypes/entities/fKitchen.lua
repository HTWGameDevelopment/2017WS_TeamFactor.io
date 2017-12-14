data:extend(
{
  {
    type = "assembling-machine",
    name = "fKitchen",
    icon = "__Klondike__/graphics/icons/fKitchen_icon.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "fKitchen-item"},
    fast_replaceable_group = "fKitchen",
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
        type = "burner",
        fuel_category = "chemical",
        effectivity = 1,
        emissions = 0.05,
        fuel_inventory_size = 1,      
    },
    energy_usage = "200kW",
    ingredient_count = 5,
    animation ={
      layers={
        {
          filename = "__Klondike__/graphics/entities/fKitchen.png",
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