Algoritmo sumaPalabras
	definir frase,palabra Como Caracter
	definir i,contadorPalabras Como Entero
	contadorPalabras <- 1
	Escribir "Ingrese la frase: "
	leer frase
	Escribir "La longitud de la frase es: ",Longitud(frase)
	
	para i <- 0 Hasta Longitud(frase) - 1 Hacer
		si (Subcadena(frase,i,i)) = " " Entonces
			contadorPalabras <- contadorPalabras + 1
		FinSi
	FinPara
	Mostrar "La frase tiene ",contadorPalabras," palabras"
FinAlgoritmo
