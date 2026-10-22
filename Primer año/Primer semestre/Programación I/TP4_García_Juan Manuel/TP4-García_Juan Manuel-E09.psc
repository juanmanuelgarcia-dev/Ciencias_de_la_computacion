Algoritmo hamburguesas
	definir cantidad,precio,simple,doble,triple,i,formaDePago,total,precioTriple,precioDoble,precioSimple Como Entero
	definir tamaño Como caracter
	cantidad <- 0
	Escribir "Ingrese la cantidad de hamburguesas que desea adquirir: "
	leer cantidad
	simple <- 0
	doble <- 0
	triple <- 0
	si cantidad > 0 Entonces
		Para i <- 1 hasta cantidad con paso 1 Hacer
		escribir "Ingrese que hamburuesa desea comprar, T(triple),S(simple),D(doble): "
		leer tamaño
			si tamaño = "S" o tamaño = "s" Entonces
			simple = simple + 1
			sino
				si tamaño = "D" o tamaño = "d" Entonces
				doble <- doble + 1
				SiNo
					si tamaño = "T" o tamaño = "t" Entonces
					triple <- triple + 1
					FinSi
				FinSi
			FinSi
		FinPara
		precioTriple <- triple * 6400
		precioDoble <- doble * 5900
		PrecioSimple <- simple * 4000
		total <- precioTriple + precioDoble + precioSimple
		Escribir "Ingrese la forma de pago, 1 con tarjeta o 2 con efectivo: "
		leer formaDePago
		si formaDePago = 1 Entonces
			total <- total + (total * 10) / 100
			Mostrar "Usted debe pagar ",total
		SiNo
			si formaDePago = 2 Entonces
				total <- total - (total * 5) / 100
				Mostrar "Usted debe pagar ",total
			SiNo
				Mostrar "Ingrese otra forma de pago"
			FinSi
		FinSi
	FinSi
FinAlgoritmo
