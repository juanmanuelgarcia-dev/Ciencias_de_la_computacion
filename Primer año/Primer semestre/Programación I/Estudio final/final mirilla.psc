Algoritmo mirilla
	definir tablero,orden,columna,fila,sumaDerecha,sumaIzquierda Como Entero
	Definir eleccion Como Caracter
	sumaDerecha <- 0
	sumaIzquierda <- 0
	eleccion = seleccionarOpcion
	Segun eleccion Hacer
		"B":
			orden <- 5
		"I":
			orden <- 7
		"D":
			orden <- 9
	FinSegun
	Dimension tablero(orden,orden)
	inicializarTablero(tablero,orden)
	mostrarMatriz(tablero,orden)
	Repetir
		Escribir "Ingrese la fila de la mirilla: "
		leer fila
		fila <- fila - 1
	Mientras Que fila < 0 o fila > orden - 1
	
	Repetir
		Escribir "Ingrese la columna de la mirilla: "
		leer columna
		columna <- columna - 1
	Mientras Que columna < 0 o columna > orden - 1
	sumaDiagonal(tablero,fila,columna,orden,sumaDerecha,sumaIzquierda)
	si sumaDerecha > sumaIzquierda Entonces
		Escribir "La suma diagonal derecha es mayor"
	SiNo
		si sumaDerecha < sumaIzquierda Entonces
			Escribir "La suma diagonal izquierda es mayor"
		SiNo
			Escribir "Son iguales"
		FinSi
	FinSi
	Escribir "El valor cercano más distinto es el ",valoresVecinos(tablero,fila,columna,orden)
FinAlgoritmo

Funcion eleccion <- seleccionarOpcion
	Definir eleccion Como Caracter
	Repetir
		Escribir "Ingrese el nivel que desea: "
		Escribir "B. Básico"
		Escribir "I. Intermedio"
		Escribir "D. Dificil"
		leer eleccion
	Mientras Que eleccion <> "B" y eleccion <> "I" y eleccion <> "D"
FinFuncion

SubProceso inicializarTablero(tablero,orden)
	Definir i,j Como Entero
	para i <- 0 Hasta orden - 1 Hacer
		para j <- 0 Hasta orden - 1 Hacer
			tablero(i,j) <- Aleatorio(1,9)
		FinPara
	FinPara
FinSubProceso

SubProceso sumaDiagonal(tablero,fila,columna,orden,sumaDerecha Por Referencia,sumaIzquierda Por Referencia)
	Definir der,izq,filaM,columnaM,i,j Como Entero
	filaM <- fila - 1
	columnaM <- columna - 1
	der <- filaM + columnaM
	izq <- filaM - columnaM
	para i <- 0 Hasta orden - 1 Hacer
		para j <- 0 Hasta orden - 1 Hacer
			si (i-j = der) Entonces
				sumaDerecha = sumaDerecha + tablero(i,j)
			FinSi
			si (i+j = izq) Entonces
				sumaIzquierda = sumaIzquierda + tablero(i,j)
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso mostrarMatriz(tablero,orden)
	Definir i,j Como Entero
	para i <- 0 Hasta orden - 1 Hacer
		para j <- 0 Hasta orden - 1 Hacer
			Escribir Sin Saltar tablero(i,j)
			Escribir Sin Saltar " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

Funcion valorVecino <- valoresVecinos(tablero,fila,columna,orden)
	Definir i,j,valorMirilla,valorVecino Como Entero
	valorMirilla <- tablero(fila,columna)
	valorVecino <- 10
	para i <- valorInicial(fila) Hasta valorFinal(fila,orden) Hacer
		para j <- valorInicial(columna) Hasta valorFinal(columna,orden) Hacer
			si tablero(i,j) <> tablero(fila,columna) Entonces
				si abs(tablero(fila,columna) - tablero(i,j)) <= valorVecino Entonces
					valorVecino <- tablero(i,j)
				FinSi
			FinSi
		FinPara
	FinPara
FinFuncion

Funcion valorI <- valorInicial(n)
	Definir valorI Como Entero
	si n - 1 < 0 Entonces
		valorI <- n
	SiNo
		valorI <- n - 1
	FinSi
FinFuncion

Funcion valorF <- valorFinal(n,orden)
	Definir valorF Como Entero
	si n + 1 > orden - 1 Entonces
		valorF <- n
	SiNo
		valorF <- n + 1
	FinSi
FinFuncion
