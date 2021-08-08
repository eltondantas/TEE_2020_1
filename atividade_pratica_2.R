# Atividade Prática 2
# Elton Dantas de Oliveira Mesquita


# Considere a seguinte matriz:

A = matrix(1:16, nrow = 4, ncol=4)

# a) Nomear as linhas e as colunas

colnames(A) = paste("C",1:ncol(A),sep="")
rownames(A) = paste("L",1:nrow(A),sep="")

# b) Substituir o elemento presente na segunda linha e terceira coluna pela
# soma dos elementos da diagonal principal; (Armazene em um objeto chamado B)

B = A
B[2,3] = sum(diag(A))

# c) Calcule a transposta de A; (Armazene em um objeto chamado TA)

TA = t(A)

# d) Calcule a inversa de A. (Armazene em um objeto chamado IA)

IA = MASS::ginv(A)

# ** Crie uma lista chamada saida e armazene nela: A, B, TA, IA **

saida = list(A=A,B=B,TA=TA,IA=IA)

saida$A
saida$B
saida$TA
saida$IA
