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
	m=10
	if self.usagi%2==0 then
		m=m+2
	end
	for r=self.usagi,self.usagi+m,1
	do
		if (r%2~=0 and r~=1) then
			self:saida(r)
		end
	
	end
end
function Rabbit:saida(r)
	io.write(string.format("%d\n",r))
end
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
function main()
	yamori=divide("*l")
	local shika =Rabbit:new(tonumber(yamori[1])) --cria um novo objeto da classe Rabbit
	shika:yume_nikki()--chamado de um método de rabbit--acessando um atributo de Rabbit
end
main()