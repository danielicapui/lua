
-------------------------------------------------------
local Rabbit={ }
Rabbit.__index=Rabbit

function Rabbit:new(usagi)
    return setmetatable({usagi=usagi}, Rabbit)
end

function Rabbit:yume_nikki()
    self.kuma=0
    self.inu=0
    while (self.usagi>=0)
    do
        self.usagi=tonumber(io.read())
        if (self.usagi<0) then
            break
        else
            self.inu=self.inu+1
            self.kuma=self.kuma+self.usagi
        end
    end
    self.media=self.kuma/self.inu
end

function Rabbit:saida()
    io.write(string.format("%.2f\n",self.media))
end
--------------------------------------------------------

function main()
	local shika =Rabbit:new(0)--cria um novo objeto da classe Rabbit
    shika:yume_nikki()--chamado de um método de rabbit
    shika:saida()
end
main()