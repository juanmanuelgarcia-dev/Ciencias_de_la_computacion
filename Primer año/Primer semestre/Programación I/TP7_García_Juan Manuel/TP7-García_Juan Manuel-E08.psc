
Funcion resultado <- CodificarVocal(vocal)
	Definir resultado Como Caracter
		Segun vocal Hacer
			'a': resultado <- "@"
			'e': resultado <- "#"
			'i': resultado <- "$"
			'o': resultado <- "%"
			'u': resultado <- "*"
			De Otro Modo: resultado <- vocal
		FinSegun
FinFuncion

Algoritmo Ejercicio8
    Definir frase, codificada, letra, vocales Como Cadena
    Definir i,j, largo, maxRep, contActual Como Entero
    Definir vocalMasRep Como Cadena
    
    // Ingresar frase terminada en punto
    Escribir "Ingrese una frase terminada en punto (.):"
    Leer frase
    
    // Contar cuál vocal se repite más
    vocales <- "aeiou"
    maxRep <- 0
    vocalMasRep <- ""
    largo <- Longitud(frase)
    
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        contActual <- 0
        Para j <- 1 Hasta largo Con Paso 1 Hacer
            Si Subcadena(frase, j, j) = Subcadena(vocales, i, i) Entonces
                contActual <- contActual + 1
            FinSi
        FinPara
        Si contActual > maxRep Entonces
            maxRep <- contActual
            vocalMasRep <- Subcadena(vocales, i, i)
        FinSi
    FinPara
    
    // Codificar la frase
    codificada <- ""
    Para i <- 1 Hasta largo Con Paso 1 Hacer
        letra <- Subcadena(frase, i, i)
        codificada <- Concatenar(codificada, CodificarVocal(letra))
    FinPara
    
    // Mostrar resultados
    Escribir "Frase codificada:"
    Escribir codificada
    Escribir ""
    Escribir "La vocal más repetida es la ", vocalMasRep," que aparece ", maxRep, " veces"
    
FinAlgoritmo
