Algoritmo temperatura
	definir tablero,fila,columna,orden Como Entero
	definir repetirSolicitud Como Logico
	Repetir
		Escribir "Ingrese el orden del tablero: "
		leer orden
	Mientras Que orden < 3 o orden > 9
	
	Dimension tablero(orden,orden)
	iniciarMatriz(tablero,orden)
	
	Repetir
		repetirSolicitud <- Falso
		Escribir "Ingrese la fila del sensor: "
		leer fila
		Escribir "Ingrese la columna del sensor: "
		leer columna
		fila <- fila - 1
		columna <- columna - 1
		si fila < 0 o fila > orden-1 o columna < 0 o columna > orden-1 Entonces
			Escribir "Esos valores no son posibles"
			repetirSolicitud <- Verdadero
		SiNo
			si tablero(fila,columna) = 0 Entonces
				Escribir "Su sensor no es posible"
				repetirSolicitud <- Verdadero
			FinSi
		FinSi
	Mientras Que repetirSolicitud = Verdadero
	
	MostrarMatriz(tablero,orden)
	
	eliminarTemperaturasAdyacentes(fila,columna,tablero,orden)
	Escribir ""
	Escribir ""
	Escribir ""
	MostrarMatriz(tablero,orden)
	
	compactacionMatriz(fila,columna,tablero,orden)
	Escribir ""
	Escribir ""
	Escribir ""
	MostrarMatriz(tablero,orden)
	
FinAlgoritmo

SubProceso iniciarMatriz(tablero,orden)
	definir i, j Como Entero
	para i <- 0 Hasta orden - 1 Hacer
		para j <- 0 Hasta orden - 1 Hacer
			tablero(i,j) <- Aleatorio(0,99)
		FinPara
	FinPara
	tablero(2,2) <- 4
	tablero(2,3) <- 40
	tablero(3,2) <- 64
	tablero(1,3) <- 8
	tablero(1,2) <- 12
FinSubProceso

SubProceso MostrarMatriz(tablero,orden)
	Definir i,j Como Entero
	para i <- 0 Hasta orden - 1 Hacer
		para j <- 0 Hasta orden - 1 Hacer
			si tablero(i,j) <> -1 Entonces
				Escribir Sin Saltar tablero(i,j) " "
			SiNo
				Escribir Sin Saltar " " " "
			FinSi
		FinPara
		Escribir ""
	FinPara
FinSubProceso

//desbordamiento
SubProceso eliminarTemperaturasAdyacentes(fila,columna,tablero,orden)
	definir i,j Como Entero
		para i <- limiteInferior(fila,orden) Hasta limiteSuperior(fila,orden) Hacer
			para j <- limiteInferior(columna,orden) Hasta limiteSuperior(columna,orden) Hacer
				si no (i = fila y j = columna) Entonces
					si tablero(i,j) % tablero(fila,columna) = 0 Entonces
						tablero(i,j) <- -1
					FinSi
				FinSi
			FinPara
		FinPara
FinSubProceso

//bucle
SubProceso compactacionMatriz(fila,columna,tablero,orden)
	definir i,j,vuelta Como Entero
	vuelta <- 0
	Repetir
		para i <- 0 Hasta orden - 1 Hacer
			para j <- 0 Hasta orden - 1 Hacer
				si tablero(i,j) = -1 Entonces
					si i + 1 < orden -1 Entonces
						tablero(i,j) <- tablero(i + 1,j)
						tablero(i + 1,j) <- -1
					FinSi
				FinSi
			FinPara
		FinPara
		vuelta <- vuelta + 1
	Mientras Que vuelta < orden
FinSubProceso

Funcion limiteInf <- limiteInferior(n,orden)
	definir limiteInf Como Entero
	si n = 0 Entonces
		limiteInf <- 0
	SiNo
		limiteInf <- n -1
	FinSi
FinFuncion

Funcion limiteSup <- limiteSuperior(m,orden)
	Definir limiteSup Como Entero
	si m < orden -1  Entonces
		limiteSup <- m + 1
	SiNo
		limiteSup <- m
	FinSi
FinFuncion

//SubProceso CompactarMatriz(N, matriz)
	//Definir col,fila,pasada Como Entero
	//Para col<-0 Hasta N-1
		//Para pasada<-1 Hasta N
			//Para fila<-0 Hasta N-2
				//Si matriz[fila,col] = -1 Entonces
					//matriz[fila,col] <- matriz[fila+1,col]
				//	matriz[fila+1,col] <- -1
				//FinSi
			//FinPara
		//FinPara
	//FinPara
//FinSubProceso
