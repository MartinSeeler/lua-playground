local greek_numbers = {
    ena = 'one',
    dyo = 'two',
    tris = 'three'
}

function print_table(t)
    local res = {}
    for k,v in pairs(t) do
        res[#res + 1] = k .. ':=' .. v
    end
    return table.concat(res, '\n')
end

mt = {
    __tostring = print_table
}

setmetatable(greek_numbers, mt)
print(greek_numbers)


-- defining a strict metatable for secure access
local __private = {}
function strict_read(table, key)
    if __private[key] then
        return __private[key]
    else
        error('Invalid key: ' .. key)
    end
end
function strict_write(table, key, value)
    if __private[key] then
        error('Key already exists: ' .. key)
    else
        __private[key] = value
    end
end

mt = {
    __index = strict_read,
    __newindex = strict_write
}

treasure = {}
setmetatable(treasure, mt)
--this will fail
--print(treasure.gold)
treasure.gold = 50
-- this will also fail
--treasure.gold = 100
print(treasure.gold)