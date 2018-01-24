data:extend(
{
    {
        type = "bool-setting",
        name = "hunger-enabled",
        setting_type = "startup",
        default_value = true,
        order = "a",
    },

    --dropdown menu for setting desired hunger difficulty
    {
        type = "int-setting",
        name = "hunger-difficulty",
        setting_type = "startup",
        minimum_value = 0,		
        maximum_value = 2;
        default_value = 1,
        order = "b",
    },
})