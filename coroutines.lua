function fibonacci()
    local m = 1
    local n = 1
    while true do
        -- this is where resume jumps right back
        coroutine.yield(m)
        m, n = n, m + n
    end
end

generator = coroutine.create(fibonacci)

for i = 1, 10 do
    -- each time we call resume, it will return the yielded result and jumps back
    succeeded, value = coroutine.resume(generator)
    print(value)
end
