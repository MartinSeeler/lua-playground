function double(num)
    res = 2 * num
    return res
end

x = double(1337)
print(x)
-- WTF???
print(res)

function secure_double(num)
    local foo = 2 * num
    return foo
end

y = secure_double(42)
print(y)
-- Ah, i see
print(foo)