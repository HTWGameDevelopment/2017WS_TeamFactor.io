data:extend(
{
  {
    type = "simple-entity-with-force",
    name = "eating-cooked-meat-entity",
    render_layer = "object",
    icon = "__Klondike__/graphics/icons/cooked_meat.png",
    flags = {"placeable-neutral"},
    --minable = {mining_time = 1, result = "cooked-meat"},
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
    order = "a[eatingcookedmeat]"
  }
})