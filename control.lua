local function OnRocketLaunched(event)
    local rocket = event.rocket
    for name in pairs(rocket.get_inventory(defines.inventory.rocket).get_contents()) do
        if name == "biter_extermination-exterminate_biters" then
            game.print({"message.biter_extermination-biters_eliminated"}, {r = 0, g = 1, b = 0, a = 1})
            local surface = game.surfaces[1]
            for key, entity in pairs(surface.find_entities_filtered({force = "enemy"})) do
                entity.destroy()
            end
            local mgs = surface.map_gen_settings
            mgs.autoplace_controls["enemy-base"].size = "none"
            surface.map_gen_settings = mgs
        end
    end
end

script.on_event(defines.events.on_rocket_launched, OnRocketLaunched)
