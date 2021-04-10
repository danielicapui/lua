
function divide(parametro)
	linha = {}
	n = 0
	-- parametro para espaço "*l"
	for i in string.gmatch(io.read(parametro), "%S+") do
	   n = n + 1
	   linha[n] = tonumber(i)
	end
	return linha
end
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
local Rabbit = { }--criar a classe Rabbit
Rabbit.__index = Rabbit

function Rabbit:new(usagi,inu) --constructor 
    return setmetatable({usagi=usagi,inu=inu}, Rabbit)
end


function Rabbit:yume_nikki()
    -- Referenciamos atributos do próprio objeto utilizando “self”
    self.kuma=10001
    for r=1,self.inu,1
	do
        if self.kuma>self.usagi[r] then
            self.pos=r-1
            self.kuma=self.usagi[r]
        end
    end
    self:saida()
end
function Rabbit:saida()
    io.write(string.format("Menor valor: %d\n",self.kuma))
    io.write(string.format("Posicao: %d\n",self.pos))
end
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
function main()
    inu=tonumber(io.read())
    yamori=divide("*l")
    local shika =Rabbit:new(yamori,inu)
    --cria um novo objeto da classe Rabbit
	shika:yume_nikki()--chamado de um método de rabbit

end
main()