sample(1:6, size = 10, replace = TRUE) # Simula jogar dado 10 vezes

sample(c("sucesso","Falha"), 10, replace = T, prob = c(0.9, 0.1)) # Probabilidade 0.9 por 0.1

sample(c("cara","coroa"), 10, replace = TRUE) # Simula jogar moeda 10 vezes

sample(rep(c("nao","sim"), c(3200, 6800)), size = 10, replace = TRUE) # REP PRODUZ 10.000 VALORES 3200 NAO E 6800 SIM (amostra Aleatoria)

p0 <- 1/2 # moeda balanceada
n = 100:5000
fr = mapply(function(x) sum(rbinom(x, 1, p0))/x, n)
plot(n, fr, ylab = "Frequencia relativa", type = "l")
abline(h = p0, lty = 2, col = "blue")

(sample(1:40,5))

1/prod(40:36) # Calcula o produto de um vetor de numeros

1/choose(60,6) # Probabilidade de se ganhar megasena

dbinom(0:4, size = 4, prob = 0.5) # funcao de probabilidade de massa

pbinom(0:4, size = 4, prob = 0.5) #Funcao de probabilidade acumulada

dbinom(2:4, size = 4, prob = 0.5)

sum(dbinom(2:4, size = 4, prob = 0.5))

1- pbinom(0,size = 4, prob = 0.5)

punif(0.7, min = 0, max = 1)

punif(0.3, min =0, max = 1)

punif(0.7, min = 0, max =1) - punif(0.3, min = 0, max = 1)

randnums = runif(10, min = 0, max = 1)
prop.table(table((randnums > 0.3 & randnums < 0.7)))

x <- seq(-4, 4, 0.1)
plot(x, dnorm(x), type = "l")

curve(dnorm(x), from = -4, to = 4)

x <- 0:50
plot(x, dbinom(x, size = 50, prob = 0.33), type = "h")

#Digamos que seja conhecido que alguma medida biomédica em
#indivíduos saudáveis seja bem descrita por uma distribuição
#normal com uma média de 132 e um desvio padrão de 13.
#Então, se um paciente tem um valor de 160, vamos calcular a
#probabilidade de sua ocorrência na população:

1 - pnorm(160, mean = 132, sd = 13)

#Ou seja, há somente cerca de 1.5% da população em geral que
#tenha este valor ou maior.

#A função pnorm retorna a probabilidade de se obter um valor
#menor do que o seu primeiro argumento em uma distribuição
#normal com a dada média e desvio padrão.

