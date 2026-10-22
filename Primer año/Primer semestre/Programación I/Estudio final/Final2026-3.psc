Algoritmo expedicion
	definir fila,columna,tablero,filaJugador,columnaJugador como entero
	Definir repetirSolicitud,seguirJugando Como Logico
	Definir respuesta Como Caracter
	
	Repetir
		repetirSolicitud = Falso
		Escribir "Ingrese el orden de la fila de 3 a 15: "
		leer fila
		si fila < 3 o fila > 15 Entonces
			Escribir "Debe ser mayor a 3 y menor a 15: "
			repetirSolicitud = Verdadero
		sino
			si fila % 2 = 0 Entonces
				Escribir "Debe ser un valor impar: "
				repetirSolicitud = Verdadero
			FinSi
		FinSi
	Mientras Que repetirSolicitud = Verdadero
	
	Repetir
		Escribir "Ingrese el orden de la columna: "
		leer columna
	Mientras Que columna < 4 o columna > 20
	Dimension tablero(fila,columna)
	iniciarMatriz(tablero,fila,columna)
	filaJugador <- fila-1
	columnaJugador <- columna-1
	tablero(filaJugador,columnaJugador) <- -1
	MostrarMatriz(tablero,fila,columna)
	
	repetir
		brujulaDeExpedicion(tablero,fila,columna,filaJugador,columnaJugador)
		MostrarMatriz(tablero,fila,columna)
		repetir
			Escribir "Desea continuar: "
			leer respuesta
			si respuesta = "S" Entonces
				seguirJugando = Verdadero
			sino
				si respuesta = "N" Entonces
					seguirJugando = Falso
				FinSi
			FinSi
		Mientras Que respuesta <> "S" y respuesta <> "N"
	Mientras Que seguirJugando = Verdadero
FinAlgoritmo

SubProceso iniciarMatriz(tablero,fila,columna)
	definir i,j,suma Como Entero
	suma <- 0
	para i <- fila-1 Hasta 0 Con Paso -1 Hacer
		si i % 2 = 0 Entonces
			para j <- columna - 1 Hasta 0 Con Paso -1 Hacer
				tablero(i,j) <- suma
				suma <- suma + 1
			FinPara
		SiNo
			para j <- 0 Hasta columna-1 Hacer
				tablero(i,j) <- suma
				suma <- suma + 1
			FinPara
		FinSi
	FinPara
FinSubProceso

SubProceso MostrarMatriz(tablero,fila,columna)
	definir i,j Como Entero
	para i <- 0 Hasta fila - 1 Hacer
		para j <- 0 Hasta columna - 1 Hacer
			si tablero(i,j) = -1 Entonces
				Escribir Sin Saltar "A"
			SiNo
				Escribir Sin Saltar tablero(i,j)
			FinSi
			Escribir Sin Saltar " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso brujulaDeExpedicion(tablero,fila,columna,filaJugador Por Referencia,columnaJugador Por Referencia)
	definir brujula,i Como Entero
	brujula <- Aleatorio(1,6)
	Escribir "Brújula: ", brujula
	Escribir ""
	para i <- 0 Hasta brujula -1 Hacer
		si (filaJugador % 2) = 0 Entonces
			columnaJugador <- columnaJugador - 1
			si columnaJugador < 0 Entonces
				filaJugador <- filaJugador - 1
				columnaJugador <- 0
			FinSi
		SiNo
			columnaJugador <- columnaJugador + 1
            Si columnaJugador > columna - 1 Entonces
                filaJugador <- filaJugador - 1
                columnaJugador <- columna - 1
            FinSi
        FinSi
    FinPara
	posicion(tablero,fila,columna,filaJugador,columnaJugador)
	iniciarMatriz(tablero, fila, columna)
    tablero(filaJugador, columnaJugador) <- -1
FinSubProceso
SubProceso posicion(tablero,fila,columna,filaJugador Por Referencia,columnaJugador Por Referencia)
	Definir j Como Entero
	Si (filaJugador + columnaJugador) % 2 = 0  Entonces
		Para j <- 1 Hasta 2 Hacer
			si (filaJugador % 2) = 0 Entonces
				columnaJugador <- columnaJugador - 1
				si columnaJugador < 0 Entonces
					filaJugador <- filaJugador - 1
					columnaJugador <- 0
				FinSi
			SiNo
				columnaJugador <- columnaJugador + 1
				Si columnaJugador > columna - 1 Entonces
					filaJugador <- filaJugador - 1
					columnaJugador <- columna - 1
				FinSi
			FinSi
		FinPara
	SiNo
		
	FinSi

FinSubProceso

	