local Constants = require("constants")

local techUnits = tonumber(settings.startup["biter_extermination-tech_cost_multiplyer"].value)
local recipeUnits = tonumber(settings.startup["biter_extermination-recipe_cost_multiplyer"].value)

data:extend(
    {
        {
            type = "technology",
            name = "biter_extermination-exterminate_biters",
            icon_size = 128,
            icon = Constants.AssetModName .. "/graphics/technology/exterminate_biters.png",
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "biter_extermination-exterminate_biters"
                }
            },
            prerequisites = {"artillery", "space-science-pack", "atomic-bomb"},
            unit = {
                count = techUnits,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"military-science-pack", 4},
                    {"chemical-science-pack", 2},
                    {"production-science-pack", 1},
                    {"utility-science-pack", 1},
                    {"space-science-pack", 2}
                },
                time = 60
            },
            order = "zzz"
        },
        {
            type = "item",
            name = "biter_extermination-exterminate_biters",
            icon = Constants.AssetModName .. "/graphics/icons/exterminate_biters.png",
            icon_size = 32,
            subgroup = "intermediate-product",
            order = "m[satellite]zzz",
            stack_size = 1
        },
        {
            type = "recipe",
            name = "biter_extermination-exterminate_biters",
            energy_required = 60,
            enabled = false,
            category = "crafting",
            ingredients = {
                {"poison-capsule", (25 * recipeUnits)},
                {"atomic-bomb", (1 * recipeUnits)},
                {"steel-plate", (10 * recipeUnits)}
            },
            result = "biter_extermination-exterminate_biters",
            requester_paste_multiplier = 1
        }
    }
)
