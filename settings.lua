data:extend(
    {
        {
            name = "biter_extermination-tech_cost_multiplyer",
            type = "int-setting",
            default_value = 10000,
            minimum_value = 0,
            maximum_value = 50000,
            setting_type = "startup",
            order = "1001"
        },
        {
            name = "biter_extermination-recipe_cost_multiplyer",
            type = "int-setting",
            default_value = 100,
            minimum_value = 1,
            maximum_value = 2000,
            setting_type = "startup",
            order = "1002"
        },
        {
            name = "biter_extermination-disable_pollution",
            type = "bool-setting",
            default_value = true,
            setting_type = "runtime-global",
            order = "1003"
        }
    }
)
