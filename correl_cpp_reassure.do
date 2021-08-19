*Este el código para correr las correlaciones rank-biserial entre una variable
*binaria y una variable ordinal. Es más apropiada que una correlación 
*point-biserial. Esta última es más apropiada para correlaciones entre
*una variable continúa y una variable nominal. 

*Primero cargo la base de datos:
use "C:\Users\Dell\Documents\elcriminologo\MMA2018.dta", replace

*Aquí el código, en el cual primero se incluye la variable dicotómica(binaria) 
*y después la ordinal. En este caso es correlación entre "sentirse seguro" y
*"confianza del 0 al 10 en la policía municipal":
somersd p49b p50_1

*Si quisiera utilizar la transformación a distribución Fisher, sería:
somersd p49b p50_1, transf(z) tdist

*Después, correlación entre "sentirse seguro" y "confianza en Fuerza Civil":
somersd p49b p50_2

*Después, correlación entre "sentirse seguro" y "confianza en Policía Federal":
somersd p49b p50_3

*Después, las correlaciones tetrachoric, entre las variables binarias 
*"sentirse seguro" y "confianza en la policía de su vecindario":
tetrachoric p49b p49c, pw stats(rho se obs p)

*Luego, las relaciones entre confianza y cooperación, pero
*mediante correlaciones rank-biserial, para ver la contribución de cada
*corporación a la probabilidad de cooperación.
***Primero, las policías municipales:
somersd p49f p50_1

***Luego Fuerza Civil (Policía Estatal):
somersd p49f p50_2

***Luego la Policía Federal:
somersd p49f p50_3
