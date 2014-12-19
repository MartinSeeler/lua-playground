function fib(n)
    local function lfib(i, x, y)
        if not i or i == 0 then return end 
        print(x)
        lfib(i - 1, y, x + y)
    end
    lfib(n, 1, 1)
end

fib(42)

