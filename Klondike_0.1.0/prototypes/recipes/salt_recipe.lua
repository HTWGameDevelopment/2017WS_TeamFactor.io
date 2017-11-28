function round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  local x = 1/256*num
  return math.floor(x * mult + 0.5) / mult
end

data:extend({
	{
		type = "recipe",
		name = "salt-recipe",
		category = "chemistry",
		enabled = true,
		energy_required = 40,
		ingredients =
		{
			{type="fluid", name="water", amount=6000},			
		},
		result = "salt-item",
		crafting_machine_tint =
    	{
      		primary = {r = round(250, 2), g = round(247, 2), b = round(165, 2), a = 0.00}, -- #c8670000
      		secondary = {r = round(219, 2), g = round(218, 2), b = round(180, 2), a = 0.00}, -- #cacd9a00
      		tertiary = {r = round(245, 2), g = round(244, 2), b = round(210, 2), a = 0.00}, -- #d48c0000
    	} 	
	}
})