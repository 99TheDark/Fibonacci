module Fibonacci

    fibCache = Dict{Int64,Int64}()

    function fibonacci(n::Int64)::Int64
        if n <= 1
            return 1
        else
            if !haskey(fibCache, n)
                fibCache[n] = fibonacci(n - 2) + fibonacci(n - 1)
            end
            return fibCache[n]
        end
    end

    export fibonacci

end
