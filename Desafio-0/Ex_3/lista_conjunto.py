def subconjuntos(numeros):
    if not numeros:
        return [[]]                                                                     # Retorna uma lista vazia como o único subconjunto de um conjunto vazio

    subconjuntos_resto = subconjuntos(numeros[1:])                                      # Encontra os subconjuntos do restante da lista
    subconjuntos_atualizados = [subset + [numeros[0]] for subset in subconjuntos_resto] # Adiciona o primeiro elemento em cada subconjunto do restante da lista
    return subconjuntos_resto + subconjuntos_atualizados                                # Combina os subconjuntos do restante da lista com os subconjuntos atualizados

conjunto = input("Digite o conjunto de números (separados por vírgula): ").split(",")
conjunto = [int(numero) for numero in conjunto]                                         # Converte os elementos do conjunto de números para inteiros

resultado = subconjuntos(conjunto)                                                      # Encontra todos os subconjuntos do conjunto informado
print(resultado)