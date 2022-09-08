interacoes = 1

x1 = 10
x2 = 10

while (interacoes <= 100):

        derivadax1 = (2 * x1)
        derivadax2 = (4 * x2)
        gradiente = derivadax1 + derivadax2
        funcao = (x1 ** 2 - 1 ** 2) + 2 * (x2 ** 2)

        if (gradiente <= 0.01):
                break

        print("----------------------")
        print("INTERAÇÃO = ", interacoes)
        print("----------------------")
        print("X1= ", x1)
        print("X2= ", x2)
        print(f'F(x) = {funcao:,.2f}')



        x1 -= 1
        x2 -= 1

        interacoes += 1

        if x1 == 1:
                x2 -= 1

                funcaof1 = (x1 ** 2 - 1 ** 2) + 2 * (x2 ** 2)
                derivadax1 = (2 * x1)
                derivadax2 = (4 * x2)
                gradientef1 = derivadax1 + derivadax2

print("----------------------")
print("")
print(f'f (1,0) = {funcaof1:,.2f}')
print("Gradiente da Função f(1,0): ", gradientef1)
print("----------------------")








