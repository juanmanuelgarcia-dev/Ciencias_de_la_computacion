Algoritmo tesoro
	definir tablero como caracter
	Definir filaTesoro,filaPirata,columnaPirata,columnaTesoro,movimiento Como Entero
	Definir terminarJuego,ganador como logico
	Dimension tablero(8,8)
	movimiento <- 0
	Repetir
		filaTesoro <- Aleatorio(1,6)
		columnaPirata <- Aleatorio(1,6)
		columnaTesoro <- Aleatorio(1,6)
		filaPirata <- Aleatorio(1,6)
	Mientras Que filaTesoro = filaPirata y columnaPirata = columnaTesoro
	
	iniciarMatriz(tablero,filaTesoro,columnaPirata,columnaTesoro,filaPirata)
	mostrarMatriz(tablero,filaPirata,columnaPirata,filaTesoro,columnaTesoro)
	
	Repetir
		terminarJuego = Falso
		ganador = Falso
		determinarPosicion(tablero,filaPirata,columnaPirata)
		
		si filaPirata = 0 y columnaPirata = 7 o filaPirata = 7 y columnaPirata = 7 Entonces
			puntePirata(filaPirata,columnaPirata)
		FinSi
		
		si filaPirata = filaTesoro y columnaPirata = columnaTesoro Entonces
			ganador = Verdadero
			terminarJuego = Verdadero
		FinSi
		
		mostrarMatriz(tablero,filaPirata,columnaPirata,filaTesoro,columnaTesoro)
		
		movimiento <- movimiento + 1
		si movimiento = 20 Entonces
			terminarJuego = Verdadero
			ganador = Falso
			Escribir "Se terminaron los intentos"
		FinSi
		si hayAgua(filaPirata,columnaPirata,tablero) = Verdadero Entonces
			terminarJuego = Verdadero
			ganador = Falso
			Escribir "Ahogado"
		FinSi
	Mientras Que terminarJuego = Falso
	si ganador = Verdadero Entonces
		Escribir "Eureka"
	SiNo
		Escribir "El pirata perdió"
	FinSi
FinAlgoritmo

SubProceso iniciarMatriz(tablero,filaTesoro,columnaPirata,columnaTesoro,filaPirata)
	Definir i,j Como Entero
	para i <- 0 Hasta 7 Hacer
		para j <- 0 Hasta 7 Hacer
			si i = 0 o i = 7 o j = 0 o j = 7 Entonces
				tablero(i,j) <- "A"
			SiNo
				tablero(i,j) <- "C"
			FinSi
		FinPara
	FinPara
	tablero(0,7) <- "N"
	tablero(7,0) <- "N"
	tablero(filaTesoro,columnaTesoro) <- "T"
	tablero(filaPirata,columnaPirata) <- "P"
FinSubProceso

SubProceso mostrarMatriz(tablero,filaPirata,columnaPirata,filaTesoro,columnaTesoro)
    Definir i,j Como Entero
    Para i <- 0 Hasta 7 Hacer
        Para j <- 0 Hasta 7 Hacer
            Si i = filaPirata Y j = columnaPirata Entonces
                Escribir Sin Saltar "[P] "
            SiNo
                Si i = filaTesoro Y j = columnaTesoro Entonces
                    Escribir Sin Saltar "[T] "
                SiNo
                    si tablero(i,j) = "A" Entonces
						Escribir Sin Saltar "[A] "
					SiNo
						si tablero(i,j) = "N" Entonces
                            Escribir Sin Saltar "[N] "
                        SiNo
                            Escribir Sin Saltar "[ ] "
						FinSi
					FinSi
                FinSi
            FinSi
        FinPara
        Escribir ""
    FinPara
FinSubProceso


SubProceso determinarPosicion(tablero,filaPirata Por Referencia,columnaPirata Por Referencia)
	definir pasos,posicion,posicionDiagonal Como Entero
	posicion <- Aleatorio(1,5)
	si posicion <> 5 Entonces
		segun posicion Hacer
			1:
				Escribir "Debe moverse hacia el norte"
				pasos = determinarPosicionPasos(filaPirata,posicion)
				tablero(filaPirata,columnaPirata) <- "C"
				filaPirata <- filaPirata - pasos
			2:
				Escribir "Debe moverse hacia el sur"
				pasos = determinarPosicionPasos(filaPirata,posicion)
				tablero(filaPirata,columnaPirata) <- "C"
				filaPirata <- filaPirata + pasos
			3:
				Escribir "Debe moverse hacia el este"
				pasos = determinarPosicionPasos(columnaPirata,posicion)
				tablero(filaPirata,columnaPirata) <- "C"
				columnaPirata <- columnaPirata + pasos
			4:
				Escribir "Debe moverse hacia el oeste"
				pasos = determinarPosicionPasos(columnaPirata,posicion)
				tablero(filaPirata,columnaPirata) <- "C"
				columnaPirata <- columnaPirata - pasos
		FinSegun
	SiNo
		posicionDiagonal <- Aleatorio(6,9)
		Segun posicionDiagonal Hacer
			6:
				Escribir "Debe moverse hacia el sureste"
				pasos = determinarPasosDiagonal(filaPirata,columnaPirata,posicionDiagonal)
				tablero(filaPirata,columnaPirata) <- "C"
				filaPirata <- filaPirata + pasos
				columnaPirata <- columnaPirata + pasos
			7:
				Escribir "Debe moverse hacia el noreste"
				pasos = determinarPasosDiagonal(filaPirata,columnaPirata,posicionDiagonal)
				tablero(filaPirata,columnaPirata) <- "C"
				filaPirata <- filaPirata - pasos
				columnaPirata <- columnaPirata + pasos
			8:
				Escribir "Debe moverse hacia el suroeste"
				pasos = determinarPasosDiagonal(filaPirata,columnaPirata,posicionDiagonal)
				tablero(filaPirata,columnaPirata) <- "C"
				filaPirata <- filaPirata + pasos
				columnaPirata <- columnaPirata - pasos
			9:
				Escribir "Debe moverse hacia el noroeste"
				pasos = determinarPasosDiagonal(filaPirata,columnaPirata,posicionDiagonal)
				tablero(filaPirata,columnaPirata) <- "C"
				filaPirata <- filaPirata - pasos
				columnaPirata <- columnaPirata - pasos
		FinSegun
	FinSi
FinSubProceso

Funcion pasos <- determinarPosicionPasos(n,posicion)
	Definir pasos Como Entero
	definir repetirSolicitud Como Logico
	Repetir
		repetirSolicitud = Falso
		Escribir "Ingrese la cantidad de pasos de 1 a 3: "
		leer pasos
		si pasos < 1 o pasos > 3 Entonces
			Escribir "No es posible ingresar esa cantidad: "
			repetirSolicitud = Verdadero
		SiNo
			si posicion = 1 o posicion = 3 Entonces
				si n + pasos > 7
					Escribir "No se puede ingresar esa cantidad ya que se sale del tablero: "
				SiNo
					si n - pasos < 0 Entonces
						Escribir "No se puede ingresar esa cantidad ya que se sale del tablero: "
					FinSi
				FinSi
			FinSi
		FinSi
	Mientras Que repetirSolicitud = Verdadero
FinFuncion

funcion pasosDiagonal <- determinarPasosDiagonal(n,m,posicionDiagonal)
	definir pasosDiagonal Como Entero
	Definir repetirSolicitud Como Logico
	Repetir
		repetirSolicitud = Falso
		Escribir "Ingrese la cantidad de pasos de 1 a 3: "
		leer pasosDiagonal
		si pasosDiagonal < 0 o pasosDiagonal > 3 Entonces
			repetirSolicitud = Verdadero
			Escribir "No se puede ingresar esa cantidad de pasos"
		SiNo
			si posicionDiagonal = 6 Entonces
				si n + pasosDiagonal > 7 o m + pasosDiagonal > 7 Entonces
					Escribir "No se puede ingresar esa cantidad ya que se sale del tablero"
					repetirSolicitud = Verdadero
				FinSi
			SiNo
				si posicionDiagonal = 7 Entonces
					si n - pasosDiagonal < 0 o m + pasosDiagonal > 7 Entonces
						Escribir "No se puede ingresar esa cantidad ya que se sale del tablero"
						repetirSolicitud = Verdadero
					FinSi
				SiNo
					si posicionDiagonal = 8 Entonces
						si n + pasosDiagonal > 7 o m - pasosDiagonal < 0 Entonces
							Escribir "No se puede ingresar esa cantidad ya que se sale del tablero"
							repetirSolicitud = Verdadero
						FinSi
					SiNo
						si n - pasosDiagonal < 0 o m - pasosDiagonal < 0 Entonces
							Escribir "No se puede ingresar esa cantidad ya que se sale del tablero"
							repetirSolicitud = Verdadero
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	Mientras Que repetirSolicitud = Verdadero
FinFuncion

SubProceso puntePirata(filaPirata Por Referencia,columnaPirata Por Referencia)
	si filaPirata = 0 y columnaPirata = 7 Entonces
		filaPirata <- 7
		columnaPirata <- 0
	SiNo
		filaPirata <- 0
		columnaPirata <- 7
	FinSi
FinSubProceso

Funcion agua <- hayAgua(filaPirata,columnaPirata,tablero)
	definir agua Como Logico
	agua = Falso
	si tablero(filaPirata,columnaPirata) = "A" Entonces
		agua = Verdadero
	FinSi
FinFuncion
	