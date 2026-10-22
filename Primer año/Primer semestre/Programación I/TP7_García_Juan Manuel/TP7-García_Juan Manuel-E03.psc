Algoritmo laboral
	definir semana,kmDiarios,i,diasSuperadoPromedio Como Entero
	Definir promedioTotalKm como real
	semana <- 5
	dimension kmDiarios(5)
	cargarKMRecorridos(semana,kmDiarios)
	
	Mostrar "El total recorrido esta semana es: ",kmTotalSemanal(kmDiarios,semana)
	
	promedioTotal(semana,kmDiarios)
	
FinAlgoritmo


SubProceso cargarKMRecorridos (semana,kmDiarios Por Referencia)
	Definir i,diaSemana Como Entero
	diaSemana <- 1
	para i <- 0 Hasta semana - 1 Hacer
		Escribir "Ingrese los km recorridos en el día ",diaSemana
		leer kmDiarios(i)
		diaSemana <- diaSemana + 1
	FinPara
FinSubProceso

Funcion totalKmRecorridos <- kmTotalSemanal(kmDiarios,semana)
	definir totalKmRecorridos,i Como Entero
	totalKmRecorridos <- 0
	para i <-0 Hasta semana - 1 Hacer
		totalKmRecorridos <- totalKmRecorridos + kmDiarios(i)
	FinPara
FinFuncion

SubProceso promedioTotal(semana,kmDiarios)
	definir i,sumaTotal,diasSuperadoPromedio Como Entero
	Definir promedioTotalKm Como Real
	sumaTotal <- 0
	diasSuperadoPromedio <- 0
	promedioTotalKm <- 0
	para i <- 0 Hasta semana - 1 Hacer
		sumaTotal <- sumaTotal + kmDiarios(i)
	FinPara
	promedioTotalKm <- sumaTotal / 5
	Mostrar "El promedio total fue de: ",promedioTotalKm
	para i <- 0 Hasta semana -1 Hacer
		si kmDiarios(i) > promedioTotalKm Entonces
			diasSuperadoPromedio <- diasSuperadoPromedio + 1
		FinSi
	FinPara
	Mostrar "El promedio fue superado ",diasSuperadoPromedio," dias"
FinSubProceso


