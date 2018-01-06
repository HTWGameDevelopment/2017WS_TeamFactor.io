data:extend(
{
  {
    type = "recipe",
    name = "chlorine-recipe",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {type="fluid", name="water", amount=50},      
      {"salt-item", 5}
    },
    results=
    {
      {type="fluid", name="chlorine-fluid", amount=50}
    },
    main_product= "",
    icon = "__Klondike__/graphics/icons/chlorine-fluid.png",
    subgroup = "ingredience",
    order = "a[soysouce-fluid]",
    crafting_machine_tint =
    {
      primary = {r=color(1), g=color(223), b=color(1), a = 0.000}, -- #49060000
      secondary = {r=color(46), g=color(254), b=color(46), a = 0.000}, -- #b8763000
      tertiary = {r=color(200), g=color(254), b=color(46), a = 0.000}, -- #dd5d0000
    }
  }
})