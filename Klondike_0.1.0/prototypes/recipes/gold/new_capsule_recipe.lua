data:extend(
{
  {
    type = "recipe",
    name = "poison-capsule",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
      {"steel-plate", 3},
      {"electronic-circuit", 3},
      {type="fluid", name="chlorine-fluid", amount=50},
    },
    result = "poison-capsule"
  }
})