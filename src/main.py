from Calc import Calc
import script
def main(c):
    op=int(input("Digite 1 para somar:\nDigite 2 para subtrair:\nDigite 3 para multiplique:\nDigite 4 para dividir:\n"))
    if op==1:
        print(c.some())
    elif op==2:
        print(c.subtraia())
    elif op==3:
        print(c.multiplique())
    elif op==4:
        print(c.divida())
    else:
        print("Erro")
        return -1
if __name__=="__main__":
    script.say_hi("Mundo!")
    print("Calculadora utilizando Lua e python")
    a=float(input("Digite 1 número:"))
    b=float(input("Digite 1 número:"))
    c=Calc(a,b)
    main(c)