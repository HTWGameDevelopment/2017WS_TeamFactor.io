data:extend(
{
  {
    type = "simple-entity",
    name = "klondike-eating-raw-fish-entity",
    render_layer = "object",
    icon = "__Klondike__/graphics/icons/gold.png",
    flags = {"placeable-neutral"},
    minable = {mining_time = 1, result = "raw-fish"},
    max_health = 50,
    collision_mask = {'item-layer'},
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{0, 0}, {0, 0}},
    picture = {
      filename = "__core__/graphics/empty.png",
      priority = "low",
      width = 1,
      height = 1,
      shift = {0, 0}
    },
  }
})