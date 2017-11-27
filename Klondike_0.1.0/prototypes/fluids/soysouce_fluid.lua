data:extend(
{
  {
    type = "fluid",
    name = "soysouce-fluid",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "0.2KJ",    
    base_color = {r=0.16, g=0.04, b=0.04}, --Es gehen nur 2 Nachkommastellen
    flow_color = {r=0.25, g=0.08, b=0.02}, --Berechnung: 1/256*(r||g||b) https://html-color-codes.info
    icon = "__Klondike__/graphics/icons/soysouce-fluid.png",
    order = "a[fluid]-a[water]",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59
  }
})