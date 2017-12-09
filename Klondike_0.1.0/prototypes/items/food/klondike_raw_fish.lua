data:extend({
    type = "capsule",
    name = "klondike-raw-fish",
    icon = "__Klondike__/graphics/icons/gold.png",
    flags = {"goes-to-quickbar"},
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
                entity_name = "klondike-eating-raw-fish-entity",
                trigger_created_entity = true
              }
            }
          }
        }
      }
    },
    stack_size = 200
})