function round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  local x = 1/256*num
  return math.floor(x * mult + 0.5) / mult
end

data:extend({
	{
		type = "recipe",
		name = "liquitfertilizer-recipe",
		category = "chemistry",
		enabled = true,
		energy_required = 20,
		ingredients =
		{
			{"fertilizer-item", 15},			
			{"sulfur", 10},
			{"salt-item", 5},
			{type="fluid", name="water", amount=500},
		},		
		result = "liquitfertilizer-item",
		crafting_machine_tint =
    	{
      		primary = {r = round(50, 2), g = round(68, 2), b = round(2, 2), a = 0.00}, -- #c8670000
      		secondary = {r = round(83, 2), g = round(44, 2), b = round(8, 2), a = 0.00}, -- #cacd9a00
      		tertiary = {r = round(38, 2), g = round(67, 2), b = round(12, 2), a = 0.00}, -- #d48c0000
    	} 	
	}
})