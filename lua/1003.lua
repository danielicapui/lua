Bola=Core.class(Sprite)

function Bola:init()
	print(texto)
	local bitmap=Bitmap.new(Texture.new("enemy.png"))
	self:addChild(bitmap)
	stage:addChild(self)
	
	self.velocidade=math.random(1,3)
	self.setX(math.random(0,270))
	
	self:addEventListener(Event.ENTER_FRAME, self.movimenta,self)
	self:addEventListener(Event.MOUSE_UP,self.clique,self)
end

function Bola:movimenta(event)
	self:seY(self:getY()+ self.velocidade)
end

function Bola:clique(event)
	if self.hitTestPoint(event.x,event.y) then
		print("Clicou")
		stage:removeChild(self)
	end
end

bola1=bola.new()
bola2=bola.new()
print(bola1.velocidade)
bola1.velocidade=10