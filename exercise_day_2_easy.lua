-- easy stuff

function concatenate(a1, a2)
    local res = a1
    for i,v in ipairs(a2) do
        res[#res + i] = a2[i]
    end
    return res
end

x = { 1, 2, 3 }
y = { 'a', 'b', 'c'}

res = concatenate(x, y)

for k,v in pairs(res) do
    print(k,v)
end