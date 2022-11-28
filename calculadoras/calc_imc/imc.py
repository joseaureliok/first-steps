print('Módulo IMC importado')

def calc_imc(peso, altura):
    print('Parâmetro peso: ', peso)
    print('Parâmetro altura: ', altura)
    imc=(peso)/(altura**2)
    return imc

def class_imc(indice):
    if indice < 18.5:
        return'baixo peso'
    elif indice < 25:
        return 'peso adequado'
    elif indice < 30:
        return 'sobrepeso'
    else:
        return 'obeso'

