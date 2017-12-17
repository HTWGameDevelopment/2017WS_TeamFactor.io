--Function on how fast the player hungers.

STAERKE = 200
SCHEITELPUNKT = 1500
SCHIEBER = 400

function hungerspeed_sigmoid(num)
  local y = SCHEITELPUNKT/(1+STAERKE^((num/100)^2))+SCHIEBER
  return math.floor(y + 0.5)
end
