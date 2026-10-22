Algoritmo tienda
	definir mes Como Caracter
	definir importe,total Como Real
	Escribir "Ingrese el importe de su compra: "
	Leer importe
	Escribir "Ingrese el mes de compra: "
	Leer mes
	si mes = "noviembre" o mes = "Noviembre" o mes = "Octubre" o mes = "octubre" o mes = "septiembre" o mes = "Septiembre" Entonces
		total <- importe - (importe * 15 / 100)
		Mostrar "Su total a pagar es: ",total
	SiNo
		total <- importe
		Mostrar "Su total a pagar es: ",total
	FinSi
FinAlgoritmo
