data:extend(
{
  {
    type = "recipe",
    name = "advanced-circuit",
    normal =
    {
      enabled = false,
      energy_required = 6,
      ingredients =
      {
        {"electronic-circuit", 2},
        {"plastic-bar", 2},
        {"copper-cable", 3},
		{"goldwire-item", 2}
      },
      result = "advanced-circuit",
      requester_paste_multiplier = 5
    },
    expensive =
    {
      enabled = false,
      energy_required = 6,
      ingredients =
      {
        {"electronic-circuit", 2},
        {"plastic-bar", 4},
        {"copper-cable", 6},
		{"goldwire-item", 4}
      },
      result = "advanced-circuit",
      requester_paste_multiplier = 5
    }
  }
  } 

)
