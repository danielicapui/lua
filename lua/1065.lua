
function saida(p)
	io.write(string.format("%.0f valores pares\n",p))
end
function pares()

	usagi=0;
	for i=1,5,1
	do
		p=tonumber(io.read())
		if (p%2==0) then
			usagi=usagi+1
		end
	end
	return usagi
end

function main()
	rabbit=pares()
	saida(rabbit)
end
main()