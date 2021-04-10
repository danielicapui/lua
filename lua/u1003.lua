function soma(a,b)
	return a+b
end
function saida(sum)
	io.write("SOMA = ",sum,"\n")
	--print(string.format('SOMA = %.0f',sum))
end
a=tonumber(io.read())
b=tonumber(io.read())
saida(soma(a,b))
