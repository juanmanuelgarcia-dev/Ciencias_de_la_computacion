Algoritmo rio
	definir fila,columna,puntos,jugada,filaJugador,columnaJugador,columnaPiedra,filaPiedra,i Como Entero
	Definir continuarJuego,nivel,tablero Como Caracter
	Definir ahogado Como Logico
	Repetir
		ahogado <- Falso
		jugada <- 0
		columnaPiedra <- 0
		continuarJuego <- "N"
		
		Repetir
			Escribir "Ingrese el nivel que desea jugar(D. Dificil;I. Intermedio; F. Facil): "
			leer nivel
		Mientras Que nivel <> "D" y nivel <> "I" y nivel <> "F"
		segun nivel Hacer
			"D":
				fila <- 8
				columna <- 10
				puntos <- 200
			"I":
				fila <- 5
				columna <- 6
				puntos <- 150
			"F":
				fila <- 3
				columna <- 4
				puntos <- 100
		FinSegun
		filaPiedra <- fila-1
		filaJugador <- fila -1
		Dimension tablero(fila,columna)
		inicializarTablero(tablero,fila,columna)
		i <- Aleatorio(0,columna-1)
		colocarPiedraAleatoria(tablero,filaPiedra,columnaPiedra,1,i)
		Repetir
			jugada <- jugada + 1
			mostrarMatriz(tablero,fila,columna)
			Repetir
				Escribir "Ingrese la columna donde desea empezar: "
				leer columnaJugador
				columnaJugador <- columnaJugador - 1
			Mientras Que columnaJugador < 0 o columnaJugador > columna - 1
			
			si tablero(filaJugador,columnaJugador) = "A" Entonces
				ahogado <- Verdadero
				Escribir "Perdió se cayó al agua"
			SiNo
				si tablero(filaJugador,columnaJugador) = "PP" Entonces
					colocarPiedrasDiagonales(tablero,fila,columna,columnaPiedra,filaPiedra,i)
					Escribir "Puntaje: ",puntos
					ahogado <- Falso
					filaJugador <- filaJugador -1
					Escribir "Avanza a PP"
					Escribir "Suma 40 puntos"
					puntos <- puntos + 40
				SiNo
					Escribir "Puntaje: ",puntos
					ahogado <- Falso
					Escribir "Avanza a PL"
					Escribir "Resta 30 puntos"
					puntos <- puntos - 30
				FinSi
			FinSi
		Mientras Que ahogado = Falso y puntos > 0 y filaJugador > 0
		si filaJugador = 0 Entonces
			Escribir "Cruzo el río: "
		SiNo
			si puntos = 0 Entonces
				Escribir "Se le termino el puntaje"
			FinSi
		FinSi
		Repetir
			Escribir "Ingrese si desea continuar el juego(S/N): "
			leer continuarJuego
			continuarJuego <- Mayusculas(continuarJuego)
		Mientras Que continuarJuego <> "S" y continuarJuego <> "N"
	Mientras Que continuarJuego = "S"
	
	
	
FinAlgoritmo

SubProceso inicializarTablero(tablero,fila,columna)
	Definir i,j Como Entero
	para i <- 0 Hasta fila - 1 Hacer
		para j <- 0 Hasta columna - 1 Hacer
			tablero(i,j) <- "A"
		FinPara
	FinPara
FinSubProceso

SubProceso colocarPiedraAleatoria(tablero,filaPiedra,columnaPiedra Por Referencia,piedraPesadaAleatoria,i)
	si piedraPesadaAleatoria = 1 Entonces
		tablero(filaPiedra,i) <- "PP"
		columnaPiedra <- i
	SiNo
		tablero(filaPiedra,i) <- "PP"
		columnaPiedra <- i
	FinSi
FinSubProceso

SubProceso mostrarMatriz(tablero,fila,columna)
	Definir i,j Como Entero
	para i <- 0 Hasta fila - 1 Hacer
		para j <- 0 Hasta columna - 1 Hacer
			si tablero(i,j) = "A" Entonces
				Escribir Sin Saltar "[   ]"
			SiNo
				Escribir Sin Saltar "[",tablero(i,j)," ]"
				Escribir Sin Saltar " "
			FinSi
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso colocarPiedrasDiagonales(tablero,fila,columna,columnaPiedra Por Referencia,filaPiedra Por Referencia,i)
	Definir piedraPesadaAleatoria,j Como Entero
	para j <- 0 Hasta columna - 1 Hacer
		si tablero(filaPiedra,j) = "PP" Entonces
			columnaPiedra <- j
		FinSi
	FinPara
	piedraPesadaAleatoria <- Aleatorio(1,2)
	si filaPiedra - 1 > 0 Entonces
		filaPiedra <- filaPiedra - 1
	FinSi
	si columnaPiedra - 1 >= 0 y columnaPiedra + 1 <= columna - 1 Entonces
		si piedraPesadaAleatoria = 1 Entonces
			tablero(filaPiedra,columnaPiedra-1) <- "PP"
			tablero(filaPiedra,columnaPiedra+1) <- "PL"
		SiNo
			tablero(filaPiedra,columnaPiedra+1) <- "PP"
			tablero(filaPiedra,columnaPiedra-1) <- "PL"
		FinSi
	SiNo
		si columnaPiedra-1 >= 0 y columnaPiedra + 1 > columna - 1 Entonces
			i <- columnaPiedra-1
			colocarPiedraAleatoria(tablero,filaPiedra,columnaPiedra,piedraPesadaAleatoria,i)
		SiNo
			i <- columnaPiedra+1
			colocarPiedraAleatoria(tablero,filaPiedra,columnaPiedra,piedraPesadaAleatoria,i)
		FinSi
	FinSi
FinSubProceso




	