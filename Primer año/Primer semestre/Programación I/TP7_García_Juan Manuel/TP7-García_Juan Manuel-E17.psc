Algoritmo batallaNavala
	definir tablero Como Entero
	Dimension tablero(3,4)
	
	ingresarValores(tablero)
	
	intentosAtacante(tablero)
	
FinAlgoritmo

SubProceso ingresarValores(tablero Por Referencia)
	definir i,j,contador2,contador1,numeroFila,numeroColumna Como Entero
	Definir direccion Como Caracter
	contador1 <- 0
	contador2 <- 0
	numeroFila <- 0
	Repetir
		Escribir "Bienvenido a la batalla naval defensor debe ubicar dos barcos simples(1) y uno doble(dos 2) de manera contigua"
		Escribir ""
		para i <- 0 hasta 2 Hacer
			numeroFila <- numeroFila + 1
			numeroColumna <- 0
			para j <- 0 Hasta 3 Hacer
				numeroColumna <- numeroColumna + 1
				Escribir "Ingrese un barco doble(dos 2) y dos simples(dos unos) y 0 si la posicion esta vacia en la fila ",numeroFila," y columna ",numeroColumna,": "
				leer tablero(i,j)
				si tablero(i,j) = 2 Entonces
					contador2 <- contador2 + 1
					Escribir "Ingrese la direccion en la que desea el barco doble H(horizontal o V(vertical):"
					leer direccion
					si direccion = "H" Entonces
						tablero(i,j-1) <- 2
					SiNo
						si direccion = "V" Entonces
							tablero(i-1,j) <- 2
						FinSi
					FinSi
				SiNo
					si tablero(i,j) = 1 Entonces
						contador1 <- contador1 + 1
					FinSi
				FinSi
				Mientras tablero(i,j) <> 0 y tablero(i,j) <> 1 y tablero(i,j) <> 2 o contador1 > 2 o contador2 > 2 Hacer
					Escribir "Ingrese un barco doble(dos 2) y dos simples(dos unos) o 0 si la posicion esta vacia(si o si),en la fila ",numeroFila," y columna ",numeroColumna,": "
					leer tablero(i,j)
					si contador2 > 2 Entonces
						contador2 <- contador2 - 1
					SiNo
						si contador1 > 2 Entonces
							contador1 <- contador1 - 1
						FinSi
					FinSi
				FinMientras
			FinPara
		FinPara
	Mientras Que contador1 <> 2 y contador2 <> 2
FinSubProceso

SubProceso intentosAtacante(tablero)
	Definir filaLetra Como Caracter
	Definir i,j,disparos,columna,contadorHundido,contador2,contadorTotal,puntos,puntajeMinimoParaGanar Como Entero
	
	puntos <- 0
	contadorHundido <- 0
	disparos <- 8
	contador2 <- 0
	contadorTotal <- 0
	puntajeMinimoParaGanar <- 5
		Repetir
			Escribir "Ingrese fila (A,B,C): "
			Leer filaLetra
			
			Escribir "Ingrese columna (1-4): "
			Leer columna
			
			Segun filaLetra Hacer
				"A":
					i <- 0
				"B":
					i <- 1
				"C":
					i <- 2
			FinSegun
			
			j <- columna - 1
			si tablero(i,j) = 0 Entonces
				tablero(i,j) <- 4
				Mostrar "Agua"
				disparos <- disparos - 1
				Mostrar "Te quedan ",disparos," disparos"
				Mostrar "LLevas ",puntos," puntos"
			SiNo
				si tablero(i,j) = 1 Entonces
					Mostrar "Hundido"
					tablero(i,j) <- 3
					contadorHundido <- contadorHundido + 1
					disparos <- disparos - 1
					Mostrar "Te quedan ",disparos," disparos"
					puntos <- puntos + 1
					Mostrar "LLevas ",puntos," puntos"
				sino
					si tablero(i,j) = 2 Entonces
						contador2 <- contador2 + 1
							si contador2 = 1 Entonces
								Mostrar "Averiado"
								disparos <- disparos - 1
								Mostrar "Te quedan ",disparos," disparos"
								tablero(i,j) <- 3
								puntos <- puntos + 2
								Mostrar "LLevas ",puntos," puntos"
							SiNo
								Mostrar "Hundido"
								disparos <- disparos - 1
								Mostrar "Te quedan ",disparos," disparos"
								tablero(i,j) <- 3
								puntos <- puntos + 2
								Mostrar "LLevas ",puntos," puntos"
							FinSi
						sino
							si tablero(i,j) = 3 o tablero(i,j) = 4 Entonces
								Mostrar "Disparo repetido"
								disparos <- disparos - 1
								Mostrar "Te quedan ",disparos," disparos"
							FinSi
						FinSi
					FinSi
				FinSi
			contadorTotal <- contador2 + contadorHundido
		Mientras Que disparos <> 0 o contadorTotal <> 4
		si puntajeMinimoParaGanar <= puntos Entonces
			Mostrar "El atacante gana"
		SiNo
			Mostrar "El defensor gana"
		FinSi
FinSubProceso

