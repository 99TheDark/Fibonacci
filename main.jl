include("fib.jl")

using .Fibonacci

# Easily goes past the integer limit
println(fibonacci(100))