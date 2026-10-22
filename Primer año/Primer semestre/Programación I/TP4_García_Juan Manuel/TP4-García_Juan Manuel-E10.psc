Algoritmo numeros
	definir numeroIngresado,copiaNumeroIngresado,invertido,digito Como Entero
	invertido <- 0
	escribir "Ingrese un numero entero Positivo: "
	leer numeroIngresado
	copiaNumeroIngresado <- numeroIngresado
	mientras copiaNumeroIngresado > 0 Hacer
		digito <- copiaNumeroIngresado % 10
		invertido <- invertido * 10 + digito
		copiaNumeroIngresado <- trunc(copiaNumeroIngresado / 10)
	FinMientras
	si copiaNumeroIngresado = invertido Entonces
		Mostrar "El numero ya era capicua"
	SiNo
		Mostrar "El numero invertido es ",invertido 
	FinSi
FinAlgoritmo
