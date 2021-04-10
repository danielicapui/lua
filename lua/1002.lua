function area(r,n)
	return r*r*n
end
function saida(h)
	io.write(string.format("A=%.4f\n",h))
end

r = tonumber(io.read())
n =3.14159
saida(area(r,n))