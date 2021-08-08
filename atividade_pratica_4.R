# Atividade Prática 4
# Elton Dantas de Oliveira Mesquita

# Nesta atividade você deve criar uma função que calcula a soma dos elementos
# da diagonal principal de qualquer matriz quadrada. 
# Obs: Não é permitido usar os comandos sum() e diag().

sum_diag = function(X){
  if(ncol(X) != nrow(X)){
    return("Erro: a matriz não é quadrada!")
  }
  sum = 0
  for(i in 1:ncol(X)){
    sum = sum + X[i,i]
  }
  return(sum)
}

# Exemplos

A = matrix(1:4, nrow = 2)
A
sum_diag(A)

B = matrix(1:16, nrow = 4)
B
sum_diag(B)

C = matrix(1:6, nrow=2)
C
sum_diag(C)
