function solution(n::Int)
    #Solution with power
    n_string = string(n)
    N = length(n_string)
    B = 0
    for i = 1:N
        if n_string[N-i+1] == '4'
            n = n - 2*10^(i-1)
            B = B + 2*10^(i-1)
        end
    end
    return n,B
end

function solution(n::Int)
    #Solution with joininig
    n_string = string(n)
    x = zeros(Int,0)
    for i = 1:length(n_string)
        if n_string[i] == '4'
            append!(x,1)
        else
            append!(x,0)
        end
    end

    B = parse(Int,join(x))
    A = n - B
    return A,B
end

T = parse(Int, readline())
for i = 1:T
    n = parse(Int,readline())
    a,b = solution(n)
    println("Case #$i: $a $b")
end
