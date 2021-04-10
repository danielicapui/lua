
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

function Rabbit:new(usagi,ino) --constructor 
    return setmetatable({usagi=usagi,ino=ino}, Rabbit)
end


function Rabbit:yume_nikki()
    -- Referenciamos atributos do próprio objeto utilizando “self”
    self.soma=0
    m=self.usagi
    n=self.ino
    if self.ino<self.usagi then
        m=self.ino
        n=self.usagi
    end
    for r=m,n,1
	do
        io.write(string.format("%d ",r))
        self.soma=self.soma+r
	end
end
function Rabbit:saida()
	io.write(string.format("Sum=%d\n",self.soma))
end
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
function main()
    yamori={1,2}
    while ((yamori[1]>0) and yamori[2]>0)
    do
        yamori=divide("*l")
        
        if (yamori[2]>0 and yamori[1]>0) then
	        local shika =Rabbit:new(yamori[1],yamori[2]) --cria um novo objeto da classe Rabbit
            shika:yume_nikki()--chamado de um método de rabbit
            shika:saida()
        end
    end 
end
main()