# Considere a seguinte matriz:
  
A = matrix(1:16, nrow = 4, ncol=4)
  
# a) Nomear as linhas e as colunas
rownames(A) = 1:nrow(A)
colnames(A) = 1:ncol(A)

# b) Substituir o elemento presente na segunda linha e terceira
# coluna pela soma dos elementos da diagonal principal
A[2,3] = sum(diag(A))

# c) Calcule a transposta de A
t(A)

# d) Calcule a inversa de A
MASS::ginv(A)