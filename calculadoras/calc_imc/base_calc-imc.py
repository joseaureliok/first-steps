#importando funções do IMC
from imc import calc_imc
from imc import class_imc

#definindo respostas afirmativas e negativas em uma lista
s=['SIM','Sim','sim','S', 's']
n=['NÃO','Não','não','NAO', 'Nao', 'nao', 'N','n']

#definindo uma função principal para execução da calculadora
def principal():
    pergunta=input('Você quer (re)iniciar o programa? (S/N): ')

    #acrescentando condições para execução e loop
    while pergunta in s:
        print('Início do programa...')
        medidaMt=input('Qual sua medida em metros? (Ex: 1.80, para um metro e oitenta centímetos): ')
        medidaKg=input('Qual seu peso em quilogramas? (Ex: 80, para oitenta quilogramas): ')

        #convertendo as str em float
        medidaMt=float(medidaMt)
        medidaKg=float(medidaKg)

        #acrescentando condição de validade para execução do cálculo
        if medidaKg==0 or medidaMt==0:
            print('Valores inválidos!!!')
            return (principal())

        #apresentando parâmetros de cálculo para IMC
        indice = calc_imc(altura=medidaMt, peso=medidaKg)
        print('IMC: ', indice)
        classificacao_imc = class_imc(indice)
        print(classificacao_imc)

        #retorno do programa ou saída
        pergunta=input('Você quer continuar o programa? (S/N): ')

        if pergunta in n:
            pass
        elif pergunta in s:
            return (principal())
        else:
            print('Resposta inválida!!!')
            return (principal())

    #fim do programa em caso de resposta negativa à primeira pergunta
    else:
        print('Programa encerrado.')

principal()