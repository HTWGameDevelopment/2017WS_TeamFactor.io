data:extend({
{
    type = "technology",
    name = "concrete",
    icon = "__base__/graphics/technology/concrete.png",
    prerequisites = {"advanced-material-processing","milling"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "hazard-concrete"
      }
    },
    order = "c-c-c"
  }
})