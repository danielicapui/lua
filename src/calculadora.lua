--script.lua
return 
{
    some=function(a,b)
        return a+b
    end,
    subtraia=function(a,b)
        return a-b
    end,
    divida=function(a,b)
        if b~=0 then
            return a/b
        end
    end,
    multiplique=function (a,b)
        return a*b
    end
}

