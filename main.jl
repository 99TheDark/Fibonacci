include("fib.jl")

using .Fibonacci

function calcAll()
    # Easily goes past the integer limit (0 = min, 91 = max)
    arr = []
    for i in range(0, 91)
        push!(arr, fibonacci(i))
    end
    return arr
end

function calculate(num::Int64)
    for _ in range(length=num) calcAll() end
end

@time calculate(10000)

println(calcAll())
