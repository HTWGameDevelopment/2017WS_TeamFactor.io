data:extend(
{
  {
    type = "recipe",
    name = "soysouce-recipe",
    category = "chemistry",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {type="fluid", name="water", amount=50},
      {"soybean-item", 20},
      {"salt-item", 10}
    },
    results=
    {
      {type="fluid", name="soysouce-fluid", amount=30}
    },
    main_product= "",
    icon = "__Klondike__/graphics/icons/soysouce-fluid.png",
    subgroup = "ingredience",
    order = "a[soysouce-fluid]",
    crafting_machine_tint =
    {
      primary = {r = 0.290, g = 0.027, b = 0.000, a = 0.000}, -- #49060000
      secondary = {r = 0.722, g = 0.465, b = 0.190, a = 0.000}, -- #b8763000
      tertiary = {r = 0.870, g = 0.365, b = 0.000, a = 0.000}, -- #dd5d0000
    }
  }
})