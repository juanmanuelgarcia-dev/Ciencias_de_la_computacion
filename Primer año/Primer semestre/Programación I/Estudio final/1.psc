Algoritmo ej1
	definir ficha,tablero Como caracter
	definir numJugador,cantidadJugada Como Entero
	definir juegoTerminado,ganador Como Logico
	
	Dimension tablero(3,3)
	
	cantidadJugada <- 0
	ganador <- Falso
	inicializarElTablero(tablero)
	
	Mostrar "El juego comienza"
	Mostrar ""
	MostrarTablero(tablero)
	
	Repetir
		cantidadJugada = cantidadJugada + 1
		juegoTerminado <- Verdadero
		
		si existeLugarEnElTablero(tablero) = Verdadero Entonces
			juegoTerminado <- Falso
			numJugador = 1
			ficha = "X"
			si cantidadJugada % 2 = 0 Entonces

				numJugador = 2
				ficha = "O"
			FinSi
			Mostrar "TURNO del jugador número ",numJugador
			solicitarPosicionEnTablero(tablero,ficha)
			MostrarTablero(tablero)
			Si existeTateti(tablero, ficha) = Verdadero Entonces
				ganador <- Verdadero
				Escribir ""
				Escribir "FELICITACIONES"
				Escribir "Jugador N° ",numJugador," formó tateti"
				Escribir ""
			FinSi
		FinSi
		
		si cantidadJugada = 2 Entonces
			si ganador = Verdadero Entonces
				juegoTerminado = Verdadero
			FinSi
			cantidadJugada = 0
		FinSi
	Mientras Que juegoTerminado = Falso
	
	
FinAlgoritmo

SubProceso inicializarElTablero(tablero)
	definir i,j Como Entero
	para i <- 0 Hasta 2 Hacer
		para j <- 0 Hasta 2 Hacer
			tablero(i,j) <- ""
		FinPara
	FinPara
FinSubProceso

SubProceso MostrarTablero(tablero)
	definir i,j Como Entero
	para i <- 0 Hasta 2 Hacer
		para j <- 0 Hasta 2 Hacer
			Escribir Sin Saltar "[" tablero(i,j) "]"
			Escribir Sin Saltar " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

funcion existeLugar <- existeLugarEnElTablero(tablero)
	definir i,j Como Entero
	Definir existeLugar Como Logico
	existeLugar <- Falso
	para i <- 0 Hasta 2 Hacer
		para j <- 0 Hasta 2 Hacer
			si tablero(i,j) = "" Entonces
				existeLugar <- Verdadero
			FinSi
		FinPara
	FinPara
FinFuncion

SubProceso solicitarPosicionEnTablero(tablero,ficha)
	definir fila,columna Como entero
	definir repetirSolicitud Como Logico
	Repetir
		Escribir "Ingrese la posición en el tablero para su ficha ",ficha
		Escribir "La fila y columna debe ser menor a 3 y mayor a cero"
		Escribir ""
		Escribir "Ingrese una fila: "
		leer fila
		Escribir "Ingrese una columna: "
		leer columna
		repetirSolicitud <- Falso
		si fila < 1 o fila > 3 o columna < 1 o columna > 3 Entonces
			repetirSolicitud <- Verdadero
			Escribir "La fila y columna debe ser menor a 3 y mayor a cero"
		SiNo
			si tablero(fila-1, columna-1) Entonces
				repetirSolicitud <- Verdadero
				Escribir "Esa posición se encuentra ocupada"
			SiNo
				tablero(fila-1,columna-1) = ficha
			FinSi
		FinSi
	Mientras Que repetirSolicitud = Verdadero
FinSubProceso

funcion tateti <- existeTateti(tablero,ficha)
	definir tateti Como Logico
	tateti <- Falso
	
	si verificarFilas(tablero, ficha) = Verdadero o verificarColumnas(tablero, ficha) = Verdadero o verificarDiagonalPrincipal(tablero, ficha) = Verdadero o verificarDiagonalSecundaria(tablero, ficha) = Verdadero Entonces
		tateti <- Verdadero
	FinSi
FinFuncion

Funcion tateti <- verificarFilas(tablero, ficha)
	definir tateti Como Logico
	definir i,j,contador Como Entero
	contador = 0
	tateti = Falso
	para i <- 0 Hasta 2 Hacer
		para j <- 0 Hasta 2 Hacer
			si tablero(i,j) = ficha Entonces
				contador <- contador + 1
			FinSi
		FinPara
		si contador = 3 Entonces
			tateti <- Verdadero
			contador <- 0
		FinSi
	FinPara
FinFuncion

Funcion tateti <- verificarColumnas(tablero, ficha)
	definir tateti Como Logico
	definir i,j,contador Como Entero
	contador = 0
	tateti = Falso
	para i <- 0 Hasta 2 Hacer
		para j <- 0 Hasta 2 Hacer
			si tablero(j,i) = ficha Entonces
				contador <- contador + 1
			FinSi
		FinPara
		si contador = 3 Entonces
			tateti <- Verdadero
			contador <- 0
		FinSi
	FinPara
FinFuncion

funcion tateti <- verificarDiagonalPrincipal(tablero, ficha)
	definir tateti Como Logico
	definir i,contador Como Entero
	contador = 0
	tateti = Falso
	para i <- 0 Hasta 2 Hacer
			si tablero(i,i) = ficha Entonces
				contador <- contador + 1
			FinSi
		FinPara
		si contador = 3 Entonces
			tateti <- Verdadero
			contador <- 0
		FinSi
FinFuncion

funcion tateti <- verificarDiagonalSecundaria(tablero, ficha)
	definir tateti Como Logico
	definir i,contador Como Entero
	contador = 0
	tateti = Falso
	para i <- 0 Hasta 2 Hacer
		si tablero(i,2 - i) = ficha Entonces
			contador <- contador + 1
		FinSi
	FinPara
	si contador = 3 Entonces
		tateti <- Verdadero
		contador <- 0
	FinSi
FinFuncion
	