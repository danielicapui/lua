function saida(n)
	io.write(string.format("%d\n",n))
end
function yume_nikki(a,b)
	for n=a+1,b-1,1
	do
		if n%5==2 or n%5==3 then
			saida(n)
		end
	end
end
a=io.read()
b=io.read()
a=tonumber(a)
b=tonumber(b)
c=a
d=b
if a>b then
	c=b
	d=a
end
yume_nikki(c,d)