data:extend(
{
  {
    type = "fluid",
    name = "chlorine-fluid",
    default_temperature = 20,
    max_temperature = 100,
    heat_capacity = "0.2KJ",    
    base_color = {r=color(208), g=color(250), b=color(88)}, --Es gehen nur 2 Nachkommastellen
    flow_color = {r=color(100), g=color(254), b=color(46)}, --Berechnung: 1/256*(r||g||b) https://html-color-codes.info
    icon = "__Klondike__/graphics/icons/chlorine-fluid.png",
    order = "a[fluid]-a[water]",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59
  }
})