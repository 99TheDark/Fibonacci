include("fib.jl")

using .Fibonacci

function calcAll()::Vector{Int64}
    # Easily goes past the integer limit (0 = min, 91 = max)
    arr = []
    for i in range(0, 91)
        push!(arr, fibonacci(i))
    end
    return arr
end

function calculate(num::Int64)::Nothing
    for _ in range(length=num) calcAll() end
end

@time calculate(10000)

println(calcAll())
