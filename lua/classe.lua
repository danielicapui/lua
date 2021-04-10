local Vetor = { }--criar a classe vetor
Vetor.__index = Vetor

function Vetor:new(x, y, z) --constructor 
    return setmetatable({x = x, y = y, z = z}, Vetor)
end

function Vetor:magnitude()
    -- Referenciamos atributos do próprio objeto utilizando “self”
    return math.sqrt(self.x^2 + self.y^2 + self.z^2)
end

local rabbit =Vetor:new(0,1,0) --cria um novo objeto da classe Vetor do
print (rabbit:magnitude())--chamado de um método de rabbit do
print (rabbit.x)--acessando um atributo de Vetor
print(rabbit.y)
print(rabbit.z)
rabbit.z=10
print(rabbit.z)
















-- local Rabbit={} --criar a classe
-- Rabbit.__index=Rabbit 

-- function Rabbit.new(inicia) --constructor da classe
--     local self=setmetatable({},Rabbit)
--     self.tamanho=inicia
--     self.cor=inicia
--     self.velocidade=inicia
--     return self
-- end 
-- function Rabbit.set_value(self,tamanho,cor,velocidade)
--     self.tamanho=tamanho
--     self.cor=cor
--     self.velocidade=velocidade
-- end

-- function Rabbit.get_value(self)
--     return self.cor
-- end 
-- local i = Rabbit.new(5,"branco",10)
-- print(i:get_value())
-- print(i:get_value(cor))
-- i:set_value(6)
-- print(i:self) 