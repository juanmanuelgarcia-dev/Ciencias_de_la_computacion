Algoritmo laboratorio
	definir numIngresado,contadorNumerosPrimos,cantidadNumerosIngresados,sumaTotalDivisores, numMayorDivisores,maxDivisores Como Entero
	definir promedio como real
	promedio <- 0
	contadorNumerosPrimos <- 0
	cantidadNumerosIngresados <- 0
	sumaTotalDivisores <- 0
	numMayorDivisores <- 0
	maxDivisores <- 0
	Escribir "Ingrese un número"
	leer numIngresado
	Mientras numIngresado > 0 Hacer
		cantidadNumerosIngresados <- cantidadNumerosIngresados + 1
		si Primo(numIngresado) = Verdadero Entonces
			Mostrar "El número ",numIngresado," es primo"
			contadorNumerosPrimos <- contadorNumerosPrimos + 1
		SiNo
			Mostrar "El número ",numIngresado," no es primo"
		FinSi
		Mostrar "El número ",numIngresado," tiene ",Divisor(numIngresado)," divisores"
		si Divisor(numIngresado) > maxDivisores Entonces
			maxDivisores <- Divisor(numIngresado)
			numMayorDivisores <- numIngresado
		FinSi
		Mostrar "La suma de sus divisores es ",Divsores(numIngresado)
		sumaTotalDivisores <- sumaTotalDivisores + Divsores(numIngresado)
		promedio <- sumaTotalDivisores / cantidadNumerosIngresados
		Escribir "Ingrese un número"
		leer numIngresado
	FinMientras
	Mostrar "Fueron ingresados ",contadorNumerosPrimos," Números primos"
	Mostrar "El numero ",numMayorDivisores," fue el número con mas divisores"
	Mostrar "El promedio de la suma de los divisores fue de ",promedio
FinAlgoritmo

//Función para Números primos
Funcion esPrimo <- Primo(numIngresado)
	Definir esPrimo Como Logico
	Definir i Como Entero
	esPrimo <- Verdadero
	si numIngresado = 2 o numIngresado = 1 Entonces
		esPrimo <- Verdadero
	SiNo
		para i <- 2 Hasta numIngresado - 1 Hacer
			si numIngresado % i = 0 Entonces
				esPrimo <- Falso
			FinSi
		FinPara
	FinSi
FinFuncion

//Funcion para divisores
funcion contadorDivisores <- Divisor(numIngresado)
	Definir contadorDivisores,i Como Entero
	contadorDivisores <- 0
	para i <- 1 Hasta numIngresado Hacer
		si numIngresado % i = 0 Entonces
			contadorDivisores = contadorDivisores + 1
		FinSi
	FinPara
FinFuncion

//Funcion suma de divisores
Funcion sumaDivisores <- Divsores(numIngresado)
	Definir sumaDivisores,i Como Entero
	sumaDivisores <- 0
	para i <- 1 Hasta numIngresado Hacer
		si numIngresado % i = 0 Entonces
			sumaDivisores <- sumaDivisores + i
		FinSi
	FinPara
FinFuncion
	