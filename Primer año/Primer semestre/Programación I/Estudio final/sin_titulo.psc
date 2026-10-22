Algoritmo piramidess
	Definir piramide,orden,cantidadPisos,lado,inicio Como entero
	lado <- 0
	inicio <- 0
	Repetir
		Escribir "Ingrese la cantidad de pisos(3 o 4): "
		leer cantidadPisos
	Mientras Que cantidadPisos < 3 o cantidadPisos > 4
	si cantidadPisos = 3 Entonces
		orden <- 5
	SiNo
		orden <- 7
	FinSi
	Dimension piramide(orden,orden)
	inicializarValores(piramide,orden)
	mostrarPiramide(piramide,orden)
	Repetir
		lado <- lado + 1
		si lado = 1 Entonces
			Escribir "En el lado 1 "
			si calcularPiso(piramide,orden,inicio,0) < calcularPiso(piramide,orden-1,inicio+1,0) Entonces
				Escribir "La suma del piso inferior: ",calcularPiso(piramide,orden,inicio,0)
				Escribir "La suma del piso adyacente: ",calcularPiso(piramide,orden-1,inicio+1,0)
				Escribir "La suma del inferior es menor al doble de la adyacente"
			
			FinSi
		FinSi
		
	Mientras Que lado <> 4
FinAlgoritmo

SubProceso inicializarValores(piramide,orden)
	Definir i,j Como Entero
	para i <- 0 Hasta orden - 1 Hacer
		para j <- 0 Hasta orden - 1 Hacer
			piramide(i,j) <- Aleatorio(1,999)
		FinPara
	FinPara
FinSubProceso

SubProceso mostrarPiramide(piramide,orden)
	Definir i,j Como Entero
	para i <- 0 Hasta orden - 1 Hacer
		para j <- 0 Hasta orden - 1 Hacer
			Escribir Sin Saltar "[ ",piramide(i,j)," ]"
			Escribir Sin Saltar " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

funcion sumaFila <- calcularPiso(piramide,orden,inicio,n)
	Definir i,j,sumaFila Como Entero
	sumaFila <- 0
	para i <- inicio Hasta orden - 1 Hacer
		sumaFila <- sumaFila + piramide(n,i)
	FinPara
FinFuncion
	