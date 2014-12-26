-- medium stuff

local mt = setmetatable(_G, {})
function mt:__call(other)
    print('adding ' ..  self .. ' with ' .. other)
    local res = self
    for i,v in ipairs(other) do
        res[#res + i] = other[i]
    end
    return res
end
--setmetatable(_G, mt)

x = { 1, 2, 3 }
y = { 'a', 'b', 'c'}

print()
res = 3 + 3
print(res)

--for k,v in pairs(_G) do
    --print(k,v)
--end