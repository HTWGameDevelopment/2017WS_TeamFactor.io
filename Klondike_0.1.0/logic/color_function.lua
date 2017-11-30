--Es gehen nur 2 Nachkommastellen
--Berechnung: 1/256*(r||g||b) https://html-color-codes.info

function color(num)
  local mult = 10^(2 or 0)
  local x = 1/256*num
  return math.floor(x * mult + 0.5) / mult
end