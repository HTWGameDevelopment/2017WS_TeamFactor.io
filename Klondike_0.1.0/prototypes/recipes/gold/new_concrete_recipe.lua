data:extend(
{
  {
    type = "recipe",
    name = "concrete",
    energy_required = 10,
    enabled = false,
    category = "crafting-with-fluid",
    ingredients =
    {
      {"kies-item", 3},
      {"sand-item", 3},
      {"stone-brick", 4},
      {"iron-stick", 2},
      {type="fluid", name="water", amount=100}
    },
    result= "concrete",
    result_count = 10
  }
})