function make_bubu()
    return 'foo', 42
end

--- why can't this be a tuple?
x1 = make_bubu()
print(x1)
x2, y2 = make_bubu()
print(x2, y2)
-- ignores unused assignments like in method arguments
x3, y3, z3 = make_bubu()
print(x3, y3, z3)
