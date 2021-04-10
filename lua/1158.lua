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
    p=2*self.ino
    if (self.usagi%2==0) then
        p=p-1
    end

    for r=self.usagi,self.usagi+p,1
	do
        if (r%2!=0) then
            self.soma=self.soma+r
        end
	end
end
function Rabbit:saida()
	io.write(string.format("%d\n",self.soma))
end
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
function main()
    t=tonumber(io.read())
    while (t!=0)
    do
        yamori=divide("*l")    
        local shika =Rabbit:new(yamori[1],yamori[2]) --cria um novo objeto da classe Rabbit
        shika:yume_nikki()--chamado de um método de rabbit
        shika:saida()
        end
        t=t-1
    end 
end
main()