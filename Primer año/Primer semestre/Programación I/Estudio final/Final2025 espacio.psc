Algoritmo espacio
	definir tablero,fila,columna,filaJugador,columnaJugador Como Entero
	Definir respuesta Como Caracter
	
	filaJugador <- 0
	columnaJugador <- 0
	
	Repetir
		Escribir "Ingrese la cantidad de filas:  "
		leer fila
	Mientras Que fila < 3
	
	Repetir
		Escribir "Ingrese la cantidad de columnas: "
		leer columna
	Mientras Que columna > 7
	Dimension tablero(fila,columna)
	inicializarMatriz(tablero,fila,columna)
	mostrarMatriz(tablero,fila,columna,columnaJugador,filaJugador)
	
	Repetir
		
		tirarDado(fila,columna,filaJugador,columnaJugador,tablero)
		mostrarMatriz(tablero,fila,columna,columnaJugador,filaJugador)
		
		Repetir
			Escribir "Ingrese la respuesta: "
			leer respuesta
			respuesta <- Mayusculas(respuesta)
		Mientras Que respuesta <> "F" y respuesta <> "D"
	Mientras Que respuesta <> "F" y (filaJugador <> fila - 1 o columnaJugador <> 0)
	si respuesta = "F" Entonces
		Escribir "Perdió el juego"
	SiNo
		Escribir "Ganó el juego"
	FinSi
FinAlgoritmo

SubProceso inicializarMatriz(tablero,fila,columna)
	definir i,j,contador Como Entero
	contador <- 1
	para i <- 0 Hasta fila - 1 Hacer
		si i % 2 = 0 Entonces
			para j <- 0 Hasta columna - 1 Hacer
				tablero(i,j) <- contador
				contador <- 1 + contador
			FinPara
		SiNo
			para j <- columna - 1 Hasta 0 con paso - 1 Hacer
				tablero(i,j) <- contador
				contador <- contador + 1
			FinPara
		FinSi
	FinPara
FinSubProceso

SubProceso mostrarMatriz(tablero,fila,columna,columnaJugador,filaJugador)
	Definir i,j Como Entero
	para i <- 0 Hasta fila - 1 Hacer
		para j <- 0 Hasta columna - 1 Hacer
			si filaJugador = i y columnaJugador = j Entonces
				Escribir Sin Saltar "X"
			SiNo
				Escribir Sin Saltar " "
				Escribir Sin Saltar tablero(i,j) 
				Escribir Sin Saltar " "
			FinSi
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso tirarDado(fila,columna,filaJugador Por Referencia,columnaJugador Por Referencia,tablero)
	definir brujula Como Entero
	brujula <- Aleatorio(1,6)
	Escribir "El valor del dado es: ",brujula
	si filaJugador % 2 = 0
		moverDerecha(fila,columna,columnaJugador,filaJugador,brujula)
	sino
		moverIzuierda(fila,columna,columnaJugador,filaJugador,brujula)
	FinSi
	si filaJugador <> fila - 1 Entonces
		si (filaJugador + columnaJugador) % 2 = 0 Entonces
			Escribir "La fila del jugador es: ",filaJugador
			Escribir "La columna del jugador es: ",columnaJugador
			Escribir "La suma es: ",columnaJugador + filaJugador
			Escribir "Suma par avanza tres posicion"
			si filaJugador % 2 = 0
				moverDerecha(fila,columna,columnaJugador,filaJugador,3)
			sino
				moverIzuierda(fila,columna,columnaJugador,filaJugador,3)
			FinSi
		SiNo
			Escribir "La fila del jugador es: ",filaJugador
			Escribir "La columna del jugador es: ",columnaJugador
			Escribir "La suma es: ",columnaJugador + filaJugador
			Escribir "Suma impar retrocede una posicion"
			si filaJugador % 2 = 0
				moverDerecha(fila,columna,columnaJugador,filaJugador,-1)
			sino
				moverIzuierda(fila,columna,columnaJugador,filaJugador,-1)
			FinSi
		FinSi
	FinSi
	
FinSubProceso

SubProceso moverDerecha(fila,columna,columnaJugador por referencia,filaJugador Por Referencia,brujula)
	Definir pasosRestantes Como Entero
	pasosRestantes <- 0
	si filaJugador % 2 = 0
		si columnaJugador + brujula > columna - 1 y filaJugador <> fila - 1 Entonces
			Mientras columnaJugador + 1 <= columna - 1 Hacer
				columnaJugador <- columnaJugador + 1
				pasosRestantes <- pasosRestantes + 1
			FinMientras
			filaJugador <- filaJugador + 1
			columnaJugador <- columnaJugador - (brujula - pasosRestantes - 1)
		sino
			columnaJugador <- columnaJugador + brujula
		FinSi
	FinSi
FinSubProceso

SubProceso moverIzuierda(fila,columna,columnaJugador por referencia,filaJugador Por Referencia,brujula)
	Definir pasosRestantes Como Entero
	pasosRestantes <- 0
	si columnaJugador - brujula < 0 y filaJugador <> fila - 1 Entonces
		Mientras columnaJugador - 1 >= 0 Hacer
			columnaJugador <- columnaJugador - 1
			pasosRestantes <- pasosRestantes + 1
		FinMientras
		filaJugador <- filaJugador + 1
		columnaJugador <- columnaJugador + (brujula - pasosRestantes - 1)
	sino
		si columnaJugador - brujula < 0 y filaJugador = fila - 1 Entonces
			filaJugador <- fila - 1
			columnaJugador <- 2
		SiNo
			columnaJugador <- columnaJugador - brujula
		FinSi
	FinSi
FinSubProceso
	