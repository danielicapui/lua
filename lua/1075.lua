function saida(n)
	io.write(string.format("%d\n",n))
end
function yume_nikki(a)
	for n=1,10000,1
	do
		if n%a==2 then
			saida(n)
		end
	end
end
a=io.read()
a=tonumber(a)
yume_nikki(a)