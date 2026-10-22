Algoritmo contar
	definir fraseIngresada,nuevaFrase Como Caracter
	Definir i,LongitutTotal,contadorVocales Como Entero
	Escribir "Ingrese una frase o palabra: "
	leer fraseIngresada
	
	LongitutTotal <- Longitud(fraseIngresada)
	contadorVocales <- 0
	
	para i <- 1 Hasta LongitutTotal Con Paso 1 Hacer
		nuevaFrase <- Minusculas(Subcadena(fraseIngresada,i,i))
		
		si nuevaFrase = "a" o nuevaFrase = "e" o nuevaFrase = "i" o nuevaFrase = "o" o nuevaFrase = "u" Entonces
			contadorVocales <- contadorVocales + 1
		FinSi
	FinPara
	Mostrar "La cantidad de vocales en la frase es de ",contadorVocales," vocales"
FinAlgoritmo

	