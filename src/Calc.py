import script,calculadora
class Calc:
    def __init__(self,a,b):
        self.a=a
        self.b=b
    #__init__=lambda self,a,b:self.a;self.b
    some=lambda self:calculadora.some(self.a,self.b)
    subtraia=lambda self:calculadora.subtraia(self.a,self.b)
    multiplique=lambda self:calculadora.multiplique(self.a,self.b)
    divida=lambda self:calculadora.divida(self.a,self.b)