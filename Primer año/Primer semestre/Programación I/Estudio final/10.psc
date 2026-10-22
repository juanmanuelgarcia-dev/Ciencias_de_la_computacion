Algoritmo suma
	definir matriz,seleccion,orden,sumaDiagonales,puntos,total,fila,columna,sumaTotal,i,sumaCamino Como Entero
	definir secuencia Como caracter
	Definir repetirSolicitud Como Logico
	total <- 0
	Repetir
		Escribir "Ingrese el orden de la matriz: "
		leer orden
	Mientras Que orden < 4 o orden > 10
	Dimension matriz(orden,orden)
	iniciarMatriz(matriz,orden)
	
	Repetir
		mostrarMatriz(matriz,orden)
		seleccion = seleccionarOpcionMenu
		
		
		Segun seleccion Hacer
			1:
				Repetir
					repetirSolicitud <- Falso
					Escribir "Ingrese la secuencia a realizar: "
					leer secuencia
					si Longitud(secuencia) <> (orden - 1) * 2 Entonces
						repetirSolicitud <- Verdadero
						Escribir "Su secuencia es incorrecta" 
					SiNo
						para i <- 0 Hasta Longitud(secuencia) -1 Hacer
							si Subcadena(secuencia,i,i) <> "A" y Subcadena(secuencia,i,i) <> "D"
								Escribir "Solo se pueden ingresar las letras A y D"
								repetirSolicitud <- Verdadero
							FinSi
						FinPara
					FinSi
				Mientras Que repetirSolicitud = Verdadero
				repetir
					Escribir "Ingrese la suma total"
					leer sumaCamino
				Mientras Que sumaCamino < 0
				comprobarSecuencia(secuencia,matriz,orden,sumaCamino,total)
			2:
				Repetir
					Escribir "Ingrese la suma de las diagonales: "
					leer sumaDiagonales
				Mientras Que sumaDiagonales < orden * 2
				
				si sumaDiagonalPrincipal(matriz,orden) + sumaDiagonalSecundaria(matriz,orden) = sumaDiagonales Entonces
					puntos = sumaDiagonales
					total <- puntos + total
				SiNo
					puntos <- 0
				FinSi
				Mostrar "Suma diagonal principal: ",sumaDiagonalPrincipal(matriz,orden)
				mostrar "suma diagonal secundaria: ",sumaDiagonalSecundaria(matriz,orden)
				Mostrar "Suma diagonal total: ",sumaDiagonalSecundaria(matriz,orden) + sumaDiagonalPrincipal(matriz,orden)
				Mostrar "Tu puntaje obtenido fue puntos: ",puntos
				
			3:
				Repetir
					Escribir "Ingrese una fila: "
					leer fila
					Escribir "Ingrese una columna: "
					leer columna
					fila <- fila -1
					columna <- columna -1
				Mientras Que fila < 0 o fila > orden - 1 o columna < 0 o columna > orden - 1
				Repetir
					Escribir "Ingrese la suma de la fila mas la columna: "
					leer sumaTotal
				Mientras Que sumaTotal < orden * 2
				si sumaFila(matriz,fila,orden) + sumaColumna(matriz,columna,orden) = sumaTotal Entonces
					puntos = sumaTotal
					total = total + puntos
				SiNo
					puntos = 0
				FinSi
				Mostrar "Suma fila: ",sumaFila(matriz,fila,orden)
				mostrar "suma columna: ",sumaColumna(matriz,columna,orden)
				Mostrar "Suma total: ",sumaFila(matriz,fila,orden) + sumaColumna(matriz,columna,orden)
				Mostrar "Tu puntaje obtenido fue puntos: ",puntos
				
			4:
				Escribir "¡Gracias por jugar!"
				Escribir "Tu puntaje final fue ",total
		FinSegun
		
	Mientras Que seleccion <> 4
	
FinAlgoritmo

SubProceso iniciarMatriz(matriz,orden)
	definir i,j Como Entero
	para i <- 0 Hasta orden - 1 Hacer
		para j <- 0 Hasta orden - 1 Hacer
			matriz(i,j) <- Aleatorio(1,20)
		FinPara
	FinPara
FinSubProceso

Funcion seleccion = seleccionarOpcionMenu
	definir seleccion Como Entero
	Repetir
		Escribir "Ingrese la opciones que desee: "
		Escribir "1. Suma camino"
		Escribir "2. Suma diagonal"
		Escribir "3. Suma fila/columna"
		Escribir "4.salir"
		Leer seleccion
	Mientras Que seleccion < 1 o seleccion > 4
FinFuncion

SubProceso mostrarMatriz(matriz,orden)
	Definir i,j Como Entero
	para i <- 0 Hasta orden - 1 Hacer
		para j <- 0 Hasta orden - 1 Hacer
			Escribir Sin Saltar matriz(i,j) 
			si matriz(i,j) < 10 Entonces
				Escribir Sin Saltar "  "
			SiNo
				Escribir Sin Saltar " "
			FinSi
		FinPara
		Escribir ""
	FinPara
FinSubProceso

Funcion sumaDiagonal1 <- sumaDiagonalPrincipal(matriz,orden)
	Definir sumaDiagonal1,i Como Entero
	sumaDiagonal1 <- 0
	para i <- 0 Hasta orden - 1 Hacer
		sumaDiagonal1 <- sumaDiagonal1 + matriz(i,i)
	FinPara
FinFuncion

Funcion sumaDiagonal2 <- sumaDiagonalSecundaria(matriz,orden)
	Definir sumaDiagonal2,i Como entero
	sumaDiagonal2 <- 0
	para i <- 0 Hasta orden - 1 Hacer
		sumaDiagonal2 <- sumaDiagonal2 + matriz(i,orden - 1 -i)
	FinPara
FinFuncion

Funcion filaSum <- sumaFila(matriz,fila,orden)
	definir filaSum, i Como Entero
	filaSum <-0
	para i <- 0 Hasta orden-1 Hacer
		filaSum <- filaSum + matriz(fila,i)
	FinPara
FinFuncion

Funcion columnaSum <- sumaColumna(matriz,columna,orden)
	definir columnaSum,i Como Entero
	columnaSum <- 0 
	para i <- 0 Hasta orden-1 Hacer
		columnaSum <- columnaSum + matriz(i,columnaSum)
	FinPara
FinFuncion

SubProceso comprobarSecuencia(secuencia,matriz,orden,sumaCamino,total Por Referencia)
	Definir fila,j,sumaTotal,i,recorrer Como Entero
	definir recorrido Como Caracter
	i <- 0
	j <- 0
	sumaTotal <- 0
	recorrer <- 0
	Escribir Sin Saltar "(0,0)"
	Escribir Sin Saltar " ","="," ",matriz(0,0)
	Escribir Sin Saltar "  "
	sumaTotal <- sumaTotal + matriz(0,0)
	Repetir
		recorrido <- Subcadena(secuencia,recorrer,recorrer)
		recorrer <- recorrer + 1
		Segun recorrido Hacer
			"A":
				sumaTotal <- sumaTotal + matriz(i+1,j)
				Escribir Sin Saltar "(",i+1,",",j,")"
				Escribir Sin Saltar " ","="," ",matriz(i+1,j)
				Escribir Sin Saltar "  "
				i <- i + 1
			"D":
				sumaTotal <- sumaTotal + matriz(i,j+1)
				Escribir Sin Saltar "(",i,",",j+1,")"
				Escribir Sin Saltar " ","="," ",matriz(i,j+1)
				Escribir Sin Saltar "  "
				j <- j + 1
		FinSegun
	Mientras Que Longitud(secuencia) > recorrer
	Mostrar "La suma total es: ",sumaTotal
	si sumaTotal = sumaCamino Entonces
		Escribir "Tu puntaje es: ",sumaTotal
		total <- sumaTotal + total
	SiNo
		Escribir "Tu puntaje es: ",0
	FinSi
FinSubProceso
	