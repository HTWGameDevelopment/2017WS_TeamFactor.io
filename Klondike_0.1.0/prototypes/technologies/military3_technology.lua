data:extend({
{
    type = "technology",
    name = "military-3",
    icon = "__base__/graphics/technology/military.png",
    effects =
    {
    --[[
      {
        type = "unlock-recipe",
        recipe = "railgun"
      },
      {
        type = "unlock-recipe",
        recipe = "railgun-dart"
      },]]--
      {
        type = "unlock-recipe",
        recipe = "poison-capsule"
      },
      {
        type = "unlock-recipe",
        recipe = "slowdown-capsule"
      },
      {
        type = "unlock-recipe",
        recipe = "combat-shotgun"
      }
    },
    prerequisites = {"laser", "military-2", "chlorine"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"military-science-pack", 1}
      },
      time = 30
    },
    order = "e-a-c"
	}
})