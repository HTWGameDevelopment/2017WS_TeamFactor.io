data:extend  {
  {
    type = "item-group", --The TAB
    name = "food", --the NAME of the tab
    icon = "__Klondike__/graphics/icons/tabitemfood.png",
	icon_size = 128,	-- Can you guess?
    order = "z", --Where the tab will be placed in related to other tabs
  },
  {
    type = "item-subgroup", --A Row in the group
    name = "rawfood", -- The name of the ROW
    group = "food", --The item-group this subgroup belongs too
    order = "a", --The order of the row from top to bottom, row "a" would be above row "b"
  },
  {
    type = "item-subgroup", --B Row in the group
    name = "ingredience", -- The name of the ROW
    group = "food", --The item-group this subgroup belongs too
    order = "b", --The order of the row from top to bottom, row "b" would be above row "c"
  },
  {
    type = "item-subgroup", --C Row in the group
    name = "cookedfood", -- The name of the ROW
    group = "food", --The item-group this subgroup belongs too
    order = "c", --The order of the row from top to bottom, row "c" would be above row "d"
  },  
}


