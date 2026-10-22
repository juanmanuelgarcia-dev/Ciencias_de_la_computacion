//Datos entrada: lugares ocupados,pisos y plazas
//Datos salida: Calcular plazas ocupadas,deerminar que piso tiene mayor lugar, contador piso vacio, Mostrar estacionamiento en forma matricial
Algoritmo estacionamiento
	Definir matriz,pisos,plazas Como Entero
	
	Repetir
		Escribir "Ingrese la cantidad de pisos: "
		leer pisos
		Escribir "Ingrese la cantidad de plazas: "
		leer plazas
	Mientras Que plazas < 1 o pisos < 1
	
	Dimension matriz(pisos,plazas)
	
	cargarValoresEstacionamiento(matriz,pisos,plazas)
	
	plazasOcupadas(matriz,pisos,plazas)
	
	si pisoCompletamenteVacio(matriz,pisos,plazas) = 1 Entonces
		Mostrar "Existe al menos un piso completamente vacio"
	SiNo
		Mostrar "Todos los pisos tienen al menos un lugar ocupado"
	FinSi
	
FinAlgoritmo

SubProceso cargarValoresEstacionamiento(matriz,pisos,plazas)
	Definir i,j Como Entero
	para i <- 0 Hasta pisos - 1 Hacer
		para j <- 0 Hasta plazas - 1 Hacer
			matriz(i,j) <- Aleatorio(0,1)
			Escribir Sin Saltar matriz(i,j)
			Escribir Sin Saltar " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso plazasOcupadas(matriz,pisos,plazas)
	definir i,j,contadorMasOcupada,pisoMasOcupado,Ocupados,contadorTotalOcupados Como Entero
	contadorMasOcupada <- 0
	pisoMasOcupado <- 0
	Ocupados <- 0
	contadorTotalOcupados <- 0
	para i <- 0 Hasta pisos - 1 Hacer
		para j <- 0 Hasta plazas - 1 Hacer
			si matriz(i,j) = 1 Entonces
				contadorMasOcupada <- contadorMasOcupada + 1
				contadorTotalOcupados <- contadorTotalOcupados + 1
			FinSi
		FinPara
		si contadorMasOcupada > Ocupados Entonces
			Ocupados <- contadorMasOcupada
			pisoMasOcupado <- i + 1
		FinSi
	FinPara
	Mostrar "Hay ",contadorTotalOcupados," lugares ocupados"
	Mostrar "El piso mas ocupado es el ",pisoMasOcupado
FinSubProceso

funcion pisoVacio <- pisoCompletamenteVacio(matriz,pisos,plazas)
	definir pisoVacio,i,j,contadorPisosVacios Como Entero
	pisoVacio <- 0
	para i <- 0 Hasta pisos - 1 Hacer
		contadorPisosVacios <- 0
		para j <- 0 Hasta plazas Con Paso - 1 Hacer
			si matriz(i,j) = 0 Entonces
				contadorPisosVacios <- contadorPisosVacios + 1
			FinSi
		FinPara
		si contadorPisosVacios = plazas Entonces
			pisoVacio <- 1
		FinSi
	FinPara
FinFuncion
	