Algoritmo piramidess
	Definir piramide,orden,cantidadPisos,lado,inicio,ultimo,sumaInf,sumaSup,piso Como entero
	lado <- 0
	inicio <- 0
	ultimo <- 0
	Repetir
		Escribir "Ingrese la cantidad de pisos(3 o 4): "
		leer cantidadPisos
	Mientras Que cantidadPisos < 3 o cantidadPisos > 4
	
	si cantidadPisos = 3 Entonces
		orden <- 5
	SiNo
		orden <- 7
	FinSi
	
	Dimension piramide(orden,orden)
	inicializarValores(piramide,orden)
	mostrarPiramide(piramide,orden)
	Para piso <- cantidadPisos Hasta 2 Con Paso -1 Hacer
		Escribir "Validando piso ",piso," contra piso ",piso-1
		Para lado <- 1 Hasta 4 Hacer
			sumaInf <- calcularLado(piramide,inicio,orden-1,lado)
			sumaSup <- calcularLado(piramide,inicio+1,orden-2,lado)
			determinarVertices(piramide,inicio,orden-1,lado)
			Si sumaInf < 2 * sumaSup Entonces
				Escribir "Falla en lado ",lado
				Escribir "Suma inferior: ",sumaInf," | Suma superior: ",sumaSup
			SiNo
				Escribir "Cumple regla en lado ",lado
			FinSi
		FinPara
		inicio <- inicio + 1
		orden <- orden - 1
	FinPara
	calcularPunta(piramide,orden)

FinAlgoritmo

SubProceso inicializarValores(piramide,orden)
	Definir i,j Como Entero
	para i <- 0 Hasta orden - 1 Hacer
		para j <- 0 Hasta orden - 1 Hacer
			piramide(i,j) <- Aleatorio(1,999)
		FinPara
	FinPara
FinSubProceso

SubProceso mostrarPiramide(piramide,orden)
	Definir i,j Como Entero
	para i <- 0 Hasta orden - 1 Hacer
		para j <- 0 Hasta orden - 1 Hacer
			Escribir Sin Saltar "[ ",piramide(i,j)," ]"
			Escribir Sin Saltar " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

Funcion suma <- calcularLado(piramide,inicio,final,lado)
    Definir i, suma Como Entero
    suma <- 0
    Segun lado Hacer
        1: // superior
            Para i <- inicio Hasta final - 1 Hacer
                suma <- suma + piramide(inicio,i)
            FinPara
        2: // inferior
            Para i <- inicio Hasta final - 1 Hacer
                suma <- suma + piramide(final-1,i)
            FinPara
        3: // izquierdo
            Para i <- inicio Hasta final - 1 Hacer
                suma <- suma + piramide(i,inicio)
            FinPara
        4: // derecho
            Para i <- inicio Hasta final - 1 Hacer
                suma <- suma + piramide(i,final-1)
            FinPara
    FinSegun
FinFuncion

SubProceso calcularPunta(piramide,orden)
	Definir i,j,menor Como Entero
	si orden = 5 Entonces
		menor <- piramide(2,2)
	SiNo
		menor <- piramide(3,3)
	FinSi
	para i <- 0 Hasta orden - 1 Hacer
		para j <- 0 Hasta orden - 1 Hacer
			si piramide(i,j) <> menor Entonces
				si piramide(i,j) < menor Entonces
					menor <- piramide(i,j)
				FinSi
			FinSi
		FinPara
	FinPara
	si orden = 5 Entonces
		si piramide(2,2) <> menor Entonces
			Escribir "No cumple el requisito"
		SiNo
			Escribir "Si cumple el requisito"
		FinSi
	SiNo
		si piramide(3,3) <> menor Entonces
			Escribir "No cumple el requisito"
		SiNo
			Escribir "Si cumple el requisito"
		FinSi
	FinSi
FinSubProceso

SubProceso determinarVertices(piramide,inicio,final,lado)
	Definir i Como Entero
	Segun lado Hacer
        1: // superior
            Para i <- inicio Hasta final - 1 Hacer
                si piramide(inicio,inicio) < piramide(inicio,i) Entonces
					Escribir "La esquina ",piramide(inicio,inicio)," no lo cumple"
				FinSi
				si piramide(inicio,final-1) < piramide(inicio,i) Entonces
					Escribir "La esquina ",piramide(inicio,final-1)," no lo cumple"
				FinSi
            FinPara
        2: // inferior
            Para i <- inicio Hasta final - 1 Hacer
                si piramide(final-1,inicio) < piramide(final-1,i) Entonces
					Escribir "La esquina ",piramide(final-1,inicio)," no lo cumple"
				FinSi
				si piramide(final-1,final-1) < piramide(final-1,i) Entonces
					Escribir "La esquina ",piramide(final-1,final-1)," no lo cumple"
				FinSi
            FinPara
        3: // izquierdo
            Para i <- inicio Hasta final - 1 Hacer
                si piramide(inicio,inicio) < piramide(i,inicio) Entonces
					Escribir "La esquina ",piramide(inicio,inicio)," no lo cumple"
				FinSi
				si piramide(final-1,inicio) < piramide(i,inicio) Entonces
					Escribir "La esquina ",piramide(final-1,inicio)," no lo cumple"
				FinSi
            FinPara
        4: // derecho
            Para i <- inicio Hasta final - 1 Hacer
                si piramide(inicio,final -1) < piramide(i,inicio) Entonces
					Escribir "La esquina ",piramide(inicio,final -1)," no lo cumple"
				FinSi
				si piramide(final-1,final-1) < piramide(i,inicio) Entonces
					Escribir "La esquina ",piramide(final-1,final-1)," no lo cumple"
				FinSi
            FinPara
    FinSegun
FinSubProceso
