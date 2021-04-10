-- page = [[
-- <html>
-- <head>
-- <title>An HTML Page</title>
-- </head>
-- <body>
-- <a href="http://www.lua.org">Lua</a>
-- </body>
-- </html>
-- ]]
-- io.write(page)
-- maneira legar de usar for
--for i=1,1000 do if i%100==0 then io.write(i ,'\n') end  end
function yuri(num)
    a={}
    for i=1,string.len(num)
    do
        if num[i]=="a" then
            a[i]=10
        elseif num[i]=="b" then
            a[i]=11
        elseif num[i]=="c" then
            a[i]=12
        elseif num[i]=="d" then
            a[i]=13
        elseif num[i]=="e" then
            a[i]=14
        elseif num[i]=="f" then
            a[i]=15
        else
            a[i]=tonumber(num[i])
            print(num[i])
        end
    end
    return a

end
function hexa(num,base,r)
    if (base==table.length) then
        r=r+num[base]*16
        return r
    else
        r=r+num[base]*16
        io.write("oi")
        return hexa(num,base+1,r)
    end
end
function main()
    a=io.read()
    num=yuri(a)
    io.write(num[1])
    io.write(hexa(num),1.0)
end
main()