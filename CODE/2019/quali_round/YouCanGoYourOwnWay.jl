

function solution(N,Lydia_path)






    return path
end













T = parse(Int, readline())
for i = 1:T
    N = parse(Int,readline())
    Lydia_path = readline()
    my_path = solution(N,Lydia_path)
    println("Case #$i: "*my_path)
end
