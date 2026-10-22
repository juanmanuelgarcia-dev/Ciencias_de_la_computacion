Algoritmo triangulos
	definir cantidadAstericos,cantidadMas,i Como Entero
	cantidadAstericos <- 4
	cantidadMas <- 5
		para i<- 1 Hasta 5 Con Paso 1 Hacer
		Mostrar asteriscos(cantidadAstericos)
		Escribir ""
		Mostrar signomas(cantidadMas)
	FinPara
FinAlgoritmo

//Funcion asterisco
Funcion asterisco <- asteriscos(cantidadAstericos)
	Definir i,j Como Entero
	para i <- cantidadAstericos con paso - 1 Hasta 1 Hacer
		para j <- i hasta 1 Con Paso -1 Hacer
			Escribir "*" Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinFuncion

//Funcion mas
Funcion mas <- signomas(cantidadMas)
	Definir i,j Como Entero
	para i <- cantidadMas con paso - 1 Hasta 1 Hacer
		para j <- i hasta 1 Con Paso -1 Hacer
			Escribir "+" Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinFuncion