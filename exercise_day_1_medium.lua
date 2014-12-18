function for_loop(a, b, f)
    if a > b then return end
    f(a)
    for_loop(a + 1, b, f)
end

for_loop(3, 1, print)
for_loop(1, 3, print)
for_loop(10, 30, print)