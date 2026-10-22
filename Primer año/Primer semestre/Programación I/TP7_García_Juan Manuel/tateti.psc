Algoritmo tateti
	definir tablero,ganador Como Caracter
	definir intentos,i,j,intentosNuevos Como entero
	intentos <- 9
	intentosNuevos <- 0
	dimension tablero(3,3)
	
	validarMatriz(tablero)
	
	Repetir
		
		turnoJugador1(tablero)
		para i <- 0 Hasta 2 Hacer
			Escribir Sin Saltar "[ "
			para j <- 0 Hasta 2 Hacer
				escribir Sin Saltar tablero(i,j)
			FinPara
			Escribir Sin Saltar " ]"
			Escribir ""
		FinPara
		
		turnoJugador2(tablero)
		para i <- 0 Hasta 2 Hacer
			Escribir Sin Saltar "[ "
			para j <- 0 Hasta 2 Hacer
				escribir Sin Saltar tablero(i,j)
			FinPara
			Escribir Sin Saltar " ]"
			Escribir ""
		FinPara
		intentos <- intentos - 2
	Mientras Que intentos > 0
	
	determinarGanador(tablero,ganador)
	
FinAlgoritmo

SubProceso validarMatriz(tablero Por Referencia)
	definir i,j Como Entero
	para i <- 0 Hasta 2
		para j <- 0 Hasta 2 Hacer
			tablero(i,j) <- " "
		FinPara
	FinPara
FinSubProceso

SubProceso turnoJugador1(tablero Por Referencia)
	definir columna,fila Como Entero
	Repetir
		Mostrar "Ingrese una fila entre 0 y 2: "
		leer fila
		Mostrar "Ingrese una columna entre 0 y 2: "
		leer columna
	Mientras Que fila < 0 o fila > 2 y columna < 0 o columna > 2 y tablero(fila,columna) = "O" o tablero(fila,columna) = "X"
	tablero(fila,columna) <- "X"
FinSubProceso

SubProceso turnoJugador2(tablero Por Referencia)
	definir columna,fila Como Entero
	Repetir
		Mostrar "Ingrese una fila entre 0 y 2: "
		leer fila
		Mostrar "Ingrese una columna entre 0 y 2: "
		leer columna
	Mientras Que fila < 0 o fila > 2 y columna < 0 o columna > 2 y tablero(fila,columna) = "O" o tablero(fila,columna) = "X"
	tablero(fila,columna) <- "O"
FinSubProceso

SubProceso determinarGanador(tablero,ganador Por Referencia)
	definir i,j Como Entero
	para i <- 0 Hasta 2 Hacer
		Si tablero(i,0) = tablero(i,1) y tablero(i,2) = tablero(i,0) Entonces
			ganador <- tablero(i,0)
		FinSi
	FinPara
	
	para j <- 0 Hasta 2 Hacer
		si tablero(0,j) = tablero(1,j) y tablero(0,j) = tablero(2,j) Entonces
			ganador <- tablero(0,j)
		FinSi
	FinPara
		si tablero(0,0) = tablero(1,1) y tablero(0,0) = tablero(2,2) Entonces
			ganador <- tablero(0,0)
		SiNo
			si tablero(0,2) = tablero(1,1) y tablero(1,1) = tablero(2,0) Entonces
				ganador <- tablero(1,1)
			FinSi
		FinSi
		
		si ganador = "X" Entonces
			Mostrar "El ganador es el jugador 1"
		SiNo
			si ganador = "O" Entonces
				Mostrar "El ganador es el jugador 2"
			SiNo
				Mostrar "Es un empate"
			FinSi
		FinSi
FinSubProceso
	