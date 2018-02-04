--- Category
-- @classmod Category

local Category = {
    _class = "Category"
}
setmetatable(Category, {__index = require("stdlib/data/data")})

local category_type_map = { --luacheck: ignore category_type_map
    ["ammo-category"] = true,
    ["equipment-category"] = true,
    ["fuel-category"] = true,
    ["recipe-category"] = true,
    ["module-category"] = true,
    ["rail-category"] = true,
    ["resource-category"] = true,
}

function Category:_get(category_name, category_type)
    return self:get(category_name, category_type)
end
Category:set_caller(Category._get)

function Category:create()
    return self
end

function Category:add()
    return self
end

function Category:remove()
    return self
end

function Category:replace(a, b)
    if self:valid("category") then
        self:remove(a)
        self:add(b)
    end
    return self
end

Category._mt = {
    type = "category",
    __index = Category,
    __call = Category._get,
    __tostring = Category.tostring
}

return Category
