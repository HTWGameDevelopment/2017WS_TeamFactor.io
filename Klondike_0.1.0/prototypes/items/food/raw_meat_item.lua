data:extend(
{
  {
      type = "capsule",
      name = "raw-meat-item",
      icon = "__Klondike__/graphics/icons/raw_meat.png",
      flags = {"goes-to-main-inventory"},
      subgroup = "ingredience",
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
                  entity_name = "eating-raw-meat-entity",
                  trigger_created_entity = true
                }
              }
            }
          }
        }
      },
      order = "g[raw-meat]",
      stack_size = 50
  }
})