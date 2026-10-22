Algoritmo juego
	definir tablero,orden,intentos,opciones Como Entero
	Definir terminarJuego Como Logico
	terminarJuego = Falso
	intentos <- 0
	Repetir
		Escribir "Ingrese el orden del tablero: "
		leer orden
	Mientras Que orden < 4 o orden > 8
	Dimension tablero(orden,orden)
	inicializarMatriz(tablero,orden)
	generarPosicionAleatoria(tablero,orden)
	Repetir
		MostrarMatriz(tablero,orden)
		generarUnDosAleatorio(tablero,orden)
		opciones = opcionesMovimiento(tablero,orden)
		segun opciones Hacer
			1:
				movimientoArriba(tablero,orden)
			2:
				movimientoAbajo(tablero,orden)
			3:
				movimientoAlaDerecha(tablero,orden)
			4:
				movimientoAlaIzquierda(tablero,orden)
				
		FinSegun
		intentos <- intentos + 1
		si intentos >= 20 Entonces
			terminarJuego = Verdadero
		sino
			si numeroGanador(tablero,orden) = Verdadero Entonces
				terminarJuego = Verdadero
			FinSi
		FinSi
	Mientras Que terminarJuego = Falso
FinAlgoritmo

SubProceso inicializarMatriz(tablero,orden)
	definir i,j Como Entero
	para i <- 0 Hasta orden - 1 Hacer
		para j <- 0 Hasta orden - 1 Hacer
			tablero(i,j) <- 0
		FinPara
	FinPara
FinSubProceso

SubProceso generarPosicionAleatoria(tablero,orden)
	definir primeraFila,segundaFila,primeraColumna,segundaColumna Como Entero
	Repetir
		primeraColumna <- Aleatorio(0,orden-1)
		primeraFila <- Aleatorio(0,orden-1)
		segundaFila <- Aleatorio(0,orden-1)
		segundaColumna <- Aleatorio(0,orden-1)
	Mientras Que primeraFila = segundaFila y primeraColumna = segundaColumna
	tablero(primeraFila,primeraColumna) <- 2
	tablero(segundaFila,segundaColumna) <- 2
FinSubProceso

Funcion numGanador <- numeroGanador(tablero,orden)
	definir numGanador como logico
	definir i,j Como Entero
	numGanador = Falso
	para i <- 0 Hasta orden - 1 Hacer
		para j <- 0 Hasta orden - 1 Hacer
			si tablero(i,j) = 64 Entonces
				numGanador = Verdadero
			FinSi
		FinPara
	FinPara
FinFuncion

Funcion opciones <- opcionesMovimiento(tablero,orden)
	Definir opciones Como Entero
	Repetir
		Escribir "Ingrese la opcion que desee: "
		Escribir "1. Arriba"
		Escribir "2. Abajo"
		Escribir "3. Derecha"
		Escribir "4. Izquierda"
		leer opciones
	Mientras Que opciones < 1 o opciones > 4
FinFuncion

SubProceso generarUnDosAleatorio(tablero,orden)
	definir primeraFila,primeraColumna Como Entero
	definir repetirSolicitud Como Logico
	Repetir
		repetirSolicitud = Falso
		primeraColumna <- Aleatorio(0,orden-1)
		primeraFila <- Aleatorio(0,orden-1)
		si tablero(primeraFila,primeraColumna) <> 0 Entonces
			repetirSolicitud = Verdadero
		FinSi
	Mientras Que repetirSolicitud = Verdadero
	tablero(primeraFila,primeraColumna) <- 2
FinSubProceso

SubProceso MostrarMatriz(tablero,orden)
	definir i,j Como Entero
	para i <- 0 Hasta orden - 1 Hacer
		para j <- 0 Hasta orden - 1 Hacer
			Escribir Sin Saltar "[ "
			si tablero(i,j) = 0 Entonces
				Escribir Sin Saltar " "
				Escribir Sin Saltar "]"
			SiNo
				Escribir Sin Saltar tablero(i,j)
				Escribir Sin Saltar "]"
			FinSi
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso movimientoAlaDerecha(tablero,orden)
	definir i,j como entero
	Definir repetirMovimiento Como Logico
	para i <- 0 Hasta orden - 1 Hacer
		para j <- 0 Hasta orden - 1 Hacer
			si tablero(i,j) <> 0 Entonces
				repetir
					si j + 1 > orden - 1 Entonces
						repetirMovimiento = Falso
					SiNo
						si tablero(i,j + 1) = 0 Entonces
							tablero(i,j + 1) <- tablero(i,j)
							tablero(i,j) <- 0
							repetirMovimiento = Verdadero
						SiNo
							si tablero(i,j + 1) <> 0 Entonces
								tablero(i,j + 1) <- tablero(i,j) + tablero(i,j + 1)
								tablero(i,j) <- 0
								repetirMovimiento <- Falso
							FinSi
						FinSi
					FinSi
				Mientras Que repetirMovimiento = Verdadero
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso movimientoArriba(tablero,orden)
	definir i,j como entero
	Definir repetirMovimiento Como Logico
	para i <- 0 Hasta orden - 1 Hacer
		para j <- 0 Hasta orden - 1 Hacer
			si tablero(i,j) <> 0 Entonces
				repetir
					si i - 1 < 0 Entonces
						repetirMovimiento = Falso
					SiNo
						si tablero(i-1,j) = 0 Entonces
							tablero(i-1,j) <- tablero(i,j)
							tablero(i,j) <- 0
							repetirMovimiento = Verdadero
						SiNo
							si tablero(i-1,j) <> 0 Entonces
								tablero(i-1,j) <- tablero(i,j) + tablero(i-1,j)
								tablero(i,j) <- 0
								repetirMovimiento <- Falso
							FinSi
						FinSi
					FinSi
				Mientras Que repetirMovimiento = Verdadero
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso movimientoAbajo(tablero,orden)
	definir i,j como entero
	Definir repetirMovimiento Como Logico
	para i <- 0 Hasta orden - 1 Hacer
		para j <- 0 Hasta orden - 1 Hacer
			si tablero(i,j) <> 0 Entonces
				repetir
					si i + 1 > orden -1 Entonces
						repetirMovimiento = Falso
					SiNo
						si tablero(i+1,j) = 0 Entonces
							tablero(i+1,j) <- tablero(i,j)
							tablero(i,j) <- 0
							repetirMovimiento = Verdadero
						SiNo
							si tablero(i+1,j) <> 0 Entonces
								tablero(i+1,j) <- tablero(i,j) + tablero(i+1,j)
								tablero(i,j) <- 0
								repetirMovimiento <- Falso
							FinSi
						FinSi
					FinSi
				Mientras Que repetirMovimiento = Verdadero
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso movimientoAlaIzquierda(tablero,orden)
	definir i,j como entero
	Definir repetirMovimiento Como Logico
	para i <- 0 Hasta orden - 1 Hacer
		para j <- 0 Hasta orden - 1 Hacer
			si tablero(i,j) <> 0 Entonces
				repetir
					si j - 1 < 0 Entonces
						repetirMovimiento = Falso
					SiNo
						si tablero(i,j-1) = 0 Entonces
							tablero(i,j-1) <- tablero(i,j)
							tablero(i,j) <- 0
							repetirMovimiento = Verdadero
						SiNo
							si tablero(i,j-1) <> 0 Entonces
								tablero(i,j-1) <- tablero(i,j) + tablero(i,j-1)
								tablero(i,j) <- 0
								repetirMovimiento <- Falso
							FinSi
						FinSi
					FinSi
				Mientras Que repetirMovimiento = Verdadero
			FinSi
		FinPara
	FinPara
FinSubProceso
	