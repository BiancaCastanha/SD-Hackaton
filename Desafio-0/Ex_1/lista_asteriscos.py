def cria_lista(n):                          #Cria função para criação da lista que tem como  parâmetro 'n'
    lista = []                              #Cria lista vazia
    for i in range(1, n+1):                 #Loop de 1 a n+1
        asteriscos = '*' * i                #Cria string com 'i' asteriscos
        lista.append(asteriscos)            #Adiciona strings na lista

    return lista                            #Retorna lista preenchida

n=int(input("Digite um número inteiro: "))  #Pede um número inteiro
resultado = cria_lista(n)                   #Chama a função criada anteriormente com o número passado, e o resposta é armazenada na variável 'resultadp' 
print(resultado)                            #Mostra a lista preenchida    