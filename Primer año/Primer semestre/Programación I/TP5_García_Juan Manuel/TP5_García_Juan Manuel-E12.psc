Algoritmo centro
	definir numeroTotal, centroNumerico,sumaMenor,sumaMayor,j,contadorCentro Como Entero
	contadorCentro <- 0
	centroNumerico <- 1
	Repetir
		sumaMenor <- 0
		para j <- 1 Hasta centroNumerico - 1 con paso 1 Hacer
			sumaMenor <- sumaMenor + j
		FinPara
		sumaMayor <- 0
		j <- centroNumerico + 1
		Mientras sumaMayor < sumaMenor Hacer
			sumaMayor <- sumaMayor + j
			j <- j + 1
		FinMientras
		si sumaMayor = sumaMenor Entonces
			contadorCentro <- contadorCentro + 1
			Escribir "El número ",centroNumerico," es centro numerico"
		FinSi
		centroNumerico <- centroNumerico + 1
	Mientras Que contadorCentro <= 4
FinAlgoritmo
