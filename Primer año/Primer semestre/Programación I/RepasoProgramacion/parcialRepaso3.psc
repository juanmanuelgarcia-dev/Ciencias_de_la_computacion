Algoritmo sumaCamino
	definir matriz,ordenMatriz,seleccion,puntajeTotalObtenido,sumadelCamino,sumaTotalDiagonalesUsuario Como Entero
	Definir camino,posicion Como Caracter
	Definir i,LongitudCamino,SumaFilayColumnaUsuario,fila,columna Como Entero
	puntajeTotalObtenido <- 0
	
	Repetir
		Escribir "Ingrese el orden de la matriz: "
		leer ordenMatriz
	Mientras Que ordenMatriz < 4 o ordenMatriz > 10
	Dimension matriz(ordenMatriz,ordenMatriz)
	cargarValoresEnLaMatriz(matriz,ordenMatriz)
	
	Repetir
		
		seleccion = seleccionarOpcion()
		
		Segun seleccion Hacer
			1:
				Repetir
					Escribir "Ingrese el camino que desea: "
					leer camino
					LongitudCamino <- Longitud(camino)
					para i <- 0 Hasta LongitudCamino - 1 Hacer
						posicion <- Subcadena(camino,i,i)
					FinPara
				Mientras Que posicion <> "A" y posicion <> "D"
					Escribir "Ingrse la suma del camino: "
					leer sumadelCamino
					
					puntajeTotalObtenido = SumadeCamino(matriz,ordenMatriz,LongitudCamino,posicion) + puntajeTotalObtenido
					Mostrar "Su puntaje total obtenido es: ",puntajeTotalObtenido
					
				2:
					Escribir "Ingrese la suma total de la diagonales: "
					leer sumaTotalDiagonalesUsuario
					puntajeTotalObtenido = SumaDiagonales(matriz,ordenMatriz,sumaTotalDiagonalesUsuario) + puntajeTotalObtenido
					Mostrar "Su puntaje total obtenido es: ",puntajeTotalObtenido
			3:
				Repetir
					Escribir "Ingrese la columna que desee sumar(de 0 a ",ordenMatriz,": "
					leer columna
				Mientras Que columna < 0 o columna > ordenMatriz
				
				Repetir
					Escribir "Ingrese la fila que desee sumar(de 0 a ",ordenMatriz,": "
					leer fila
				Mientras Que fila < 0 o fila > ordenMatriz
				
				Escribir "Ingrese la suma total de las filas y las columnas: "
				leer SumaFilayColumnaUsuario
				puntajeTotalObtenido = SumaFilayColumna(matriz,ordenMatriz,fila,columna,SumaFilayColumnaUsuario) + puntajeTotalObtenido
				Mostrar "Su puntaje total obtenido es: ",puntajeTotalObtenido
			4:
				Escribir "Gracias por participar"
				Mostrar "Su puntaje total obtenido es: ",puntajeTotalObtenido
		FinSegun
	Mientras Que seleccion <> 4
	
	
FinAlgoritmo

SubProceso cargarValoresEnLaMatriz(matriz,ordenMatriz)
	definir i, j Como Entero
	para i <- 0 Hasta ordenMatriz - 1 Hacer
		para j <- 0 Hasta ordenMatriz - 1 Hacer
			matriz(i,j) <- Aleatorio(1,20)
			Escribir Sin Saltar matriz(i,j)
			Escribir Sin Saltar " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

funcion puntaje <- SumadeCamino(matriz,ordenMatriz,LongitudCamino,posicion)
	definir i,j,puntaje,fila,columna Como Entero
	fila <- 0
	columna <- 0
	Repetir
		segun posicion Hacer
			"A":
				matriz(fila,columna) <- matriz(fila,columna + 1)
			"D":
				matriz(fila,columna) <- matriz(fila + 1,columna)
		FinSegun
		Repetir
			Escribir "Ingrese el camino que desea: "
			leer camino
			LongitudCamino <- Longitud(camino)
			para i <- 0 Hasta LongitudCamino - 1 Hacer
				posicion <- Subcadena(camino,i,i)
			FinPara
		Mientras Que posicion <> "A" y posicion <> "D"
	Mientras Que fila <> ordenMatriz - 1 y columna <> ordenMatriz - 1
	Mostrar "1"
FinFuncion

Funcion puntaje <- SumaDiagonales(matriz,ordenMatriz,sumaTotalDiagonalesUsuario)
	definir i,sumaDiagonal,sumaContraDiagonal,sumaTotalDiagonales,puntaje Como Entero
	sumaDiagonal <- 0
	sumaContradiagonal <- 0
	
	para i <- 0 Hasta ordenMatriz - 1 Hacer
		sumaDiagonal <- sumaDiagonal + matriz(i,i)
	FinPara
	
	para i <- 0 Hasta ordenMatriz - 1 Hacer
		sumaContradiagonal <- sumaContradiagonal + matriz(i,ordenMatriz-1-i)
	FinPara
	
	sumaTotalDiagonales <- sumaContradiagonal + sumaDiagonal
	
	
	Mostrar "La suma diagonal elegida es: ",sumaTotalDiagonalesUsuario
	Mostrar "La suma diagonal principal es: ",sumaDiagonal
	Mostrar "La suma diagonal secundaria es: ",sumaContradiagonal
	Mostrar "La suma de las diagonales es: ",sumaTotalDiagonales
	si sumaTotalDiagonalesUsuario = sumaTotalDiagonales Entonces
		puntaje = sumaTotalDiagonalesUsuario
	SiNo
		puntaje = 0
	FinSi
FinFuncion


funcion puntaje <- SumaFilayColumna(matriz,ordenMatriz,fila,columna,SumaFilayColumnaUsuario)
	definir i,j,puntaje,sumaTotalFila,sumaTotalColumna,SumaTotalFilayColumna Como Entero
	sumaTotalFila <- 0
	sumaTotalColumna <- 0
	
	para j <- 0 Hasta ordenMatriz - 1 Hacer
		sumaTotalFila <- sumaTotalFila + matriz(fila,j)
	FinPara
	
	para i <- 0 Hasta ordenMatriz - 1 Hacer
		sumaTotalColumna <- sumaTotalColumna + matriz(i,columna)
	FinPara
	
	SumaTotalFilayColumna <- sumaTotalColumna + sumaTotalFila
	Mostrar "La suma de fila y columna elegida es: ",SumaFilayColumnaUsuario
	Mostrar "La suma de la fila es: ",sumaTotalFila
	Mostrar "La suma de la columna es: ",sumaTotalColumna
	Mostrar "La suma de la fila y la columna total es: ",SumaTotalFilayColumna
	si SumaFilayColumnaUsuario = SumaTotalFilayColumna Entonces
		puntaje = SumaFilayColumnaUsuario
	SiNo
		puntaje = 0
	FinSi
FinFuncion

Funcion seleccion = seleccionarOpcion
	Definir seleccion Como Entero
		Escribir "1. Suma Camino"
		Escribir "2. Suma diagonales"
		Escribir "3. Suma fila/columna"
		Escribir "4. salir"
	repetir
		Escribir "Ingrese la opcion que desee: "
		leer seleccion
	Mientras Que seleccion < 1 o seleccion > 4
FinFuncion

	