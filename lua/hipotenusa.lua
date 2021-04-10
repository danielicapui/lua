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
local Rabbit = { }--criar a classe Rabbit
Rabbit.__index = Rabbit

function Rabbit:new(cateto1,cateto2) --constructor 
    return setmetatable({cateto1=cateto1,cateto2=cateto2}, Rabbit)
end


function Rabbit:yume_nikki()
    -- Referenciamos atributos do próprio objeto utilizando “self”
	if self.cateto2~=0 then
		self.hipotenusa=math.sqrt(self.cateto1*self.cateto1+self.cateto2*self.cateto2)
	else 
		print("impossível dividir por zero!")
		self.hipotenusa=0
	end
end
function Rabbit:saida()
	if self.hipotenusa ~=0 then
		io.write(string.format("%.2f\n",self.hipotenusa))
	else 
		io.write("operação inválida\n")
	end
end

function main()
	yamori=divide("*l")
	local shika =Rabbit:new(yamori[1],yamori[2]) --cria um novo objeto da classe Rabbit
	shika:yume_nikki()--chamado de um método de rabbit
	shika:saida()
end
main()