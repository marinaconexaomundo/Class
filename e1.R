
# Um passeio aleatorio, randon walk, ou seja o passo seguinte
# apenas depende do passo anterior.

# {St} para o caso em que:
# 1. P(X_t = -1) = P(X_t = 1) = 0.5
# 2. P(X_t = -1) = P(X_t = 0) = P(X_t = 1) = 1/3

# Fazer isso para n = 50, n = 100 e n = 200

# Elaborar graficos e tabelas.
# com graficos pleaseee.

# Primeiro caso 1. P(X_t = -1) = P(X_t = 1) = 0.5

rw_dois <- function(domain, prob, n){

  sample(x =  domain, size = n, replace = TRUE, prob = prob)

}

rw_dois(domain = c(-1,1), prob = c(0.5,0.5), n = 50)
rw_dois(domain = c(-1,1), prob = c(0.5,0.5), n = 100)
rw_dois(domain = c(-1,1), prob = c(0.5,0.5), n = 200)


