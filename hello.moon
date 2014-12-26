fib = (n) -> 
    lfib = (i=0, x, y) -> 
        if i == 0 then return 
        print(x)
        lfib(i - 1, y, x + y)
    lfib(n, 1, 1)

fib(42)

