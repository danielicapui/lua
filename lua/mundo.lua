function fatorial(n)
    if n==0 then 
        return 1
    else
        return n*fatorial(n-1)
    end 
end 
print("entre com um número:")
a=io.read("*numero")
print(fatorial(a))