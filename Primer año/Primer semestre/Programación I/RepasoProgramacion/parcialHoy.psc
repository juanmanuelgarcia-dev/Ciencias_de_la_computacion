Algoritmo costoMaquina
	definir tablero,fila,columna,ordenDelTablero,turnos,Maxturnos Como Entero
	Maxturnos <- 0
	turnos <- 0
	
	Repetir
		Escribir "Ingrese el ordenDelTablero: "
		leer ordenDelTablero
	Mientras Que ordenDelTablero < 4 o ordenDelTablero > 8
	
	Dimension tablero(ordenDelTablero,ordenDelTablero)
	
	Repetir
		Escribir "Ingrese la cantidad de turnos: "
		leer Maxturnos
	Mientras Que Maxturnos < 1
	
	cargarValoresEnLaMatriz(tablero,ordenDelTablero)
	
	Repetir
		
		Repetir
			Escribir "Ingrese la fila que desee: "
			leer fila
		Mientras Que fila < 1 o fila > ordenDelTablero
		Mostrar "El promedio de la fila elegida es: ",CalculaFila(tablero,fila-1,ordenDelTablero)
		valorMenorFila(ordenDelTablero,fila-1,tablero)
		turnos <- turnos + 1
		
		Repetir
			Escribir "Ingrese la columna que desee: "
			leer columna
		Mientras Que columna < 1 o columna > ordenDelTablero
		Mostrar "El promedio de la columna elegida es: ",CalcularColumna(tablero,columna-1,ordenDelTablero)
		turnos <- turnos + 1
		
		valorMayorDeUnaColumna(ordenDelTablero,columna -1,tablero)
		
		MostrarContorno(tablero,ordenDelTablero)
	Mientras Que turnos <  Maxturnos
	
FinAlgoritmo

SubProceso cargarValoresEnLaMatriz(tablero,ordenDelTablero)
	definir i,j Como Entero
	para i <- 0 hasta ordenDelTablero - 1 Hacer
		para j <- 0 Hasta ordenDelTablero - 1 Hacer
			tablero(i,j) <- Aleatorio(1,9)
			Escribir Sin Saltar tablero(i,j)
			Escribir Sin Saltar " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

funcion calcularPromedioFila <- CalculaFila(tablero,fila,ordenDelTablero)
	definir j,sumaTotal Como Entero
	definir calcularPromedioFila como real
	sumaTotal <- 0
	calcularPromedioFila <- 0
	para j <- 0 Hasta ordenDelTablero - 1 Hacer
		sumaTotal <- sumaTotal + tablero(fila,j)
	FinPara
	calcularPromedioFila <- sumaTotal / ordenDelTablero
FinFuncion

Funcion calcularPromedioColumna <- CalcularColumna(tablero,columna,ordenDelTablero)
	definir i,sumaTotal Como Entero
	definir calcularPromedioColumna Como Real
	calcularPromedioColumna <- 0
	sumaTotal <- 0
	para i <- 0 Hasta ordenDelTablero - 1 Hacer
		sumaTotal <- sumaTotal + tablero(i,columna)
	FinPara
	calcularPromedioColumna <- sumaTotal / ordenDelTablero
FinFuncion

SubProceso valorMayorDeUnaColumna(ordenDelTablero,columna,tablero)
	definir i,mayor Como Entero
	mayor <- tablero(0,columna)
	para i <- 1 Hasta ordenDelTablero - 1 Hacer
		si tablero(i,columna) >= mayor Entonces
			mayor <- tablero(i,columna)
		FinSi
	FinPara
	Mostrar "El mayor es ",mayor
FinSubProceso

SubProceso valorMenorFila(ordenDelTablero,fila,tablero)
	definir j,menor Como Entero
	menor <- tablero(fila,0)
	para j <- 1 Hasta ordenDelTablero-1 Hacer
		si tablero(fila,j) <= menor Entonces
			menor <- tablero(fila,j)
		FinSi
	FinPara
	Mostrar "El menor es ",menor
FinSubProceso

SubProceso MostrarContorno(tablero,ordenDelTablero)
	definir i,j Como Entero
	para i <- 0 Hasta ordenDelTablero-1 Hacer
		para j <- 0 Hasta ordenDelTablero - 1 Hacer
			si i = 0 o i = ordenDelTablero -1 o j = 0 o j = ordenDelTablero -1 Entonces
				Escribir Sin Saltar tablero(i,j)
				Escribir Sin Saltar " "
			FinSi
		FinPara
		Escribir ""
	FinPara
FinSubProceso
	