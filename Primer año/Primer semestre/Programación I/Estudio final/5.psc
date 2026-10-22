//Falta puentes unicamente que no supe donde ponerlo
Algoritmo pirata
	definir tablero Como Caracter
	definir cantidadPasos,filaPirata,filaTesoro,columnaPirata,columnaTesoro Como Entero
	cantidadPasos <- 0
	Dimension tablero(8,8)
	
	Repetir
		filaPirata <- Aleatorio(1,6)
		filaTesoro <- Aleatorio(1,6)
		columnaPirata <- Aleatorio(1,6)
		columnaTesoro <- Aleatorio(1,6)
	Mientras Que filaPirata = filaTesoro y columnaPirata = columnaTesoro
		
	inicializarTablero(tablero,filaPirata,filaTesoro,columnaPirata,columnaTesoro)
	MostrarTablero(tablero)
	Repetir
		solicitarPosicion(tablero,filaPirata,columnaPirata,cantidadPasos)
		actualizarTablero(tablero,filaPirata,filaTesoro,columnaPirata,columnaTesoro)
		MostrarTablero(tablero)
	Mientras Que cantidadPasos < 20 y ganarPremio(tablero,filaPirata,filaTesoro,columnaPirata,columnaTesoro) = Falso y ahogadoTablero(tablero,filaPirata,columnaPirata) = Falso
	si ganarPremio(tablero,filaPirata,filaTesoro,columnaPirata,columnaTesoro) = Verdadero Entonces
		Mostrar "Eureka usted gano"
	SiNo
		si cantidadPasos >= 20 Entonces
			Mostrar "El pirata se cansó y no consiguió el tesoro"
		SiNo
			si ahogadoTablero(tablero,filaPirata,columnaPirata) = Verdadero Entonces
				Mostrar "El pirata se ahogo"
			FinSi
		FinSi
	FinSi
FinAlgoritmo

SubProceso inicializarTablero(tablero,filaPirata Por Referencia,filaTesoro,columnaPirata Por Referencia,columnaTesoro)
	definir i,j Como Entero
	para i <- 0 Hasta 7 Hacer
		para j <- 0 Hasta 7 Hacer
			si i = 0 o i = 7 o j = 0 o j = 7 Entonces
				tablero(i,j) <- "A"
			SiNo
				tablero(i,j) <- " "
			FinSi
		FinPara
	FinPara
	tablero(0,7) <- "P"
	tablero(7,0) <- "P"
	tablero(filaPirata,columnaPirata) <- "D"
	tablero(filaTesoro,columnaTesoro) <- "T"
FinSubProceso

SubProceso MostrarTablero(tablero)
	definir i,j Como Entero
	para i <- 0 Hasta 7 Hacer
		para j <- 0 Hasta 7 Hacer
			Escribir Sin Saltar "[ ",tablero(i,j)," ]"
			Escribir Sin Saltar " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso solicitarPosicion(tablero,filaPirata Por Referencia,columnaPirata Por Referencia,cantidadPasos Por Referencia)
	definir movimiento,movimientoDiagonal,pasos Como Entero
	Definir repetirSolicitud Como Logico
	movimiento <- Aleatorio(1,5)
	si movimiento = 5 Entonces
		movimiento <- Aleatorio(6,9)
	FinSi
	segun movimiento Hacer
		1:
			Escribir "Debe moverse hacia el norte"
		2:
			Escribir "Debe moverse hacia el sur"
		3:
			Escribir "Debe moverse hacia el este"
		4:
			Escribir "Debe moverse hacia el oeste"
		6:
			Escribir "Debe moverse al noreste"
		7:
			Escribir "Debe moverse al noroeste"
		8:
			Escribir "Debe moverse al sureste"
		9:
			Escribir "Debe moverse al suroeste"
	FinSegun
	Repetir
		Escribir "Ingrese la cantidad de pasos que desea moverse(1 a 3): "
		leer pasos
		repetirSolicitud <- Falso
		si pasos < 1 o pasos > 3 Entonces
			repetirSolicitud <- Verdadero
			Escribir "Pasos desde 1 a 3"
		SiNo
            Segun movimiento Hacer
                1: Si filaPirata - pasos < 0 Entonces 
						repetirSolicitud <- Verdadero
					FinSi
                2: Si filaPirata + pasos > 7 
						Entonces repetirSolicitud <- Verdadero
					FinSi
                3: Si columnaPirata + pasos > 7 Entonces 
						repetirSolicitud <- Verdadero
					FinSi
                4: Si columnaPirata - pasos < 0 Entonces
						repetirSolicitud <- Verdadero
					FinSi
                6: Si filaPirata - pasos < 0 o columnaPirata + pasos > 7 Entonces
						repetirSolicitud <- Verdadero
					FinSi
                7: Si filaPirata - pasos < 0 o columnaPirata - pasos < 0 Entonces
						repetirSolicitud <- Verdadero
					FinSi
                8: Si filaPirata + pasos > 7 o columnaPirata + pasos > 7 Entonces
						repetirSolicitud <- Verdadero
					FinSi
                9: Si filaPirata + pasos > 7 o columnaPirata - pasos < 0 Entonces
						repetirSolicitud <- Verdadero
					FinSi
            FinSegun
		FinSi
	Mientras Que repetirSolicitud = Verdadero
	cantidadPasos <- cantidadPasos + pasos
	segun movimiento Hacer
		1:
			filaPirata <- filaPirata - pasos
		2:
			filaPirata <- filaPirata + pasos
		3:
			columnaPirata <- columnaPirata + pasos
		4:
			columnaPirata <- columnaPirata - pasos
		6:
			filaPirata <- filaPirata - pasos
			columnaPirata <- columnaPirata + pasos
		7:
			filaPirata <- filaPirata - pasos
			columnaPirata <- columnaPirata - pasos
		8:
			filaPirata <- filaPirata + pasos
			columnaPirata <- columnaPirata + pasos
		9:
			filaPirata <- filaPirata + pasos
			columnaPirata <- columnaPirata - pasos
	FinSegun
FinSubProceso

Funcion ganador <- ganarPremio(tablero,filaPirata,filaTesoro,columnaPirata,columnaTesoro)
	definir ganador Como Logico
	ganador <- Falso
	si filaPirata = filaTesoro y columnaPirata = columnaTesoro Entonces
		ganador <- Verdadero
	FinSi
FinFuncion

Funcion ahogado <- ahogadoTablero(tablero,filaPirata,columnaPirata)
	definir ahogado Como Logico
	ahogado <- Falso
	si filaPirata = 0 o filaPirata = 7 o columnaPirata = 0 o columnaPirata = 7 Entonces
		ahogado <- Verdadero
	SiNo
		ahogado <- Falso
	FinSi
FinFuncion

SubProceso actualizarTablero(tablero,filaPirata,filaTesoro,columnaPirata,columnaTesoro)
	definir i,j Como Entero
	para i <- 0 Hasta 7 Hacer
		para j <- 0 Hasta 7 Hacer
			si tablero(i,j) = "D" Entonces
				tablero(i,j) <- " "
			FinSi
		FinPara
	FinPara
	tablero(filaPirata,columnaPirata) <- "D"
	tablero(filaTesoro,columnaTesoro) <- "T"
FinSubProceso
	