data:extend(
{
  {
    type = "assembling-machine",
    name = "greenhouse",
    icon = "__Klondike__/graphics/icons/garden_item.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "greenhouse-item"},
    fast_replaceable_group = "greenhouse",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = greenhousepipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -3} }},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_picture = greenhousepipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 3} }},
        secondary_draw_orders = { north = -1 }
      },
      off_when_no_fluid_recipe = true
    },

    collision_box = {{-2.5, -2.4}, {2.5, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_specification =
    {
      module_slots = 3
    },
    allowed_effects = {"speed", "productivity", "pollution"},
    crafting_categories = {"greenhouse"},
    crafting_speed = 1,
    energy_source =
    {      
        type = "burner",
        fuel_category = "biological",
        effectivity = 1,
        emissions = 0.001,
        fuel_inventory_size = 1,      
    },
    energy_usage = "400kW",
    ingredient_count = 5,
    animation ={
      layers={
        {
          filename = "__Klondike__/graphics/entities/greenhouse.png",
          width = 225,
          height = 225,
          frame_count = 1,
          line_length = 1,
	        animation_speed = 1 / 3,
          shift = {0.5, 0}    
	     },
	   }
    },
  }
})