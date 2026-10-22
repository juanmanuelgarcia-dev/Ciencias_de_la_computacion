Algoritmo numeroPrimo
	definir numeroIngresado,i,contadorPrimo,resto,j Como Entero
	definir esPrimo como logico
	Escribir "Ingrese el numero que desee: "
	leer numeroIngresado
	contadorPrimo <- 0
	para i <- 1 Hasta numeroIngresado con paso 1 Hacer
		esPrimo <- Verdadero
		para j <- 2 Hasta i - 1 con paso 1 Hacer
			resto <- i % j
			si resto = 0 Entonces
				esPrimo <- Falso
			FinSi
		FinPara
		si esPrimo = Verdadero Entonces
			contadorPrimo <- contadorPrimo + 1
		FinSi
	FinPara
	Mostrar "La cantidad de numeros primos desde 1 hasta ",numeroIngresado," es de ",contadorPrimo
FinAlgoritmo
