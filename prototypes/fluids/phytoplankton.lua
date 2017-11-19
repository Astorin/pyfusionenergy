-------------------------------------------------------------------------------
--[[PHYTOPLANKTON]]--
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
--[[fluids]]--
local fluid =
{
    type = "fluid",
    name = "phytoplankton",
    icon = "__pyfusionenergy__/graphics/icons/phytoplankton.png",
    default_temperature = 15,
    base_color = {r = 0.219, g = 0.627, b = 0.239},
    flow_color = {r = 0.219, g = 0.627, b = 0.239},
    max_temperature = 100,
	gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "d"
}

-------------------------------------------------------------------------------
--[[Extend Data]]--
data:extend({fluid})