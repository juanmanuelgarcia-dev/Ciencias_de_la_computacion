Algoritmo sumacamin
	definir orden,matriz,seleccion,intentoUsuarioSumaCamino,total,intentoPrincipal,intentoSecundaria,sumaAmbas,intentoAmbas Como Entero
	definir fila,columna,sumaFila,sumaColumna,sumaDeLasDos,filaYcolumna como entero
	Definir secuencia Como Caracter
	total <- 0
	Repetir
		Escribir "Ingrese el orden de la matriz(entre 4 y 10): "
		leer orden
	Mientras Que orden < 4 o orden > 10
	Dimension matriz(orden,orden)
	inicializarMatriz(orden,matriz)
	mostrarMatriz(orden,matriz)
	
	Repetir
		seleccion = seleccionarOpcionMenu
		Segun seleccion Hacer
			1:
				secuencia = ValidarSecuencia(orden)
				Repetir
					Escribir "Ingrese los valores de la suma camino: "
					leer intentoUsuarioSumaCamino
				Mientras Que intentoUsuarioSumaCamino < 0
				sumaCamino(secuencia,intentoUsuarioSumaCamino,orden,matriz,total)
			2:
				Repetir
					Escribir "Ingrese la suma de la diagonal principal: "
					leer intentoPrincipal
				Mientras Que intentoPrincipal < 0
				Repetir
					Escribir "Ingrese la suma de la diagonal secundaria: "
					leer intentoSecundaria
				Mientras Que intentoSecundaria < 0
				intentoAmbas <- intentoSecundaria + intentoPrincipal
				Escribir "La suma de la diagonal principal es: ",verificarDiagonal(orden,matriz)
				Escribir "La suma de la diagonal secundaria es: ",verificarDiagonalS(orden,matriz)
				sumaAmbas = verificarDiagonalS(orden,matriz) + verificarDiagonal(orden,matriz) 
				Escribir "La suma de las diagonales es: ",sumaAmbas
				si sumaAmbas = intentoAmbas Entonces
					Escribir "Tu puntaje es: ",sumaAmbas
					total <- total + sumaAmbas
				SiNo
					Escribir "Tu puntaje es 0"
				FinSi
			3:
				Repetir
					Escribir "Ingrese la fila que desea: "
					leer fila
					fila <- fila -1
				Mientras Que fila < 0 o fila > orden - 1
				Repetir
					Escribir "Ingrese la columna que desea: "
					leer columna
					columna <- columna -1
				Mientras Que columna < 0 o columna > orden-1
				Repetir
					Escribir "Ingrese la suma de la fila: "
					leer sumaFila
				Mientras Que sumaFila < 0
				Repetir
					Escribir "Ingrese la suma de la columna: "
					leer sumaColumna
				Mientras Que sumaColumna < 0
				sumaDeLasDos <- sumaFila + sumaColumna
				filaYcolumna <- recorrerFila(fila,orden,matriz) + recorrerColumna(columna,orden,matriz)
				Escribir "Suma fila ",recorrerFila(fila,orden,matriz)
				Escribir "Suma columna ",recorrerColumna(columna,orden,matriz)
				Escribir "Suma ambas ",filaYcolumna
				si sumaDeLasDos = filaYcolumna Entonces
					Escribir "Tu puntaje obtenido es ",filaYcolumna
					total <- total + filaYcolumna
				SiNo
					Escribir "Tu puntaje es 0"
				FinSi
			4:
				Escribir "Gracias por jugar"
				Escribir "Tu puntaje total fue ",total
		FinSegun
	Mientras Que seleccion <> 4
FinAlgoritmo

SubProceso inicializarMatriz(orden,matriz)
	Definir i,j Como Entero
	para i <- 0 Hasta orden - 1 Hacer
		para j <- 0 Hasta orden - 1 Hacer
			matriz(i,j) <- Aleatorio(1,20)
		FinPara
	FinPara
FinSubProceso

SubProceso mostrarMatriz(orden,matriz)
	definir i,j Como Entero
	para i <- 0 Hasta orden - 1 Hacer
		para j <- 0 Hasta orden -1 Hacer
			si matriz(i,j) >= 10 Entonces
				Escribir Sin Saltar matriz(i,j)
				Escribir Sin Saltar " "
			sino
				Escribir Sin Saltar matriz(i,j)
				Escribir Sin Saltar "  "
			FinSi
		FinPara
		Escribir ""
	FinPara
FinSubProceso

Funcion seleccion <- seleccionarOpcionMenu
	Definir seleccion Como Entero
	Repetir
		Escribir "Ingrese el valir que desee: "
		Escribir "1. Suma camino"
		Escribir "2. Suma Diagonal"
		Escribir "3. Suma Fila/Columna"
		Escribir "4. Salir"
		leer seleccion
	Mientras Que seleccion < 1 o seleccion > 4
FinFuncion

funcion secuencia <- ValidarSecuencia(orden)
	definir longitudSecuencia,i Como Entero
	definir solicitudRepetir Como Logico
	Definir secuencia Como Caracter
	Repetir
		solicitudRepetir = Falso
		Escribir "Ingrese la secuencia: "
		leer secuencia
		longitudSecuencia <- Longitud(secuencia)
		si longitudSecuencia <> (orden-1) * 2 Entonces
			Escribir "Secuencia no valida"
			solicitudRepetir = Verdadero
		SiNo
			para i <- 0 Hasta longitudSecuencia - 1  Hacer
				si Subcadena(secuencia,i,i) <> "D" y Subcadena(secuencia,i,i) <> "A" Entonces
					Escribir "UNICAMENTE A o D para realizar los movimientos: "
					solicitudRepetir = Verdadero
				FinSi
			FinPara
		FinSi
	Mientras Que solicitudRepetir = Verdadero
FinFuncion

SubProceso sumaCamino(secuencia,intentoUsuarioSumaCamino,orden,matriz,total Por Referencia)
	definir i,longitudSecuencia,sumaCaminoTotal,recorrer,j Como Entero
	definir recorrido Como Caracter
	recorrer <- 0
	i <- 0
	j <- 0
	Definir movimiento Como Caracter
	longitudSecuencia <- longitud(secuencia)
	Dimension movimiento(longitudSecuencia) 
	sumaCaminoTotal <- 0
	sumaCaminoTotal <- matriz(0,0) + sumaCaminoTotal
	Escribir Sin Saltar "(0,0)","=",sumaCaminoTotal
	Escribir Sin Saltar " "
	Repetir
		recorrido <- Subcadena(secuencia,recorrer,recorrer)
		recorrer <- recorrer + 1
		segun recorrido Hacer
			"A":
				sumaCaminoTotal <- sumaCaminoTotal + matriz(i+1,j)
				Escribir Sin Saltar "(",i+1,",",j,")=",sumaCaminoTotal
				i <- i + 1
			"D":
				sumaCaminoTotal <- sumaCaminoTotal + matriz(i,j+1)
				Escribir Sin Saltar "(",i,",",j+1,")=",sumaCaminoTotal
				j <- j + 1
		FinSegun
	Mientras Que longitudSecuencia > recorrer
	Escribir ""
	Escribir "Suma camino ",sumaCaminoTotal
	si intentoUsuarioSumaCamino = sumaCaminoTotal Entonces
		Escribir "Tu puntaje: ",sumaCaminoTotal
		total <- total + sumaCaminoTotal
	SiNo
		Escribir "Tu puntaje obtenido es 0"
	FinSi
FinSubProceso

Funcion sumaPrincipal = verificarDiagonal(orden,matriz)
	Definir i,sumaPrincipal Como Entero
	sumaPrincipal <- 0
	para i <- 0 Hasta orden - 1 Hacer
		sumaPrincipal <- matriz(i,i) + sumaPrincipal
	FinPara
FinFuncion

Funcion sumaSecundaria = verificarDiagonalS(orden,matriz)
	Definir i,sumaSecundaria Como Entero
	sumaSecundaria <- 0
	para i <- 0 Hasta orden - 1 Hacer
		sumaSecundaria <- matriz(orden-1-i,i) + sumaSecundaria
	FinPara
FinFuncion

Funcion sumarFila <- recorrerFila(fila,orden,matriz)
	definir sumarFila,i como entero
	sumarFila <- 0
	para i <- 0 Hasta orden -1 Hacer
		sumarfila <- sumarFila + matriz(fila,i)
	FinPara
FinFuncion

Funcion sumarColumna <- recorrerColumna(columna,orden,matriz)
	Definir sumarColumna,i Como Entero
	sumarColumna <- 0
	para i <- 0 Hasta orden -1 Hacer
		sumarColumna <- sumarColumna + matriz(i,columna)
	FinPara
FinFuncion
	