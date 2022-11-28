from calculadora_basic import calculadora

def principal():
    start=input('----------CALCULADORA PADRÃO----------\n'
                         'Escolha uma opção:\n'
                         '(1) para SOMA\n'
                         '(2) para SUBTRAÇÃO\n'
                         '(3) para MULTIPLICAÇÃO\n'
                         '(4) para DIVISÃO\n'
                         '(0) para SAIR\n'
                         '\nDigite sua escolha e pressione <enter>: ' )

    if start in menuOn:
        numA = int(input('\nInforme um número inteiro: '))
        numB = int(input('Informe outro número inteiro: '))
        if start == '1':
            soma = calculadora['soma']
            print(soma(numA, numB))

            nova=input('Você quer fazer outro cálculo? (S/N)')
            if nova in s:
                return principal()
            elif nova in n:
                print('Calculadora encerrada!')

        elif start == '3':
            mult = calculadora['multiplicação']
            print(mult(numA, numB))

            nova = input('Você quer fazer outro cálculo? (S/N)')
            if nova in s:
                return principal()
            elif nova in n:
                print('Calculadora encerrada!')

        elif start == '2':
            subt = calculadora['subtração']
            print(subt(numA, numB))

            nova = input('Você quer fazer outro cálculo? (S/N)')
            if nova in s:
                return principal()
            elif nova in n:
                print('Calculadora encerrada!')

        elif start == '4':
            if numB !=0:
                divs = calculadora['divisão']
                print(divs(numA, numB))
            else:
                print('Não foi possível a divisão por zero, tente novamente!')

            nova = input('Você quer fazer outro cálculo? (S/N)')
            if nova in s:
                return principal()
            elif nova in n:
                print('Calculadora encerrada!')

    elif start =='0' :
        print('Calculadora encerrada!')
    else:
        print('Opção inválida!!!')
        return principal()


menuOn=['1','2','3','4']
s=['SIM', 'Sim', 'sim', 's']
n=['NÃO', 'Não','não','NAO','Nao','nao','n']

principal()