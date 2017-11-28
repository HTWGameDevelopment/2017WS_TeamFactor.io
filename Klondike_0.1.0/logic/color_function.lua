function color(num)
  local mult = 10^(2 or 0)
  local x = 1/256*num
  return math.floor(x * mult + 0.5) / mult
end