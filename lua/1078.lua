
function divide(parametro)
	linha = {}
	n = 0
	-- parametro para espaço "*l"
	for i in string.gmatch(io.read(parametro), "%S+") do
	   n = n + 1
	   linha[n] = i
	end
	return linha
end
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
local Rabbit = { }--criar a classe Rabbit
Rabbit.__index = Rabbit

function Rabbit:new(usagi) --constructor 
    return setmetatable({usagi=usagi}, Rabbit)
end


function Rabbit:yume_nikki()
    -- Referenciamos atributos do próprio objeto utilizando “self”
    self.s=1
    for r=1,10,1
	do
        self.s=r
        self:saida((self.s*self.usagi))
	end
end
function Rabbit:saida(m)
	io.write(string.format("%d x %d = %d\n",self.s,self.usagi,m))
end
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
function main()
	yamori=divide("*l")
	local shika =Rabbit:new(tonumber(yamori[1])) --cria um novo objeto da classe Rabbit
	shika:yume_nikki()--chamado de um método de rabbit

end
main()