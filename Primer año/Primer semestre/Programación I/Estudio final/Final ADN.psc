Algoritmo adn
	definir longitudMuestra,i Como Entero
	Definir muestraIncorrecta Como Logico
	Definir tablero, muestra,subcadenaMuestra Como Caracter
	Dimension tablero(10,10)
	Repetir
		muestraIncorrecta <- Falso
		Escribir "Ingrese la muestra: "
		muestra <- "ATCGGACCTTAAAGCTTAGTCATCGTTACGGTCAGGCAGTACGATTCGATACGAGTACGATTCGAGGCTAAGGATCCGTACGTTGCAAGGCAGGTACGTA"
		longitudMuestra <- Longitud(muestra)
		para i <- 0 Hasta longitudMuestra - 1 Hacer
			subcadenaMuestra <- Subcadena(muestra,i,i)
			si subcadenaMuestra <> "C" y subcadenaMuestra <> "G" y subcadenaMuestra <> "A" y subcadenaMuestra <> "T" Entonces
				muestraIncorrecta = Verdadero
			FinSi
		FinPara
	Mientras Que longitudMuestra <> 100 y muestraIncorrecta = Verdadero
	
	IniciarMatriz(tablero,muestra)
	mostrarMatriz(tablero)
	Escribir "La cantidad de veces que aparece el patrón 1 (ATCG en fila): ",verificarFilasPatron1(tablero)
	Escribir "La cantidad de veces que aparece el patrón 2 (AAA en columna): ",verificarFilasPatron2(tablero)
	Escribir "La Cantidad de veces que aparece el Patrón 3 (4 iguales en diagonal): ",verificarFilasPatron3A(tablero) + verificarFilasPatron3B(tablero)
FinAlgoritmo

SubProceso IniciarMatriz(tablero,muestra)
	Definir i,j,suma Como Entero
	suma <- 0
	para i <- 0 Hasta 9 Hacer
		para j <- 0 Hasta 9 Hacer
			tablero(i,j) <- Subcadena(muestra,suma,suma)
			suma <- suma + 1
		FinPara
	FinPara
FinSubProceso

SubProceso mostrarMatriz(tablero)
	Definir i,j Como Entero
	para i <- 0 Hasta 9 Hacer
		para j <- 0 Hasta 9 Hacer
			Escribir Sin Saltar tablero(i,j)
			Escribir Sin Saltar " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

funcion patron1 <- verificarFilasPatron1(tablero)
	Definir patron1,i,j Como Entero
	patron1 <- 0
	para i <- 0 Hasta 9 Hacer
		para j <- 0 Hasta 6 Hacer
			si tablero(i,j) = "A" y tablero(i,j+1) = "T" y tablero(i,j+2) = "C" y tablero(i,j+3) = "G" Entonces
				patron1 <- patron1 + 1
			FinSi
		FinPara
	FinPara
FinFuncion

Funcion patron2 <- verificarFilasPatron2(tablero)
	Definir patron2,i,j Como Entero
	patron2 <- 0
	para i <- 0 Hasta 7 Hacer
		para j <- 0 Hasta 9 Hacer
			si tablero(i,j) = "A" y tablero(i+1,j) = "A" y tablero(i+2,j) = "A" Entonces
				patron2 <- patron2 + 1
			FinSi
		FinPara
	FinPara
FinFuncion

Funcion patron3 <- verificarFilasPatron3A(tablero)
	definir patron3,i,j Como Entero
	Definir igual Como Caracter
	patron3 <- 0
	para i <- 3 Hasta 9 Hacer
		para j <- 0 Hasta 6 Hacer
			igual <- tablero(i,j)
			si igual = tablero(i-1,j+1) y igual = tablero(i-2,j+2) y igual = tablero(i-3,j+3) Entonces
				patron3 <- patron3 + 1
			FinSi
		FinPara
	FinPara
FinFuncion

Funcion patron3 <- verificarFilasPatron3B(tablero)
	Definir patron3,i,j Como Entero
	definir igual Como Caracter
	para i <- 0 Hasta 6 Hacer
		para j <- 0 Hasta 6 Hacer
			igual <- tablero(i,j)
			si igual = tablero(i+1,j+1) y igual = tablero(i+2,j+2) y igual = tablero(i+3,j+3) Entonces
				patron3 <- patron3 + 1
			FinSi
		FinPara
	FinPara
FinFuncion
	