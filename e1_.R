
# Segundo caso 2. P(X_t = -1) = P(X_t = 0) = P(X_t = 1) = 1/3

# funcao randon walk, com argumentos, domain = vetor que valores em
# que x pode assumir, prob é o vetor de probabilidades de cada valor
# que o dominio pode assumir, sendo assim x e p sao vetores de mesmo tamanho.
rw_tres <- function(domain, prob, n){
  
  vetor <- NULL
  
  initial <- sample(x = domain, size = 1, replace = TRUE , prob = prob) # onde que inicia.
  
  if(initial == -1) x <- sample(x =  c(-1,0), size = 1, replace = TRUE, prob = c(1/2,1/2))
  if(initial == 0) x <- sample(x =  domain, size = 1, replace = TRUE, prob = prob)
  if(initial == 1) x <- sample(x =  c(1,0), size = 1, replace = TRUE, prob = c(1/2,1/2))
  
  vetor[1] <- initial
  vetor[2] <- x
  
  for(i in 1:n){
    
    if(x == -1) x <- sample(x =  c(-1,0), size = 1, replace = TRUE, prob = c(1/2, 1/2))
    if(x == 0) x <- sample(x =  domain, size = 1, replace = TRUE, prob = prob)
    if(x == 1) x <- sample(x =  c(1,0), size = 1, replace = TRUE, prob = c(1/2,1/2))
    
    vetor[i + 2] <- x
  }
  
  vetor
}

rw_tres(domain = c(-1,0,1), prob = c(1/3,1/3,1/3), n = 50)
rw_tres(domain = c(-1,0,1), prob = c(1/3,1/3,1/3), n = 100)
rw_tres(domain = c(-1,0,1), prob = c(1/3,1/3,1/3), n = 200)
