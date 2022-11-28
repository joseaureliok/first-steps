from prettytable import PrettyTable

def grupoA():
    grupoA=PrettyTable()

    grupoA.field_names=['Equipe', 'Jogos', 'Pontuação']

    grupoA.add_row(['Corinthians', 9, 17])
    grupoA.add_row(['Inter de Limeira', 10, 11])
    grupoA.add_row(['Água Santa', 10, 10])
    grupoA.add_row(['Guarani', 10, 10])
    print(grupoA)

def grupoB():
    grupoB=PrettyTable()

    grupoB.field_names=['Equipe', 'Jogos', 'Pontuação']

    grupoB.add_row(['São Paulo FC', 9, 17])
    grupoB.add_row(['São Bernardo', 10, 15])
    grupoB.add_row(['Ferroviária', 9, 10])
    grupoB.add_row(['Novorizontino', 10, 3])
    print(grupoB)

def grupoC():
    grupoC=PrettyTable()

    grupoC.field_names=['Equipe','Jogos', 'Pontuação']

    grupoC.add_row(['Palmeiras', 8, 20])
    grupoC.add_row(['Mirassol', 10, 14])
    grupoC.add_row(['Ituano', 10, 15])
    grupoC.add_row(['Botafogo', 10, 15])
    print(grupoC)

def grupoD():
    grupoD=PrettyTable()

    grupoD.field_names=['Equipe', 'Jogos', 'Pontuação']

    grupoD.add_row(['Bragantino', 10, 19])
    grupoD.add_row(['Santo André', 10, 14])
    grupoD.add_row(['Santos', 9, 10])
    grupoD.add_row(['Ponte Preta', 10, 8])
    print(grupoD)

def total():
    geral=PrettyTable()

    geral.field_names=['Equipe', 'Jogos', 'Pontuação']

    geral.add_row(['Palmeiras', 8, 20])
    geral.add_row(['Bragantino', 10, 19])
    geral.add_row(['Corinthians', 9, 17])
    geral.add_row(['São Paulo FC', 9, 17])
    geral.add_row(['São Bernardo', 10, 15])
    geral.add_row(['Ituano', 10, 15])
    geral.add_row(['Botafogo', 10, 15])
    geral.add_row(['Santo André', 10, 14])
    geral.add_row(['Mirassol', 10, 14])
    geral.add_row(['Inter de Limeira', 10, 11])
    geral.add_row(['Água Santa', 10, 10])
    geral.add_row(['Guarani', 10, 10])
    geral.add_row(['Santos', 9, 10])
    geral.add_row(['Ferroviária', 9, 10])
    geral.add_row(['Ponte Preta', 10, 8])
    geral.add_row(['Novorizontino', 10, 3])

    print(geral)