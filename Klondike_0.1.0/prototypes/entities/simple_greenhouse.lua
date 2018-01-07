data:extend(
{
  {
    type = "assembling-machine",
    name = "simple-greenhouse",
    icon = "__Klondike__/graphics/icons/simple_garden_item.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "simple-greenhouse-item"},
    fast_replaceable_group = "simplegreenhouse",
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
        pipe_connections = {{ type="input", position = {0, -2.9} }},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_picture = greenhousepipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 2.9} }},
        secondary_draw_orders = { north = -1 }
      },
      off_when_no_fluid_recipe = true
    },

    collision_box = {{-2.5, -2.4}, {2.5, 2.4}},
    selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
    module_specification =
    {
      module_slots = 3
    },
    allowed_effects = {"speed", "productivity", "pollution"},
    crafting_categories = {"simplegreenhouse"},
    crafting_speed = 0.5,
    energy_source =
    {      
        type = "burner",
        fuel_category = "biological",
        effectivity = 1,
        emissions = 0.001,
        fuel_inventory_size = 1,      
    },
    energy_usage = "150kW",
    ingredient_count = 5,
    animation ={
      layers={
        {
          filename = "__Klondike__/graphics/entities/simple-greenhouse.png",
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