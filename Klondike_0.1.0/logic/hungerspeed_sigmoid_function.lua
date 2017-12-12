
function hungerspeed_sigmoid(num)
  local y = 1700/(1+10^((num/100)^2))+450
  return math.floor(y + 0.5)
end
