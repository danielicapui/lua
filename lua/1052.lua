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
function processamento(mes)
	if mes==1 then
		usagi="January"
	elseif mes==2 then
		usagi="February"
	elseif mes==3 then
		usagi="March"
	elseif mes==4 then
		usagi="April"
	elseif mes==5 then
		usagi="May"
	elseif mes==6 then
		usagi="June"
	elseif mes==7 then
		usagi="July"
	elseif mes==8 then 
		usagi="August"
	elseif mes==9 then
		usagi="September"
	elseif mes==10 then 
		usagi="October"
	elseif mes==11 then 
		usagi="November"
	elseif mes==12 then 
		usagi="December"
	end
	return usagi
end
function saida(usagi)
	io.write(usagi,"\n")
end 
shika=divide("*l")
mes=tonumber(shika[1])
usagi=processamento(mes)
saida(usagi)