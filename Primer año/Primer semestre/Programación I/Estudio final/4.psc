Algoritmo linea
	definir ficha,tablero Como Caracter
	definir numJugador,cantidadJugada Como Entero
	definir juegoTerminado,ganador Como Logico
	
	Dimension tablero(6,7)
	cantidadJugada <- 0
	ganador <- Falso
	inicializarTablero(tablero)
	
	Mostrar "El juego comienza"
	Escribir ""
	MostrarTablero(tablero)
	Repetir
		cantidadJugada <- cantidadJugada + 1
		juegoTerminado <- Verdadero
		
		si existeLugarTablero(tablero) = Verdadero Entonces
			juegoTerminado <- Falso
			numJugador <- 1
			ficha <- "B"
			si cantidadJugada % 2 = 0 Entonces
				numJugador <- 2
				ficha <- "R"
			FinSi
			Mostrar "Turno del jugador ",numjugador
			solicitarPosicionEnElTablero(tablero,ficha)
			MostrarTablero(tablero)
			si existeCuatroLinea(tablero,ficha) = Verdadero Entonces
				ganador <- Verdadero
				Escribir ""
				Escribir "FELICITACIONES"
				Escribir "Jugador N° ",numJugador," formó 4 en linea"
				Escribir ""
			FinSi
		FinSi
		si cantidadJugada = 4 Entonces
			si ganador = Verdadero Entonces
				juegoTerminado = Verdadero
			FinSi
		FinSi
	Mientras Que juegoTerminado = Falso
FinAlgoritmo

SubProceso inicializarTablero(tablero)
	definir i,j Como Entero
	para i <- 0 Hasta 5 Hacer
		para j <- 0 Hasta 6 Hacer
			tablero(i,j) <- "L"
		FinPara
	FinPara
FinSubProceso

SubProceso MostrarTablero(tablero)
	definir i,j Como Entero
	para i <- 0 Hasta 5 Hacer
		para j <- 0 Hasta 6 Hacer
			Escribir Sin Saltar "[" tablero(i,j) "]"
			Escribir Sin Saltar " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso solicitarPosicionEnElTablero(tablero,ficha)
	definir columna Como Entero
	definir repetirSolicitud Como Logico
	Repetir
		repetirSolicitud <- Falso
		Escribir "Ingrese la columna donde desea introducir la ficha(entre 1 y 7): "
		leer columna
		columna <- columna - 1
		si columna < 0 o columna > 6 Entonces
			repetirSolicitud <- Verdadero
		SiNo
			si tablero(0,columna) <> "L" Entonces
				Mostrar "Esa columna se encuentra llena"
				repetirSolicitud <- Verdadero
			FinSi
		FinSi
	Mientras Que repetirSolicitud = Verdadero
	colocarFichaEnPosicion(tablero,ficha,columna)
FinSubProceso

funcion existeLugar <- existeLugarTablero(tablero)
	definir i,j,contador Como Entero
	Definir existeLugar Como Logico
	existeLugar <- Verdadero
	contador <- 0
		para j <- 0 Hasta 6 Hacer
			si tablero(0,j) <> "L" Entonces
				contador <- contador + 1
			FinSi
		FinPara
		si contador = 7 Entonces
			existeLugar <- Falso
		FinSi
FinFuncion

SubProceso colocarFichaEnPosicion(tablero,ficha,columna)
	definir filaAcolocar como entero
	definir continue Como Logico
	filaAcolocar <- 6
	Repetir
		filaAcolocar <- filaAcolocar - 1
		continue <- Falso
		si tablero(filaAcolocar,columna) <> "L" Entonces
			continue <- Verdadero
		FinSi
	Mientras Que continue = Verdadero
	tablero(filaAcolocar,columna) <- ficha
FinSubProceso

funcion cuatroLinea <- existeCuatroLinea(tablero,ficha)
	definir cuatroLinea Como Logico
	cuatroLinea <- Falso
	si verificarFilas(tablero,ficha) = Verdadero o verificarColumnas(tablero,ficha) = Verdadero o verificarDiagonal(tablero,ficha) = Verdadero o verificarContraDiagonal(tablero,ficha) = Verdadero Entonces
		cuatroLinea <- Verdadero
	FinSi
FinFuncion

Funcion cuatroLinea <- verificarFilas(tablero,ficha)
	definir cuatroLinea Como Logico
	definir i,j,contador Como Entero
	contador = 0
	cuatroLinea = Falso
	para i <- 0 Hasta 5 Hacer
		para j <- 0 Hasta 6 Hacer
			si tablero(i,j) = ficha Entonces
				contador <- contador + 1
				si contador = 4 Entonces
					cuatroLinea <- Verdadero
				FinSi
			SiNo
				si tablero(i,j) <> ficha Entonces
					contador <- 0
				FinSi
			FinSi
		FinPara
	FinPara
FinFuncion

Funcion cuatroLinea <- verificarColumnas(tablero,ficha)
	definir cuatroLinea Como Logico
	definir i,j,contador Como Entero
	contador = 0
	cuatroLinea = Falso
	para j <- 0 Hasta 6 Hacer
		para i <- 0 Hasta 5 Hacer
			si tablero(i,j) = ficha Entonces
				contador <- contador + 1
				si contador = 4 Entonces
					cuatroLinea <- Verdadero
				FinSi
			SiNo
				si tablero(i,j) <> ficha Entonces
					contador <- 0
				FinSi
			FinSi
		FinPara
	FinPara
FinFuncion

Funcion cuatroLinea <- verificarDiagonal(tablero,ficha)
	definir cuatroLinea Como Logico
	definir i,j,contador Como Entero
	contador = 0
	cuatroLinea = Falso
	para i <- 0 Hasta 2 Hacer
		para j <- 0 Hasta 3 Hacer
			Si tablero(i,j) = ficha Y tablero(i+1,j+1) = ficha Y tablero(i+2,j+2) = ficha Y tablero(i+3,j+3) = ficha Entonces
				cuatroLinea = Verdadero
			FinSi
		FinPara
	FinPara
FinFuncion

Funcion cuatroLinea <- verificarContraDiagonal(tablero,ficha)
	definir cuatroLinea Como Logico
	definir i,j,contador Como Entero
	contador = 0
	cuatroLinea = Falso
	Para i <- 0 Hasta 2 Hacer
        Para j <- 3 Hasta 6 Hacer
			Si tablero(i,j) = ficha Y tablero(i+1,j-1) = ficha Y tablero(i+2,j-2) = ficha Y tablero(i+3,j-3) = ficha Entonces
				cuatroLinea = Verdadero
			FinSi
		FinPara
	FinPara
FinFuncion

	