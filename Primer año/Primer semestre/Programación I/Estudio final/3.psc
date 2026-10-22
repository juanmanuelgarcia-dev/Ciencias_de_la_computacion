Algoritmo LabOrg7000
	definir sistema Como Caracter
	definir seleccion,brazoAfila,brazoAcolumna,brazoBfila,brazoBcolumna Como Entero
	
	Dimension sistema(9,9)
	cargarValores(sistema)
	brazoAfila <- 0
	brazoAcolumna <- 0
	brazoBfila <- 8
	brazoBcolumna <- 8
	
	Repetir
		seleccion = seleccionarOpcionMenu
		
		Segun seleccion Hacer
			1:
				almacenarMuestra(sistema,brazoAfila,brazoAcolumna,brazoBfila,brazoBcolumna)
			2:
				retirarMuestra(sistema,brazoAfila,brazoAcolumna,brazoBfila,brazoBcolumna)
			3:
				moverMuestra(sistema,brazoAfila,brazoAcolumna,brazoBfila,brazoBcolumna)
			4:
				listado(sistema)
			5:
				Escribir "Gracias por confiar en la LabOrg7000"
				
		FinSegun
	Mientras Que seleccion <> 5
FinAlgoritmo

SubProceso cargarValores(sistema)
	definir i,j Como Entero
	para i<- 0 Hasta 8 Hacer
		para j <- 0 Hasta 8 Hacer
			sistema(i,j) <- " "
		FinPara
	FinPara
FinSubProceso

Funcion seleccion <- seleccionarOpcionMenu
	definir seleccion Como Entero
	Escribir "1. Almacenar"
	Escribir "2. Retirar"
	Escribir "3. Mover"
	Escribir "4. Listar"
	Escribir "5. Apagar"
	Repetir
		Escribir "Ingrese la opción: "
		leer seleccion
	Mientras Que seleccion < 1 o seleccion > 5
FinFuncion

SubProceso almacenarMuestra(sistema,brazoAfila Por Referencia,brazoAcolumna Por Referencia,brazoBfila Por Referencia,brazoBcolumna Por Referencia)
	definir fila,columna,diferenciaA,diferenciaB como entero
	definir muestra Como Caracter
	Definir almacenado Como Logico
	Repetir
		Escribir "Ingrese el nombre de la muestra: "
		leer muestra
	Mientras Que muestra = "A" o muestra = "B"
	Repetir
		almacenado <- Verdadero
		Escribir "Ingrese la fila que desea: "
		leer fila
		Escribir "Ingrese la columna que desea: "
		leer columna
		
		si sistema(fila,columna) <> " " Entonces
			escribir "La posición (",fila,",",columna,") ya está ocupada por la muestra ",sistema(fila,columna)
			almacenado <- Falso
		SiNo
			si fila = 0 y columna = 0 o fila = 8 y columna = 8 Entonces
				Escribir "Esa posición está ocupada por uno de los brazos"
				almacenado <- Falso
			sino
				si fila < 0 o fila > 8 o columna < 0 o columna > 8 Entonces
					Escribir "Ingrese una ubicación válida: "
					almacenado <- Falso
				FinSi
			FinSi
		FinSi
	Mientras Que almacenado = Falso
	diferenciaA <- (brazoAfila - fila) + (brazoAcolumna - columna)
	diferenciaB <- (brazoBfila - fila) + (brazoBcolumna - columna)
	si diferenciaA <= diferenciaB Entonces
		brazoAfila <- fila
		brazoAcolumna <- columna
	SiNo
		brazoBfila <- fila
		brazoBcolumna <- columna
	FinSi
	sistema(fila,columna) <- muestra
	Escribir "Se almacenó la muestra ",muestra," en la posición (",fila,",",columna,")"
FinSubProceso

SubProceso retirarMuestra(sistema,brazoAfila Por Referencia,brazoAcolumna Por Referencia,brazoBfila Por Referencia,brazoBcolumna Por Referencia)
	definir fila,columna Como Entero
	definir retirado Como Logico
	definir brazo Como Caracter
	Repetir
		retirado <- Verdadero
		Escribir "Ingrese la fila que desea retirar: "
		leer fila
		Escribir "Ingrese la columna que desea retirar: "
		leer columna
		si sistema(fila,columna) = " " Entonces
			escribir "La posición no está ocupada por ninguna muestra"
			retirado <- Falso
		SiNo
			si fila = 0 y columna = 0 o fila = 8 y columna = 8 Entonces
				Escribir "Esa posición está ocupada por los brazos"
				retirado <- Falso
			SiNo
				si fila < 0 o fila > 8 o columna < 0 o columna > 8 Entonces
					Escribir "Ingrese una posición válida"
					retirado <- Falso
				FinSi
			FinSi
		FinSi
	Mientras Que retirado = Falso
	Repetir
		Escribir "Brazo que desea utilizar(A o B): "
		leer brazo
	Mientras Que brazo <> "A" y brazo <> "B"
	si brazo = "A" Entonces
		brazoAfila <- 0
		brazoAcolumna <- 0
	SiNo
		brazoBfila <- 0
		brazoBcolumna <- 0
	FinSi
	
	Escribir "Se retiró la muestra ",sistema(fila,columna)," de la posición (",fila,",",columna,")"
FinSubProceso

SubProceso moverMuestra(sistema,brazoAfila Por Referencia,brazoAcolumna Por Referencia,brazoBfila Por Referencia,brazoBcolumna Por Referencia)
	definir filaOrigen,filaDestino,columnaOrigen,columnaDestino,diferenciaA,diferenciaB Como Entero
	Definir destino,origen Como Logico
	definir brazo Como Caracter
	destino <- Verdadero
	
	
	Repetir
		origen <- Verdadero
		Escribir "Ingrese la fila de origen: "
		leer filaOrigen
		Escribir "Ingrese la columna de origen: "
		leer columnaOrigen
		
		si sistema(filaOrigen,columnaOrigen) = " " Entonces
			escribir "La posición no está ocupada por ninguna muestra"
			origen <- Falso
		SiNo
			si filaOrigen = 0 y columnaOrigen = 0 o filaOrigen = 8 y columnaOrigen = 8 Entonces
				Escribir "Esa posición está ocupada por los brazos"
				origen <- Falso
			SiNo
				si filaOrigen < 0 o filaOrigen > 8 o columnaOrigen < 0 o columnaOrigen > 8 Entonces
					Escribir "Ingrese una posición válida"
					origen <- Falso
				FinSi
			FinSi
		FinSi
	Mientras Que origen = Falso
	
	Repetir
		destino <- Verdadero
		Escribir "Ingrese la fila de destino: "
		leer filaDestino
		Escribir "Ingrese la columna de destino: "
		leer columnaDestino
		
		si sistema(filaDestino,columnaDestino) <> " " Entonces
			escribir "La posición no está ocupada por ninguna muestra"
			destino <- Falso
		SiNo
			si filaDestino = 0 y columnaDestino = 0 o filaDestino = 8 y columnaDestino = 8 Entonces
				Escribir "Esa posición está ocupada por los brazos"
				destino <- Falso
			SiNo
				si filaDestino < 0 o filaDestino > 8 o columnaDestino < 0 o columnaDestino > 8 Entonces
					Escribir "Ingrese una posición válida"
					destino <- Falso
				FinSi
			FinSi
		FinSi
	Mientras Que destino = Falso
	
	diferenciaA <- (brazoAfila - filaOrigen) + (brazoAcolumna - columnaOrigen)
	diferenciaB <- (brazoBfila - filaOrigen) + (brazoBcolumna - columnaOrigen)
	si diferenciaA <= diferenciaB Entonces
		brazoAfila <- filaDestino
		brazoAcolumna <- columnaDestino
		brazo <- "A"
	SiNo
		brazoBfila <- filaDestino
		brazoBcolumna <- columnaDestino
		brazo <- "B"
	FinSi
	
	Escribir "El brazo ",brazo," realizó el movimiento de la muestra ",sistema(filaOrigen,columnaOrigen)," desde la posición (",filaOrigen,",",columnaOrigen,") hacia la posición (",filaDestino,",",columnaDestino,")"
FinSubProceso

SubProceso listado(sistema)
	Definir i,j Como Entero
	Para i <- 0 Hasta 8 Hacer
		Para j <- 0 Hasta 8 Hacer
			Si sistema(i,j) <> " " Entonces
				Escribir "En la posición (",i,",",j,") está la muestra: ", sistema(i,j)
			FinSi
		FinPara
	FinPara
FinSubProceso
	