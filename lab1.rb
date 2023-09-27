def mfp(m)
    sum = 0
    (1..m).each{|i|
        x = i
        mul = 1
        while x > 0 do
            mul *= x % 10 if x % 10 != 0
            x/=10
        end
        sum += mul
    }
    val = sum
    ans = -1
    (2..Math.sqrt(sum)).each{|i|
        while val % i == 0 do
            val /= i
            ans = i
        end
    }
    if val>ans then ans = val end 
    printf("%d\n",ans)
end
# a = gets
# a = a.chomp
# mfp(a.to_i)