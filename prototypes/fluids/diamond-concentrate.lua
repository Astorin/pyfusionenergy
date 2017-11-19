-------------------------------------------------------------------------------
--[[DIAMOND CONCENTRATE]]--
-------------------------------------------------------------------------------
--[[recipes]]--
local diamond_concentrate= {
    type = "recipe",
    name = "diamond-concentrate",
    category = "pan",
    enabled = "false",
    energy_required = 25,
    ingredients ={
        {type="fluid", name="diamond-tailings", amount=100},
		{type="fluid", name="soda-ash", amount=100},
    },
    results=
    {
        {type="fluid", name="diamond-concentrate", amount=100},
		{type="item", name="diamond-reject", amount=15},
		{type="fluid", name="dirty-water", amount=200},
    },
    main_product= "diamond-concentrate",
    icon = "__pyfusionenergy__/graphics/icons/pan-diamond-concentrate.png",
    subgroup = "py-fusion-fluids",
    order = "j",
}

-------------------------------------------------------------------------------
--[[fluids]]--
local fluid =
{
    type = "fluid",
    name = "diamond-concentrate",
    icon = "__pyfusionenergy__/graphics/icons/diamond-concentrate.png",
    default_temperature = 15,
    base_color = {r = 0.627, g = 0.764, b = 0.850},
    flow_color = {r = 0.627, g = 0.764, b = 0.850},
    max_temperature = 100,
	gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "i"
}

-------------------------------------------------------------------------------
--[[Extend Data]]--
data:extend({fluid, diamond_concentrate})