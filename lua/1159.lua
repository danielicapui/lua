
-- local Rabbit={}
-- Rabbit.__index=Rabbit
-- fuction Rabbit:new(usagi)
--     return setmetatable({usagi=usagi},Rabbit)
-- end    
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
local Rabbit = { }--criar a classe Rabbit
Rabbit.__index = Rabbit

function Rabbit:new(usagi) --constructor 
    return setmetatable({usagi=usagi}, Rabbit)
end


function Rabbit:yume_nikki()
    -- Referenciamos atributos do próprio objeto utilizando “self”
    self.soma=0
    p=10
    if (self.usagi%2==0) then
        p=p-1
    end

    for r=self.usagi,self.usagi+p,1
	do
        if (r%2==0) then
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
    t=1
    while (t~=0)
    do
        t=tonumber(io.read())
        if (t~=0) then
	        local shika =Rabbit:new(t) --cria um novo objeto da classe Rabbit
            shika:yume_nikki()--chamado de um método de rabbit
            shika:saida()
        end
    end 
end
main()