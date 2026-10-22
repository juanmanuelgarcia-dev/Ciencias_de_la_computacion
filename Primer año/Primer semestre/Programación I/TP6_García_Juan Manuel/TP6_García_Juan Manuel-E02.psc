Algoritmo perfecto
	Definir numeroPerfecto Como Entero
	numeroPerfecto <- primerNumero(2)
FinAlgoritmo

//Funcion para detectar números perfectos
Funcion numPerfecto <- primerNumero(dividendo)
	Definir contadorNumPerfecto, divisor, sumaDivisores,numPerfecto Como Entero
	contadorNumPerfecto <- 0
	Mientras contadorNumPerfecto < 3 Hacer
		sumaDivisores <- 0
		Para divisor <- 1 Hasta dividendo - 1 Hacer
			Si dividendo % divisor = 0 Entonces
				sumaDivisores <- sumaDivisores + divisor
			FinSi
		FinPara
		Si sumaDivisores = dividendo Entonces
			Escribir dividendo, " es un número perfecto"
			contadorNumPerfecto <- contadorNumPerfecto + 1
		FinSi
		dividendo <- dividendo + 1
	FinMientras
	numPerfecto <- dividendo
FinFuncion