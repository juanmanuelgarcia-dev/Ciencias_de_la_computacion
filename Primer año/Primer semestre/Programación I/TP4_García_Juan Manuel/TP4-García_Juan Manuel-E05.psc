Algoritmo primo
	definir numeroIngresado,i,numeroresultado Como Entero
	Definir esPrimo Como Logico
	esPrimo <- Verdadero
	Escribir  "Ingrese un numero entero: "
	leer numeroIngresado
	Para i <- 2 hasta numeroIngresado - 1 Hacer
		si numeroIngresado % i = 0 Entonces
			esPrimo <- Falso
		FinSi
	FinPara
	si esPrimo = Verdadero Entonces
		Mostrar "Es primo"
	SiNo
		Mostrar "No es primo"
	FinSi
FinAlgoritmo