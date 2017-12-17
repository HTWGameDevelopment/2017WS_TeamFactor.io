data:extend(
{
  {
      type = "capsule",
      name = "ricepan-item",
      icon = "__Klondike__/graphics/icons/reispfanne.png",
      flags = {"goes-to-main-inventory"},
      subgroup = "cookedfood",
      capsule_action =
      {
        type = "use-on-self",
        attack_parameters =
        {
          type = "projectile",
          ammo_category = "capsule",
          cooldown = 30,
          range = 0,
          ammo_type =
          {
            category = "capsule",
            target_type = "position",
            action =
            {
              type = "direct",
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  type = "create-entity",
                  entity_name = "eating-ricepan-entity",
                  trigger_created_entity = true
                }
              }
            }
          }
        }
      },
      order = "g[ricepan]",
      stack_size = 3
  }
})