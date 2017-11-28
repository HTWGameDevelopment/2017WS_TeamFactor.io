function round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  local x = 1/256*num
  return math.floor(x * mult + 0.5) / mult
end

data:extend({
	{
		type = "recipe",
		name = "fertilizer-recipe",
		category = "chemistry",
		enabled = true,
		energy_required = 10,
		ingredients =
		{
			{"humus-item", 30},
			{"sulfur", 15},
			{"salt-item", 5},
		},		
		result = "fertilizer-item",
		crafting_machine_tint =
    	{
      		primary = {r = round(104, 2), g = round(42, 2), b = round(5, 2), a = 0.00}, -- #c8670000
      		secondary = {r = round(145, 2), g = round(61, 2), b = round(12, 2), a = 0.00}, -- #cacd9a00
      		tertiary = {r = round(42, 2), g = round(62, 2), b = round(6, 2), a = 0.00}, -- #d48c0000
    	} 	
	}
})