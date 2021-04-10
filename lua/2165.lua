
function saida(neko)
    if neko==true then
        io.write("TWEET\n")
    else
        io.write("MUTE\n")
    end
end
function contar(p)
        usagi=0
        for i=0,string.len(p)-1,1
        do
            usagi=usagi+1
        end
        if usagi>140 then
            neko=false
        else
            neko=true
        end
        return neko
end
function entrada()
    p=io.read()
    p=tostring(p)
    return p
end

function main()
    rabbit=entrada()
    neko=contar(rabbit)
	saida(neko)
end
main()