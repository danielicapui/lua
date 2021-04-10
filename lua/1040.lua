-- function rabbit(n)
    -- return n % 1 >= 0.5 and math.ceil(n) or math.floor(n)
-- end

function media(a,b,c,d)
	s=((a*2.0)+(b*3.0)+(4.0*c)+(d*1.0))/10.0
	return s
end
function exame(e,media)
	t=(e+media)/
	if t>=5.0 then
		io.write("Aluno aprovado.\n")
		print(string.format('Media final: %.1f',t))
	else 
		io.write("Aluno reprovado.\n")
		print(string.format('Media final: %.1f',t))
	end
end
function analise(media)
	if(media>=7.0) then 
		print(string.format('Media: %.1f', media))
		io.write("Aluno aprovado.\n")
	elseif (media<5.0) then
		print(string.format('Media: %.1f', media))
		io.write("Aluno reprovado.\n")
	elseif ((media>=5.0) and (media<=6.9))  then
		print(string.format('Media: %.1f', media))
		io.write("Aluno em exame.\n")
		local e=tonumber(io.read())
		print(string.format('Nota do exame: %.1f',e))
		exame(e,media)
	end
end
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

shika=divide("*l")
a =tonumber(shika[1])
b =tonumber(shika[2])
c =tonumber(shika[3])
d=tonumber(shika[4])

-- tonumber(a,10)
-- tonumber(b,10)
-- tonumber(c,10)
-- tonumber(d,10)
usagi=media(a,b,c,d)
analise(usagi)
