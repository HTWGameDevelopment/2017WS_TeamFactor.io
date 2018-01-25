--Function on how fast the player hungers.

STAERKE = 200
SCHEITELPUNKT = 1800
SCHIEBER = 500

function hungerspeed_sigmoid(num)
  local y = SCHEITELPUNKT/(1+STAERKE^((num/MAXIMUM_HUNGER)^2))+SCHIEBER
  return math.floor(y + 0.5)
end
