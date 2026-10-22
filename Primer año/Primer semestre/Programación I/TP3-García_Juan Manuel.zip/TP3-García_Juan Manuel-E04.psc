Algoritmo guillermio
	definir temperatura, presion Como Real
	Escribir "Ingrese la temperatura: "
	Leer temperatura
	Escribir "Ingrese la presion: "
	Leer presion
	si temperatura = 1000 y presion <= 980 Entonces
		Mostrar "Es un sólido"
	SiNo
		si temperatura = 1000 y presion > 980 y presion <= 1250 Entonces
			mostrar "Es un líquido"
		SiNo
			si temperatura = 1000 y presion > 1250 y presion <= 1575 Entonces
				Mostrar "Es un gas"
			SiNo
				Mostrar "Ingrese valores válidos"
			FinSi
		FinSi
	FinSi
FinAlgoritmo
