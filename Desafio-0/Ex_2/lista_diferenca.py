def menor_diferenca():
    array = [int(numero) for numero in input("Insira o array de números inteiros separados por vírgula: ").split(",")]
    array.sort()
    
    # Encontra a menor diferença entre os pares
    menor_diferenca = float('inf')
    for i in range(len(array) - 1):
        diferenca = array[i+1] - array[i]
        if diferenca < menor_diferenca:
            menor_diferenca = diferenca

    # Cria uma lista com todos os pares que têm a menor diferença
    pares_menor_diferenca = []
    for i in range(len(array) - 1):
        diferenca = array[i+1] - array[i]
        if diferenca == menor_diferenca:
            pares_menor_diferenca.append((array[i], array[i+1]))

    return pares_menor_diferenca

resultado = menor_diferenca()
print(resultado)