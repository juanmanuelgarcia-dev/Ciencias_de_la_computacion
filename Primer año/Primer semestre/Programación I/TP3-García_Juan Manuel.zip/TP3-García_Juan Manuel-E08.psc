Algoritmo calculadora
	definir operacion Como Caracter
	definir A,B,resultado Como Real
	Escribir "Ingrese la operación a realizar"
	Leer operación
	Escribir "Ingrese el primer número: "
	leer A
	Escribir "Ingrese el segundo número"
	leer B
	Si operacion = "S" o operacion = "s" Entonces
		resultado <- A + B
		Mostrar "La suma de estos números da ",resultado
	SiNo
		si operacion = "R" o operacion = "r" Entonces
			resultado <- A - B
			Mostrar "La resta de estos da ",resultado
		SiNo
			si operacion = "P" o operacion = "p" o operacion = "M" o operacion = "m" Entonces
				resultado <- A * B
				Mostrar "El producto de ambos números nos da ",resultado
			SiNo
				si operacion = "D" o operacion = "d" Entonces
					resultado = A / B
					Mostrar "La división de ambos nos da ",resultado
				SiNo
					Mostrar "Ingrese una operación válida(s para suma,r para resta,m para producto o d para división)"
			    FinSi
			FinSi
		finSi
	FinSi
FinAlgoritmo

