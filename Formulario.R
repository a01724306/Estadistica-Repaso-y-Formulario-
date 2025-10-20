#Binomial

#prob densidad SOLO un valor
dbinom(x,size=,prob)

#probabilidad cumulativa de everything up to and including a value
pbinom(x,size=,prob)
# lower.tail= FALSE : greater than x value (calculates more than x so use x-1)
# lower.tail= TRUE : less than x value (just use x)
1-pbinom(x-1,size=,prob=) or check with dbinom

#Hipergeométrica (sin remplazo valor exacto de exitos)

x= exitos buscados
m= exitos en la población
n=fallas en la población
k = tamaño de muestra
#cuando buscas un valor exacto
dhyper(x, m, n, k)
#cuando buscas a lo más 
# lower.tail= FALSE : greater than x value (calculates more than x so use x-1)
phyper(q, m, n, k)
#cuando te dan probabilidad y buscas exitos
qhyper(p, m, n, k)

#Geomterica

#chances of achieving success in independent trials having two possible outcomes
#FIRST success 
#chances de tener x fracasos antes de exito
x=fracasos antes de exito
dgeom(x, prob)
pgeom(q, prob
qgeom(p, prob)



#Binomial Negativa 
#x fracasos antes de UN NUMERO de exitos 

size=numero de exitos buscados
x=numero de fracasos 

dnbinom(x, size, prob)
pnbinom(q, size, prob)
qnbinom(p, size, prob)

#Poisson 

#numero de intervalos en un tiempo= lambda
dpois(x, lambda)
ppois(q, lambda)
qpois(p, lambda)

dpois(x=1, lambda=0.1)
1-ppois(1,0.9)
prob_cero <- dpois(x = 0, lambda = 0.9)^2

#Exponencial 

#numero de tiempo entre intervalos= beta = 1/lambda
dexp(x, rate = 1/lambda)
pexp(q, rate = 1/lambda)
qexp(p, rate = 1/lambda)

#Distribucion Normal 


dnorm(x, mean = , sd = )
pnorm(q=, mean = , sd = )
qnorm(p, mean = , sd = )

#Valor Z asumes distribucion normal 


dnorm(x, mean = , sd = )
pnorm(q=, mean = , sd = )
qnorm(p, mean = , sd = )


#Distribucion muestral de la media 

n=muestra

Z = x_barra - miu / sigma
Error = sigma/sqrt(n) 

Z = p_hat - p /sigma_p_hat
Error=sigma_p_hat= sqrt(p(1-p)/n)
Limite = p +- (sigma_buscado * sigma_p_hat)

#Intervalos de Confianza 

#1. Diferencia de Medias (miu_1 - miu_2)
(x_barra_1 - x_barra_2) +- Z(alpha-1) * sqrt((sigma_1^2 / n1)+(sigma_2^2 / n2)) 

#2. Una proporcion 
p_hat +- Z(alpha-1)*sqrt(p_hat(1-p_hat)/n)

#3. Dos proporciones 
(p1-p2)+- Z(alpha-1)* sqrt((p1(1-p1)/n1)+(p2(1-p2)/n2)
                           
#Pruebas de Hipotesis 
