
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
local Rabbit = { }--criar a classe Rabbit
Rabbit.__index = Rabbit

function Rabbit:new(usagi,neko,kuma) --constructor 
    return setmetatable({usagi=usagi,neko=neko,kuma=kuma}, Rabbit)
end


function Rabbit:yume_nikki()
    -- Referenciamos atributos do próprio objeto utilizando “self”
	
    for r=1,self.usagi,1
	do
		t=tonumber(io.read())
		if t>=10 and t<=20 then
			self.neko=self.neko+1
		else
			self.kuma=self.kuma+1
		end
	end
end
function Rabbit:saida()
	io.write(string.format("%d in\n",self.neko))
	io.write(string.format("%d out\n",self.kuma))
end
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
function main()
	a=io.read()
	local shika =Rabbit:new(tonumber(a),0,0) --cria um novo objeto da classe Rabbit
	shika:yume_nikki()--chamado de um método de rabbit
	shika:saida()
end
main()