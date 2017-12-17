data:extend(
{
  {
      type = "capsule",
      name = "goulash-item",
      icon = "__Klondike__/graphics/icons/gulasch.png",
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
                  entity_name = "eating-goulash-entity",
                  trigger_created_entity = true
                }
              }
            }
          }
        }
      },
      order = "g[goulash]",
      stack_size = 2
  }
})