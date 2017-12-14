data:extend(
{
  {
    type = "capsule",
    name = "grenade",
    icon = "__base__/graphics/icons/grenade.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        type = "projectile",
        ammo_category = "grenade",
        cooldown = 30,
        projectile_creation_distance = 0.6,
        range = 15,
        ammo_type =
        {
          category = "grenade",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "grenade",
              starting_speed = 0.3
            }
          }
        }
      }
    },
    subgroup = "capsule",
    order = "a[grenade]-a[normal]",
    stack_size = 100
  },
  {
    type = "capsule",
    name = "cluster-grenade",
    icon = "__base__/graphics/icons/cluster-grenade.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        type = "projectile",
        ammo_category = "grenade",
        cooldown = 30,
        projectile_creation_distance = 0.6,
        range = 20,
        ammo_type =
        {
          category = "grenade",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "cluster-grenade",
              starting_speed = 0.3
            }
          }
        }
      }
    },
    subgroup = "capsule",
    order = "a[grenade]-b[cluster]",
    stack_size = 100
  },
  {
    type = "capsule",
    name = "poison-capsule",
    icon = "__base__/graphics/icons/poison-capsule.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        type = "projectile",
        ammo_category = "capsule",
        cooldown = 30,
        projectile_creation_distance = 0.6,
        range = 25,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "poison-capsule",
              starting_speed = 0.3
            }
          }
        }
      }
    },
    subgroup = "capsule",
    order = "b[poison-capsule]",
    stack_size = 100
   },
   {
    type = "capsule",
    name = "slowdown-capsule",
    icon = "__base__/graphics/icons/slowdown-capsule.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        type = "projectile",
        ammo_category = "capsule",
        cooldown = 30,
        projectile_creation_distance = 0.6,
        range = 25,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "slowdown-capsule",
              starting_speed = 0.3
            }
          }
        }
      }
    },
    subgroup = "capsule",
    order = "c[slowdown-capsule]",
    stack_size = 100
  },
  {
    type = "capsule",
    name = "defender-capsule",
    icon = "__base__/graphics/icons/defender-capsule.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        type = "projectile",
        ammo_category = "capsule",
        cooldown = 15,
        projectile_creation_distance = 0.6,
        range = 20,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "defender-capsule",
              starting_speed = 0.3
            }
          }
        }
      }
    },
   subgroup = "capsule",
    order = "d[defender-capsule]",
    stack_size = 100
  },
  {
    type = "capsule",
    name = "distractor-capsule",
    icon = "__base__/graphics/icons/distractor-capsule.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        type = "projectile",
        ammo_category = "capsule",
        cooldown = 30,
        projectile_creation_distance = 0.6,
        range = 25,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "distractor-capsule",
              starting_speed = 0.3
            }
          }
        }
      }
    },
    subgroup = "capsule",
    order = "e[defender-capsule]",
    stack_size = 100
  },
  {
    type = "capsule",
    name = "destroyer-capsule",
    icon = "__base__/graphics/icons/destroyer-capsule.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        type = "projectile",
        ammo_category = "capsule",
        cooldown = 30,
        projectile_creation_distance = 0.6,
        range = 25,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "destroyer-capsule",
              starting_speed = 0.3
            }
          }
        }
      }
    },
    subgroup = "capsule",
    order = "f[destroyer-capsule]",
    stack_size = 100
  },
  {
    type = "capsule",
    name = "discharge-defense-remote",
    icon = "__base__/graphics/equipment/discharge-defense-equipment-ability.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "equipment-remote",
      equipment = "discharge-defense-equipment"
    },
    subgroup = "capsule",
    order = "z",
    stack_size = 1
  },
})
