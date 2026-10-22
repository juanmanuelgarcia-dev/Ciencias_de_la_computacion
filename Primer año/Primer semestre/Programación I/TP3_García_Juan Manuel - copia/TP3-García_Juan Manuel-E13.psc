Algoritmo vehiculo
	definir km_recorrido,monto_variable,impuesto Como Real
	Definir monto_fijo Como Entero
	Escribir "Ingrese kilómetros recorridos: "
	leer km_recorrido
	monto_fijo <- 300000
	si km_recorrido <= 0 Entonces
		Escribir "Ingrese un valor de los kilómetros que recorrió realmente"
	SiNo
		si km_recorrido > 0 y km_recorrido <= 300 Entonces
			Escribir "Usted debe abornar ",monto_fijo
		SiNo
			si km_recorrido > 300 y km_recorrido <= 1000
				monto_variable <- monto_fijo + (15000 * (km_recorrido - 300)) 
				impuesto <- monto_variable - (monto_variable * 21) / 100
				Mostrar "Usted debe pagar ",monto_variable," con impuestos adicionados"
				Mostrar "El precio sería de ",impuesto," sin impuestos adicionados"
			SiNo
				si km_recorrido > 1000 Entonces
					monto_variable <- monto_fijo + (10000 * (km_recorrido - 300))
					impuesto <- monto_variable - (monto_variable * 21) / 100
					Mostrar "Usted debe pagar ",monto_variable," con impuestos adicionados"
					Mostrar "El precio sería de ",impuesto," sin impuestos adicionados"
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
