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
	