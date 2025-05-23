local pipes = {
    north = {
        filename = "__pyfusionenergygraphics__/graphics/entity/agitator/top.png",
        priority = "low",
        width = 169,
        height = 168
    },
    south = {
        filename = "__pyfusionenergygraphics__/graphics/entity/agitator/bottom.png",
        priority = "extra-high",
        width = 169,
        height = 168
    },
    west = {
        filename = "__pyfusionenergygraphics__/graphics/entity/agitator/left.png",
        priority = "very-low",
        width = 169,
        height = 168
    },
    east = {
        filename = "__pyfusionenergygraphics__/graphics/entity/agitator/right.png",
        priority = "extra-high",
        width = 169,
        height = 168
    }
}

RECIPE {
    type = "recipe",
    name = "agitator-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "steam-engine",       amount = 3},
        {type = "item", name = "iron-plate",         amount = 40},
        {type = "item", name = "electronic-circuit", amount = 20},
        {type = "item", name = "steel-plate",        amount = 30},
        {type = "item", name = "iron-gear-wheel",    amount = 40},
        {type = "item", name = "plastic-bar",        amount = 30}
    },
    results = {
        {type = "item", name = "agitator-mk01", amount = 1}
    }
}:add_unlock("advanced-mining-facilities")

ITEM {
    type = "item",
    name = "agitator-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/agitator-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk01",
    order = "a",
    place_result = "agitator-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "agitator-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/agitator-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "agitator-mk01"},
    fast_replaceable_group = "agitator",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    forced_symmetry = "diagonal-pos",
    module_slots = 1,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"agitator"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 0.06
        },
    },
    energy_usage = "200kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/agitator/agitator.png",
                    width = 169,
                    height = 160,
                    frame_count = 50,
                    line_length = 10,
                    animation_speed = 1,
                    shift = {0.1, -0.0}
                },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/agitator/agitator-mask.png",
                    width = 169,
                    height = 160,
                    frame_count = 50,
                    line_length = 10,
                    animation_speed = 1,
                    shift = {0.1, -0.0},
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
                }
            }
        },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", {0.17, 2.85}, {0.18, -2.9}, {3.1, -0.15}, {-2.9, -0.2}, pipes),
            pipe_covers = py.pipe_covers(false, true, true, false),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {2.0, 0.0}, direction = defines.direction.east}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", {0.17, 2.85}, {0.18, -2.9}, {3.1, -0.15}, {-2.9, -0.2}, pipes),
            pipe_covers = py.pipe_covers(false, true, true, false),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {0.0, 2.0}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", {0.17, 2.85}, {0.18, -2.9}, {3.1, -0.15}, {-2.9, -0.2}, pipes),
            pipe_covers = py.pipe_covers(false, true, true, false),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-2.0, 0.0}, direction = defines.direction.west}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", {0.17, 2.85}, {0.18, -2.9}, {3.1, -0.15}, {-2.9, -0.2}, pipes),
            pipe_covers = py.pipe_covers(false, true, true, false),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {0.0, -2.0}, direction = defines.direction.north}}
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/agitator.ogg", volume = 1.1},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/agitator.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
