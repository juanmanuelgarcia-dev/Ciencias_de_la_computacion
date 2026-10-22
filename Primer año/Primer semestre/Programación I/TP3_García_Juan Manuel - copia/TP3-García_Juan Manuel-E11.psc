Algoritmo gobierno
	Definir velocidad, velocidad_max Como Real
	escribir "Ingrese la velocidad del vehiculo: "
	Leer velocidad
	Escribir "Ingrese la velocidad máxima de la calle: "
	Leer velocidad_max
	si velocidad >= (velocidad_max + 21) y velocidad <= (velocidad_max + 30) Entonces
		Mostrar "Se le restarán dos puntos"
	SiNo
		si velocidad >= (velocidad_max + 31) y velocidad <= (velocidad_max + 40) Entonces
			Mostrar "Se le restarán tres puntos"
		SiNo
			si velocidad >= (velocidad_max * 1.5) y velocidad >= (velocidad_max + 30)
				Mostrar "Se le restarán seis puntos"
			SiNo
				si velocidad >= (velocidad_max + 41) Entonces
					Mostrar "Se le restarán cuatro puntos"
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
