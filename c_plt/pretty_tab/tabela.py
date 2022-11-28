from base import *

print('>>>>_CLASSIFICAÇÃO DO CAMPEONATO PAULISTA_<<<<\n'
      '----Segunda-feira, 07 de Março de 2022----')
while True:
    grupo = int(input(' Escolha um grupo:\n'
                      '(1) Grupo A\n'
                      '(2) Grupo B\n'
                      '(3) Grupo C\n'
                      '(4) Grupo D\n'
                      '(5) Classificação Geral\n'
                      '(0) SAIR\n'
                      '>>>>> '))
    if grupo in range (0,6):
        if grupo == 1:
            print(grupoA())
            break
        elif grupo == 2:
            print(grupoB())
            break
        elif grupo == 3:
            print(grupoC())
            break
        elif grupo == 4:
            print(grupoD())
            break
        elif grupo == 5:
            print(total())
            break
        elif grupo == 0:
            print ('Programa finalizado!!!')
            break
    else:
        print('Escolha um número válido!!!')
        continue




