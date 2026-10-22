
Algoritmo estructura
	definir tablero,muestra,sub Como Caracter
	Definir longitudMuestra,i,cantidadFilas,num,cantidadColumnas,suma Como Entero
	Definir repetirSolicitud Como Logico
	cantidadFilas <- 1
	suma <- 0
	cantidadColumnas <- 1
	
	//Valido la entrada del registro
	Repetir
		repetirSolicitud <- Falso
		Escribir "Ingrese la muestra: "
		leer muestra
		longitudMuestra <- Longitud(muestra)
		si (longitudMuestra + 1) % 3 <> 0 Entonces
			Escribir "El registro es inválido, no es posible generar el mural"
			repetirSolicitud <- Verdadero
		FinSi
		para i <- 0 Hasta longitudMuestra - 1 Hacer
			sub <- Subcadena(muestra,i,i)
			si i % 3 = 0 Entonces
				si sub < "A" o sub > "Z" Entonces
					Escribir "El registro es inválido, no es posible generar el mural"
					repetirSolicitud <- Verdadero
				FinSi
			SiNo
				si i % 3 = 1 Entonces
					si sub < "1" o sub > "9" Entonces
						Escribir "El registro es inválido, no es posible generar el mural"
						repetirSolicitud <- Verdadero
					FinSi
				SiNo
					si i % 3 = 2 Entonces
						si sub <> "," y sub <> ";" Entonces
							Escribir "El registro es inválido, no es posible generar el mural"
							repetirSolicitud <- Verdadero
						FinSi
					FinSi
				FinSi
			FinSi
		FinPara
	Mientras Que repetirSolicitud = Verdadero
	
	//Calculo la cantidad de filas y columnas de la matriz
	para i <- 0 Hasta longitudMuestra - 1 Hacer
		sub <- Subcadena(muestra,i,i)
		si sub = ";" Entonces
			cantidadFilas <- cantidadFilas + 1
			suma <- 0
		FinSi
		si i % 3 = 1 Entonces
			num <- ConvertirANumero(sub)
			suma <- num + suma
			si suma >= cantidadColumnas Entonces
				cantidadColumnas <- suma
			FinSi
		FinSi
	FinPara
	Dimension tablero(cantidadFilas,cantidadColumnas+1)
	//inicializo la matriz y la muestro
	inicializarMural(tablero,cantidadColumnas,cantidadFilas,muestra,longitudMuestra)
	escribirMural(tablero,cantidadColumnas,cantidadFilas)
	
	//orden de la matriz
	Escribir "Orden ",cantidadFilas," X ",cantidadColumnas+1
	Escribir "La longitud del mural es ",longitudMural(tablero,muestra,longitudMuestra)
	//busqué la columna repetida
	si columnaIgualColor(tablero,muestra,cantidadColumnas,cantidadFilas) = Verdadero Entonces
		Escribir "Existe una columna del mismo color, si"
		Escribir "Columna: ",columnaColor(tablero,muestra,cantidadColumnas,cantidadFilas)
	SiNo
		Escribir "Existe una columna del mismo color, no"
	FinSi
FinAlgoritmo

SubProceso escribirMural(tablero,cantidadColumnas,cantidadFilas)
	Definir i,j como entero
	para i <- 0 Hasta cantidadFilas - 1 Hacer
		para j <- 0 Hasta cantidadColumnas - 1 Hacer
			escribir Sin Saltar "[ ",tablero(i,j)," ]"
			escribir Sin Saltar " "
		FinPara
		escribir ""
	FinPara
FinSubProceso

Funcion longitudM <- longitudMural(tablero,muestra,longitudMuestra)
	Definir longitudM,num,i Como Entero
	Definir sub Como Caracter
	longitudM <- 0
	para i <- 0 Hasta longitudMuestra - 1 Hacer
		sub <- Subcadena(muestra,i,i)
		si i % 3 = 1 Entonces
			num <- ConvertirANumero(sub)
			longitudM <- longitudM + num
		FinSi
	FinPara
FinFuncion

Funcion mismoColor <- columnaIgualColor(tablero,muestra,cantidadColumnas,cantidadFilas)
	Definir i,j Como Entero
	Definir colorRef Como Caracter
	Definir mismoColor Como Logico
	para j <- 0 Hasta cantidadColumnas - 1 Hacer
		colorRef <- tablero(0,j)
		para i <- 1 Hasta cantidadFilas - 1 Hacer
			si tablero(i,j) = colorRef Entonces
				mismoColor <- Verdadero
			SiNo
				mismoColor <- Falso
			FinSi
		FinPara
	FinPara
FinFuncion

SubProceso inicializarMural(tablero,cantidadColumnas,cantidadFilas,muestra,longitudMuestra)
	Definir i,j,k Como Entero
	Definir fila,columna,num Como Entero
	Definir color,separador Como Caracter
	Definir cantidadColores Como Entero
	Definir encontrado Como Logico
	// Inicializo toda la matriz con "-"
	Para i <- 0 Hasta cantidadFilas - 1 Hacer
		Para j <- 0 Hasta cantidadColumnas Hacer
			tablero(i,j) <- "-"
		FinPara
	FinPara
	fila <- 0
	columna <- 0
	i <- 0
	// Genero el mural
	Mientras i < longitudMuestra Hacer
		color <- Subcadena(muestra,i,i)
		num <- ConvertirANumero(Subcadena(muestra,i+1,i+1))
		// Coloco el color tantas veces como indica el número
		Para j <- 1 Hasta num Hacer
			tablero(fila,columna) <- color
			columna <- columna + 1
		FinPara
		// Me posiciono en el separador
		i <- i + 2
		Si i < longitudMuestra Entonces
			separador <- Subcadena(muestra,i,i)
			Si separador = ";" Entonces
				fila <- fila + 1
				columna <- 0
			FinSi
			// Salteo el separador
			i <- i + 1
		FinSi
	FinMientras
	// Cuento los colores distintos de cada fila
	Para i <- 0 Hasta cantidadFilas - 1 Hacer
		cantidadColores <- 0
		Para j <- 0 Hasta cantidadColumnas - 1 Hacer
			Si tablero(i,j) <> "-" Entonces
				encontrado <- Falso
				// Solamente busco hacia atrás si no estoy
				// en la primera columna
				Si j > 0 Entonces
					Para k <- 0 Hasta j - 1 Hacer
						Si tablero(i,k) = tablero(i,j) Entonces
							encontrado <- Verdadero
						FinSi
					FinPara
				FinSi
				Si encontrado = Falso Entonces
					cantidadColores <- cantidadColores + 1
				FinSi
			FinSi
		FinPara
		// Columna adicional con cantidad de colores
		tablero(i,cantidadColumnas) <- ConvertirATexto(cantidadColores)
	FinPara
FinSubProceso


Funcion columna <- columnaColor(tablero,muestra,cantidadColumnas,cantidadFilas)
	Definir i,j Como Entero
	Definir colorRef Como Caracter
	para j <- 0 Hasta cantidadColumnas - 1 Hacer
		para i <- 1 Hasta cantidadFilas - 1 Hacer
			colorRef <- tablero(0,j)
			si tablero(i,j) = colorRef Entonces
				columna <- j+1
			FinSi
		FinPara
	FinPara
FinFuncion


	