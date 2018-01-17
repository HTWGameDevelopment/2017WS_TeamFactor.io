--Function on how fast the player slows down when starving.
require("hunger_constants")

STAERKE = 200
SCHEITELPUNKT = 1800
SCHIEBER = 500

function walkspeed_sigmoid(num)
  local y = SCHEITELPUNKT/(1+STAERKE^((num/HUNGER_MAX_VALUE)^2))+SCHIEBER
  return math.floor(y + 0.5)
end
