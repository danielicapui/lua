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