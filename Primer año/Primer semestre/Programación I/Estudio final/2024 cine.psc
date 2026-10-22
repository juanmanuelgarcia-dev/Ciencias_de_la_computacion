Algoritmo cine
	definir respuesta,sala Como Caracter
	definir personasTotal,personas,filasDisponibles,sector,zona,i,cantDisponibles,filaElegida Como Entero
	Definir valido Como Logico
	Dimension sala(12,17)
	Dimension filasDisponibles(3)
	inicializarMatriz(sala)
	mostrarMatriz(sala)
	personasTotal <- 0
	cantDisponibles <- 0
	Repetir
		cantDisponibles <- 0
		Para i <- 0 Hasta 2 Hacer
			filasDisponibles(i) <- 0
		FinPara
		Repetir
			Escribir "Que cantidad de personas desea ver la pelicula"
			leer personas
		Mientras Que personas < 0 o personas > 5
		personasTotal <- personasTotal + personas
		Repetir
			Escribir "En que sector desean ubicarse(1. izquierda, 2. centro, 3. derecha): "
			leer sector
		Mientras Que sector < 1 o sector > 3
		
		Repetir
			Escribir "Prefiere 1. adelante, 2. medio o 3. atras: "
			leer zona
		Mientras Que zona < 1 o zona > 3
		VerAsientos(personas,sector,zona,filasDisponibles,sala,cantDisponibles)
		Repetir
			si cantDisponibles > 0 Entonces
				Escribir Sin Saltar "Filas disponibles: "
				para i <- 0 Hasta cantDisponibles-1 Hacer
					Escribir Sin Saltar filasDisponibles(i),","
				FinPara
				Escribir ""
				
				Repetir
					filaElegida <- 0
					Escribir "Fila elegida: "
					leer filaElegida
					valido <- Falso
					para i <- 0 Hasta cantDisponibles-1 Hacer
						si filaElegida = filasDisponibles(i) Entonces
							valido <- Verdadero
						FinSi
					FinPara
					Mientras Que valido = Falso
				
			SiNo
				Escribir "En esa ubicación ya no nos quedan asientos, elija otra ubicación: "
			FinSi
		Mientras Que cantDisponibles = 0
		
		agregarAsientos(filaElegida,sector,sala,personas)
		Escribir "La cantidad de asientos ocupados es: ",personasTotal
		mostrarMatriz(sala)
		
		Repetir
			Escribir "Desea seguir anotando clientes(S/N): "
			leer respuesta
			respuesta <- Mayusculas(respuesta)
		Mientras Que respuesta <> "S" y respuesta <> "N"
		
	Mientras Que respuesta <> "N" y personasTotal < 108
FinAlgoritmo

SubProceso inicializarMatriz(sala)
	Definir i,j Como Entero
	para i <- 0 Hasta 11 Hacer
		para j <- 0 Hasta 16 Hacer
			si i >= 0 y i <= 2 o j = 5 o j = 11 Entonces
				sala(i,j) <- "V"
			SiNo
				sala(i,j) <- "A"
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso mostrarMatriz(sala)
	Definir i,j como entero
	para i <- 0 Hasta 11 Hacer
		para j <- 0 Hasta 16 Hacer
			si sala(i,j) = "V" Entonces
				Escribir Sin Saltar "[   ]"
				Escribir Sin Saltar " "
			SiNo
				Escribir Sin Saltar "[ ",sala(i,j)," ]"
				Escribir Sin Saltar " "
			FinSi
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso VerAsientos(personas,sector,zona,filasDisponibles,sala,cantDisponibles Por Referencia)
	Definir i,j,contador,posicionVector Como Entero
	posicionVector <- 0
	para i <- zonaInf(zona) Hasta zonaSup(zona) Hacer
		contador <- 0
		para j <- sectorInf(sector) Hasta SectorSup(sector) Hacer
			si sala(i,j) = "A" Entonces
				contador <- contador + 1
				si contador = personas Entonces
					filasDisponibles(posicionVector) <- i
					posicionVector <- posicionVector + 1
					cantDisponibles <- cantDisponibles + 1
				FinSi
			SiNo
				contador <- 0
			FinSi
		FinPara
	FinPara
FinSubProceso


Funcion limiteI <- zonaInf(sector)
	Definir limiteI Como Entero
	si sector = 1 Entonces
		limiteI <- 3
	SiNo
		si sector = 2 Entonces
			limiteI <- 6
		SiNo
			limiteI <- 9
		FinSi
	FinSi
FinFuncion

Funcion limiteS <- zonaSup(sector)
	Definir limiteS como entero
	si sector = 1 Entonces
		limiteS <- 5
	SiNo
		si sector = 2 Entonces
			limiteS <- 8
		SiNo
			limiteS <- 11
		FinSi
	FinSi
FinFuncion

Funcion limiteI <- sectorInf(zona)
	Definir limiteI Como Entero
	si zona = 1 Entonces
		limiteI <- 0
	SiNo
		si zona = 2 Entonces
			limiteI <- 6
		SiNo
			limiteI <- 12
		FinSi
	FinSi
FinFuncion

Funcion limiteS <- SectorSup(zona)
	Definir limiteS Como Entero
	si zona = 1 Entonces
		limiteS <- 4
	SiNo
		si zona = 2 Entonces
			limiteS <- 10
		SiNo
			limiteS <- 16
		FinSi
	FinSi
FinFuncion

SubProceso agregarAsientos(filaElegida,sector,sala,personas)
	Definir j,ocupados Como Entero
	ocupados <- 0
		para j <- sectorInf(sector) Hasta SectorSup(sector) Hacer
			si sala(filaElegida,j) = "A" y ocupados < personas Entonces
				sala(filaElegida,j) <- "X"
				ocupados <- ocupados + 1
			FinSi
		FinPara
FinSubProceso
	