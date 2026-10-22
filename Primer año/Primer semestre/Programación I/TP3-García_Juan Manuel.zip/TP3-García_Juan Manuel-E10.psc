Algoritmo supermercado
	definir docenas,regalo Como Entero
	definir importe,total Como Real
	Escribir "Ingrese las docenas que lleva"
	leer docenas
	Escribir "Ingrese el importe"
	Leer importe
	si docenas > 0 y docenas < 3 Entonces
		total <- importe - (importe * 10 / 100)
		Mostrar "Su importe es de ",importe," ,su descuento es del 10%, asi que su total es de ",total," y no tiene unidades de regalo"
	SiNo
		si docenas >= 3 Entonces
			total <- importe - (importe * 15 / 100)
			regalo <- docenas
			Mostrar "Su importe es de ",importe," ,su decuento fue del 15%, asi que su total es de ",total," ,sus unidades de regalo son ",regalo
		SiNo
			Mostrar "Ingrese cantidad de docenas válida"
		FinSi
	FinSi
FinAlgoritmo

