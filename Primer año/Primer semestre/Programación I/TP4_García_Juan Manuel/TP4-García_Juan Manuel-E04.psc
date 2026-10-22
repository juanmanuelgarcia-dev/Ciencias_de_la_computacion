Algoritmo donacion
	definir recaudacionDeseada, aportesPrevios,donaciones, donacionActual Como Real
	recaudacionDeseada <- 100000
	Escribir "Ingrese la cantidad de aportes previos y donaciones externas: "
	leer aportesPrevios
	Si recaudacionDeseada <= aportesPrevios Entonces
		Mostrar "Se ha llegado a lo deseado"
		Mostrar "La recaudacion final fue de ",aportesPrevios
	SiNo
		Repetir
			Escribir "Ingrese las donaciones: "
			leer donaciones
			donacionActual <- donaciones + aportesPrevios
		Mientras Que recaudacionDeseada > donacionActual
		mostrar "La recaudacion final fue de ",donacionActual
	FinSi
FinAlgoritmo