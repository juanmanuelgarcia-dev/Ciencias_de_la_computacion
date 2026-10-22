Algoritmo batallaNaval
	Definir tablero,turno,numJugador,disparos,filaTablero,columnaTablero,puntos,barcosDobles,barcosSimples,barcosTotales Como Entero
	definir coordenada Como Caracter
	definir ganador Como Logico
	disparos <- 8
	barcosDobles <- 0
	barcosSimples <- 0
	puntos <- 0
	Dimension tablero(3,4)
	inicializarMatriz(tablero)
	agregarBarcosSimples(tablero)
	agregarBarcosDobles(tablero)
	
	repetir
		ganador <- Falso
		coordenada = traducirCoordenada(tablero)
		filaTablero = traducirFila(coordenada)
		columnaTablero = ConvertirANumero((Subcadena(coordenada,1,1)))
		disparos <- disparos - 1
		si tablero(filaTablero,columnaTablero) = 0 Entonces
			Escribir "Agua"
			tablero(filaTablero,columnaTablero) <- -1
		SiNo
			si tablero(filaTablero,columnaTablero) = -1 Entonces
				Escribir "Repetido"
			SiNo
				si tablero(filaTablero,columnaTablero) = 1 Entonces
					Escribir "Hundido"
					tablero(filaTablero,columnaTablero) <- -1
					barcosSimples <- barcosSimples + 1
					puntos <- puntos + 1
				SiNo
					si tablero(filaTablero,columnaTablero) = 2 y barcosDobles = 0 Entonces
						Escribir "Averiado"
						barcosDobles <- barcosDobles + 1
						puntos <- puntos + 1
					SiNo
						si tablero(filaTablero,columnaTablero) = 2 y barcosDobles = 1 Entonces
							Escribir "Hundido"
							tablero(filaTablero,columnaTablero) <- -1
							puntos <- puntos + 2
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		barcosTotales <- barcosDobles + barcosSimples
		si disparos = 0 Entonces
			ganador = Verdadero
		SiNo
			si puntos = 6 Entonces
				ganador = Verdadero
			SiNo
				si barcosTotales = 4 Entonces
					ganador = Verdadero
				FinSi
			FinSi
		FinSi
	Mientras Que ganador = Falso
	si puntos >= 4 Entonces
		Escribir "FELICITACIONES. Gana el atacante"
	SiNo
		Escribir "FELICITACIONES. Gana el defensor"
	FinSi
FinAlgoritmo

SubProceso inicializarMatriz(tablero)
	Definir i,j Como Entero
	para i <- 0 Hasta 2 Hacer
		para j <- 0 Hasta 3 Hacer
			tablero(i,j) <- 0
		FinPara
	FinPara
FinSubProceso

SubProceso agregarBarcosSimples(tablero)
	Definir i,j,fila,columna,barcosSimples Como Entero
	Definir repetirSolicitud Como Logico
	barcosSimples <- 0
	repetir
	repetir
		repetirSolicitud <- Falso
		Escribir "Ingrese la fila que desee: "
		leer fila
		Escribir "Ingrese la columna que desee: "
		Leer columna
		fila <- fila -1
		columna <- columna - 1
		si fila < 0 o fila > 2 o columna < 0 o columna > 3 Entonces
			Escribir "Esas posiciones NO son válidas"
			repetirSolicitud <- Verdadero
		SiNo
			si tablero(fila,columna) <> 0 Entonces
				Escribir "Esa posicion se encuentra ocupada"
				repetirSolicitud <- Verdadero
			FinSi
		FinSi
	Mientras Que repetirSolicitud = Verdadero
	tablero(fila,columna) <- 1
	barcosSimples <- barcosSimples + 1
	Mientras que barcosSimples <> 2
FinSubProceso

SubProceso agregarBarcosDobles(tablero)
	Definir i,j,fila,columna Como Entero
	Definir repetirSolicitud Como Logico
	repetir
		repetirSolicitud <- Falso
		Escribir "Ingrese la fila que desee: "
		leer fila
		Escribir "Ingrese la columna que desee: "
		leer columna
		fila <- fila -1
		columna <- columna - 1
		si fila < 0 o fila > 2 o columna < 0 o columna > 3 Entonces
			Escribir "Esas posiciones NO son válidas"
			repetirSolicitud <- Verdadero
		SiNo
			si tablero(fila,columna) <> 0 Entonces
				Escribir "Esa posicion se encuentra ocupada"
				repetirSolicitud <- Verdadero
			FinSi
		FinSi
	Mientras Que repetirSolicitud = Verdadero
	tablero(fila,columna) <- 2
	segundaPosicionBarcoDoble(tablero,fila,columna)
FinSubProceso

SubProceso segundaPosicionBarcoDoble(tablero,fila,columna)
	Definir posicion Como Entero
	Definir repetirSolicitud Como Logico
	repetir
		repetirSolicitud <- Falso
		Escribir "Ingrese la posicion que desee 1.arriba/2.abajo/3.izquierda./4.derecha: "
		Leer posicion
		si posicion < 1 o posicion > 4 Entonces
			Escribir "Esa opcion no existe"
			repetirSolicitud <- Verdadero
		SiNo
			segun posicion Hacer
				1:
					si fila - 1 < 0 o tablero(fila-1,columna) <> 0 Entonces
						repetirSolicitud <- Verdadero
						Escribir "Esa posicion no es posible"
					FinSi
				2:
					si fila + 1 > 2 o tablero(fila+1,columna) <> 0 Entonces
						repetirSolicitud <- Verdadero
						Escribir "Esa posicion no es posible"
					FinSi
				3:
					si columna - 1 < 0 o tablero(fila,columna-1) <> 0 Entonces
						repetirSolicitud <- Verdadero
						Escribir "Esa posicion no es posible"
					FinSi
				4:
					si columna + 1 > 3 o tablero(fila,columna +1) <> 0 Entonces
						repetirSolicitud <- Verdadero
						Escribir "Esa posicion no es posible"
					FinSi
			FinSegun
		FinSi
	Mientras Que repetirSolicitud = Verdadero
	Segun posicion Hacer
		1:
			tablero(fila -1,columna) <- 2
		2:
			tablero(fila + 1,columna) <- 2
		3:
			tablero(fila,columna -1) <- 2
		4:
			tablero(fila,columna + 1) <- 2
	FinSegun
FinSubProceso

Funcion pedirCoordenada <- traducirCoordenada(tablero)
	definir filaTabla,pedirCoordenada,coordenada Como Caracter
	definir columnaTabla,filaCorrespondiente Como Entero
	Definir repetirSolicitud Como Logico
	repetir
		repetirSolicitud = Falso
		Escribir "Ingrese la coordenada que desee: "
		leer coordenada
		filaTabla <- Subcadena(coordenada,0,0)
		columnaTabla <- ConvertirANumero((Subcadena(coordenada,1,1)))
		si filaTabla <> "A" y filaTabla <> "B" y filaTabla <> "C" Entonces
			Escribir "Esa fila no pertenece"
			repetirSolicitud = Verdadero
		SiNo
			si columnaTabla < 1 o columnaTabla > 4 Entonces
				Escribir "Esa columna no pertenece"
				repetirSolicitud = Verdadero
			FinSi
		FinSi
	Mientras Que repetirSolicitud = Verdadero
FinSubProceso

Funcion traduccion <- traducirFila(coordenada)
	definir traduccion Como entero
	Definir filaTabla Como Caracter
	filaTabla <- Subcadena(coordenada,0,0)
	segun filaTabla Hacer
		"A":
			traduccion <- 0
		"B":
			traduccion <- 1
		"C":
			traduccion <- 2
	FinSegun
FinFuncion

	