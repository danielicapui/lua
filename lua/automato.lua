local Automato = { }--criar a classe Rabbit
Automato.__index = Automato

function Automato:new(inicial,final) --constructor 
    return setmetatable({inicial=inicial,final=final}, Rabbit)
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