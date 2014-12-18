function add(prev, next)
    return prev + next
end

function reduce(max, init, f)
    if init >= max then return init end
    return f(init, reduce(max, init + 1, f))
end

print(reduce(5, 0, add))
-- factorial
print(reduce(5, 1, (function(x, y) return x * y end)))
