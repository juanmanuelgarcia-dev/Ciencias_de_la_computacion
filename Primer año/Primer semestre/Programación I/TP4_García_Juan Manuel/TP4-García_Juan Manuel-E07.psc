Algoritmo suma
	definir numeroPositivo Como Entero
	definir suma1,suma2,i Como real
	suma1 <- 0
	suma2 <- 0
	escribir "Ingrese un numero entero positivo: "
	Leer numeroPositivo
	Para i <- 1 hasta numeroPositivo Con Paso 1 hacer
		suma1 <- suma1 + i / 2
		suma2 <- suma2 + (i ^ numeroPositivo) / 2
	FinPara
	mostrar "La suma de las fracciones es: ",suma1
	Mostrar "La suma de las fracciones con potencia es: ",suma2
FinAlgoritmo
