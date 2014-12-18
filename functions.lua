-- higher order functions!!
function call_twice(f)
    -- anonymous functions!
    return (function(num) return f(f(num)) end)
end

function triple(num) 
    return num * 3
end

times_nine = call_twice(triple)
print(times_nine(42))

-- optimizes tail recursive calls with goto's
function reverse(s, t) 
    if #s < 1 then return t end
    first = string.sub(s, 1, 1)
    rest = string.sub(s, 2, -1)
    return reverse(rest, first .. t)
end

large = string.rep('hello', 50)
print(reverse(large, ''))

function print_args( foo, bar )
    print('variables are')
    print(foo)
    print(bar)
end

print_args('foo', 42)
-- not used arguments are nil
print_args('foo')
-- extra arguments are just ignored
print_args(1337, 'bar', 'ignored', 42)

function variadic_function(foo, ... )
    print('foo is ' .. foo)
    -- using luas tables as simple array here
    rest = { ... }
    print('rest is:')
    print(rest[1])
    print(rest[2])
end

variadic_function('foo')
variadic_function(42, 'foo', 1337)
variadic_function('bar', string, times_nine)