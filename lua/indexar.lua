local String = { }--criar a classe String
String.__index = String

function String:new(frase) --constructor 
    return setmetatable({frase=frase}, String)
end
function String:separar(frase)
	tabela={}
	for pos=1,string.len(frase),1 do 
		tabela[pos]=string.sub(frase,pos,pos) --pega a posição posiniciail,posfinal de um parte da frase
	end
	return tabela
end
function String:remover_espaco(tabela)
	pos=0
	for i in #tabela do
		pos=pos+1
		print(i)
		if i=="" then
			table.remove(i)
		end
	end
	for i in #tabela do 
		print(i)
	end
	return tabela
end
a="123a b 4"
local shika=String:new(a)
s=shika:separar(a)
shika:remover_espaco(s)
