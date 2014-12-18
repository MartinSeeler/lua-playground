-- easy stuff

function ends_with(num, ending)
    return tostring(num):reverse():sub(1,1) == tostring(ending)
end

function ends_with_3(num)
    return ends_with(num, 3)
end

function is_prime(n)
    local num = tonumber(n)
    -- sieve out all negatives, non-numbers or illegal inputs
    if not num or num < 2 or num % 1 ~= 0 then
        return false
    elseif num == 2 then return true
    -- even numbers are not prime
    elseif num > 2 and num % 2 == 0 then
        return false
    end
    for i = 3, num^(1/2), 2 do
        if num % i == 0 then
            return false
        end
    end
    return true
end

-- local from = 1
-- local to = 1000000
-- local primes = 0
-- for i = from, to do
--     if is_prime(i) then
--        primes = primes + 1
--     end
-- end
-- print('There are ' .. primes .. ' between ' .. from .. ' and ' ..  to)

function combine(f1, f2)
    return (function(x) return f1(x) and f2(x) end)
end

function n_conditions(n, cond, f, i, res)
    if not i then i = 1 end
    if not res then res = 0 end
    if res >= n then return end
    if cond(i) then
        f(i)
        res = res + 1
    end
    n_conditions(n, cond, f, i + 1, res)
end

n_conditions(1337, combine(is_prime, ends_with_3), function(x) print(x .. ' is prime and ends with 3!') end)