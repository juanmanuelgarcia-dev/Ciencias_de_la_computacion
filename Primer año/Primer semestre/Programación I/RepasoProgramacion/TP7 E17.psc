//Datos entrada: Tablero,Barcos simples,Barco doble
//Datos salida: Intento,disparo,puntos totales
Algoritmo batallaNaval
	definir num,tablero,disparosTotal,disparosMax,contadorBarcoDoble,contadorHundidos,contadorBarcos Como Entero
	Dimension tablero(3,4)
	disparosMax <- 8
	disparosTotal <- 0
	contadorBarcoDoble <- 1
	contadorHundidos <- 0
	contadorBarcos <- 0
	
	//Guardo las posiciones vacias
	CargarPosicionesVacia(tablero)
	Repetir
		
		//Carga los barcos dobles
		CargarValoresBarcoDoble(tablero)
		contadorBarcos <- contadorBarcos + 1
		
		//Carga los barcos simples
		CargarValoresBarcoSimple(tablero)
		
		contadorBarcos <- contadorBarcos + 1
	Mientras Que contadorBarcos < 4
		
	Repetir
		turnoDelAtacante(fila,columna,tablero)
		si tablero(fila,columna) = 0 Entonces
			Mostrar "Agua"
			tablero(fila,columna) <- 3
		SiNo
			si tablero(fila,columna) = 1 Entonces
				Mostrar "Hundido"
				contadorHundidos <- contadorHundidos + 1
				tablero(fila,columna) <- 3
			SiNo
				si tablero(fila,columna) = 2 y contadorBarcoDoble = 1 Entonces
					Mostrar "Averiado"
					contadorHundidos <- contadorHundidos + 1
					contadorBarcoDoble <- 2
					tablero(fila,columna) <- 3
				SiNo
					si tablero(fila,columna) = 2 y contadorBarcoDoble = 2 Entonces
						Mostrar "Hundido"
						contadorHundidos <- contadorHundidos + 1
						tablero(fila,columna) <- 3
					SiNo
						Mostrar "Disparo repetido"
					FinSi
				FinSi
			FinSi
		FinSi
		Mostrar "Usted tiene ",cantidadPuntos(contadorHundidos)," de puntos"
		disparosTotal <- disparosTotal + 1
	Mientras Que disparosMax < disparosTotal o contadorHundidos < 4
	si contadorHundidos = 4 o cantidadPuntos(contadorHundidos) > 6 Entonces
		Mostrar "Felicitaciones el atacante gana con ",disparosTotal," disparos en total"
	SiNo
		Mostrar "Felicitaciones el defensor gana"
	FinSi
FinAlgoritmo

SubProceso CargarPosicionesVacia(tablero)
	Definir i,j como entero
	para i <- 0 Hasta 2 Hacer
		para j <- 0 Hasta 3 Hacer
			tablero(i,j) <- 0
		FinPara
	FinPara
FinSubProceso

//Subproceso de traducción de coordenadas
SubProceso traducirCoordenada(fila Por Referencia,columna Por Referencia,letra,num)
	Segun letra hacer
		"A":
			fila <- 0
		"B":
			fila <- 1
		"C":
			fila <- 2
	FinSegun
	
	segun num Hacer
		1:
			columna <- 0
		2:
			columna <- 1
		3:
			columna <- 2
		4:
			columna <- 3
	FinSegun
	
FinSubProceso

SubProceso CargarValoresBarcoDoble(tablero)
	definir coordenada,letra como caracter
	definir num,fila,columna Como entero
	definir cargado Como Logico
	cargado <- Falso
	Repetir
		Repetir
			Escribir "Ingrese la primer coordenada en la que desea poner el barco doble:"
			Leer coordenada
			letra <- Subcadena(coordenada,0,0)
			num <- ConvertirANumero(Subcadena(coordenada,1,1))
		Mientras Que (letra <> "A" y letra <> "B" y letra <> "C") o (num < 1 o num > 4)
	
		traducirCoordenada(fila,columna,letra,num)
		si tablero(fila,columna) = 0 Entonces
			tablero(fila,columna) <- 2
		FinSi
		
		si columna + 1 < 4 Entonces
			si tablero(fila,columna + 1) = 0 Entonces
				tablero(fila,columna + 1) <- 2
				cargado <- Verdadero
			SiNo
				si columna - 1 >= 0 Entonces
					si tablero(fila,columna - 1) = 0 Entonces
						tablero(fila,columna - 1) <- 2
						cargado <- Verdadero
					FinSi
				SiNo
					si fila + 1 < 3 Entonces
						si tablero(fila + 1,columna) = 0 Entonces
							tablero(fila+1,columna) <- 2
							cargado <- Verdadero
						FinSi
					SiNo
						si fila - 1 >= 0 Entonces
							si tablero(fila - 1,columna) = 0 Entonces
								tablero(fila -1,columna) <- 2
								cargado <- Verdadero
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	Mientras que cargado = Falso
	
FinSubProceso

SubProceso CargarValoresBarcoSimple(tablero)
	definir coordenada,letra como caracter
	definir num,fila,columna Como entero
	definir cargado Como Logico
	cargado <- Falso
	Repetir
		Repetir
			Escribir "Ingrese la primer coordenada en la que desea poner el barco simple:"
			Leer coordenada
			letra <- Subcadena(coordenada,0,0)
			num <- ConvertirANumero(Subcadena(coordenada,1,1))
		Mientras Que (letra <> "A" y letra <> "B" y letra <> "C") o (num < 1 o num > 4)
		traducirCoordenada(fila,columna,letra,num)
		si tablero(fila,columna) = 0 Entonces
			tablero(fila,columna) <- 1
			cargado <- Verdadero
		FinSi
		
	Mientras Que cargado = Falso
	
FinSubProceso

SubProceso turnoDelAtacante(fila Por Referencia,columna Por Referencia,tablero)
	definir coordenada,letra como caracter
	definir num,numeroTurno Como entero
	numeroTurno <- 1
	Repetir
		Escribir "Ingrese la ubicacion del turno ",numeroTurno,": "
		Leer coordenada
		letra <- Subcadena(coordenada,0,0)
		num <- ConvertirANumero(Subcadena(coordenada,1,1))
	Mientras Que (letra <> "A" y letra <> "B" y letra <> "C") o (num < 1 o num > 4)
	traducirCoordenada(fila,columna,letra,num)
	numeroTurno <- numeroTurno + 1
FinSubProceso

Funcion puntos = cantidadPuntos(contadorHundidos)
	Definir puntos Como Entero
	puntos <- contadorHundidos * 2
FinFuncion