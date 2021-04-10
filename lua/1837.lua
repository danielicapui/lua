
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

function Rabbit:new(usagi,inu,kuma,ookami) --constructor 
    return setmetatable({usagi=usagi,inu=inu,kuma=kuma,ookami=ookami}, Rabbit)
end

function Rabbit:yume_nikki()
    -- Referenciamos atributos do próprio objeto utilizando “self”
	s=0
	for r=0,math.abs(self.inu),1
	do
		if (((self.usagi-r)%self.inu)==0)then 
			self.ookami=tonumber((self.usagi-r)/self.inu)
			s=r
			break
		end
		s=r
	end
	self.kuma=s
	return self.kuma,self.ookami
end
function Rabbit:saida()
	io.write(string.format("%d %d\n",self.ookami,self.kuma))
end
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
function main()
	yamori=divide("*l")
	local shika =Rabbit:new(tonumber(yamori[1]),tonumber(yamori[2]),1,1) --cria um novo objeto da classe Rabbit
	shika:yume_nikki()--chamado de um método de rabbit
	shika:saida() --acessando um atributo de Rabbit
end
main()