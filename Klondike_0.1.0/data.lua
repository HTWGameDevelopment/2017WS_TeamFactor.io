--functions
require ("logic.color_function")
require ("logic.gardenlimitation_function")
require ("logic.pipecoverspictures_function")
require ("logic.greenhousepipepictures_function")
require("logic.hungerspeed_sigmoid_function")
require("events.food.AddLootToEntity_function")

--categories
require ("prototypes.categories.food_category")
require ("prototypes.categories.recipe_category")
require ("prototypes.categories.module_category")
require ("prototypes.categories.fuel_category")

--items
require ("prototypes.items.food.salt_item")
require ("prototypes.items.gold.gold_item")
require ("prototypes.items.gold.goldbar_item")
require ("prototypes.items.gold.goldwire_item")
require ("prototypes.items.gold.sand_item")
require ("prototypes.items.gold.glas_item")
require ("prototypes.items.greenhouse.humus_item")
require ("prototypes.items.gold.kies_item")
require ("prototypes.items.greenhouse.nature_science_pack_item")
require ("prototypes.items.food.rice_item")
require ("prototypes.items.greenhouse.riceplant_item")
require ("prototypes.items.food.soybean_item")
require ("prototypes.items.greenhouse.soy_item")
require ("prototypes.items.food.soysouce_item")
require ("prototypes.items.greenhouse.greenhouse_item")
require ("prototypes.items.greenhouse.mill_item")
require ("prototypes.items.greenhouse.fertilizer_item")
require ("prototypes.items.greenhouse.liquitfertilizer_item")
require ("prototypes.items.gold.gold_statue_item")
require ("prototypes.items.gold.fast_processing_unit_item")
require ("prototypes.items.gold.better_solar_panel_item")
require ("prototypes.items.food.klondike_raw_fish")
require ("prototypes.items.food.mushroom_item")
require ("prototypes.items.food.seeds_item")
require ("prototypes.items.food.raw_meat_item")
require ("prototypes.items.food.cooked_meat_item")
require ("prototypes.items.food.fKitchen_item")
require ("prototypes.items.food.eKitchen_item")

--fluids
require ("prototypes.fluids.soysouce_fluid")
require ("prototypes.fluids.chlorine_fluid")

--recipes
require ("prototypes.recipes.food.salt_recipe")
require ("prototypes.recipes.gold.gold_recipe")
require ("prototypes.recipes.gold.goldbar_recipe")
require ("prototypes.recipes.gold.goldwire_recipe")
require ("prototypes.recipes.gold.kies_recipe")
require ("prototypes.recipes.gold.glas_recipe")
require ("prototypes.recipes.gold.sand_recipe")
require ("prototypes.recipes.greenhouse.humus_recipe")
require ("prototypes.recipes.greenhouse.soy_recipe")
require ("prototypes.recipes.greenhouse.riceplant_recipe")
require ("prototypes.recipes.food.rice_recipe")
require ("prototypes.recipes.food.soybean_recipe")
require ("prototypes.recipes.food.soysouce_recipe")
require ("prototypes.recipes.greenhouse.nature_science_pack_recipe")
require ("prototypes.recipes.greenhouse.mill_recipe")
require ("prototypes.recipes.greenhouse.fertilizer_recipe")
require ("prototypes.recipes.greenhouse.liquitfertilizer_recipe")
require ("prototypes.recipes.greenhouse.greenhouse_recipe")
require ("prototypes.recipes.gold.gold_statue_recipe")
require ("prototypes.recipes.gold.better_solar_panel_recipe")
require ("prototypes.recipes.gold.chlorine_recipe")
require ("prototypes.recipes.gold.new_capsule_recipe")
require ("prototypes.recipes.food.fKitchen_recipe")
require ("prototypes.recipes.food.eKitchen_recipe")
require ("prototypes.recipes.gold.fast_processing_unit_recipe")
require ("prototypes.recipes.food.cooked_meat_recipe")

--technologies
require ("prototypes.technologies.gold_technology")

--entities
require ("prototypes.entities.mill")
require ("prototypes.entities.goldStatue")
require ("prototypes.entities.better_solar_panel")
require ("prototypes.entities.greenhouse")
require ("prototypes.entities.fKitchen")
require ("prototypes.entities.eKitchen")

--capsules (eating entities)

require ("prototypes.entities.klondike_eating_raw_fish_entity")
require ("prototypes.entities.eating_raw_meat_entity")
require ("prototypes.entities.eating_mushroom_entity")
require ("prototypes.entities.eating_cooked_meat_entity")

--gui
require("graphics.gui.hunger_frame")

local raw_fish_entity = data.raw["fish"]["fish"]
raw_fish_entity.minable.result = "klondike-raw-fish"
raw_fish_entity.minable.count = 20

--achievments
require ("achievments.gold_achievment")
