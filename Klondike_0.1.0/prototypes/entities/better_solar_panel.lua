data:extend(
{    
  {
    type = "solar-panel",
    name = "better-solar-panel",
    icon = "__Klondike__/graphics/icons/better-solar-panel.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "better-solar-panel"},
    max_health = 200,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Klondike__/graphics/entities/better-solar-panel.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = "80kW"  
  },
})