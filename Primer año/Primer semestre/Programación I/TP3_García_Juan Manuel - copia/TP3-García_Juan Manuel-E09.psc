Algoritmo dominio
	definir i Como Real
	Escribir "Ingrese un número de 0 a 9999"
	Leer i
	//Valido dominio
	si i < 0 o i > 10000 Entonces
		Mostrar "El número no pertenece al dominio"
	SiNo
		Mostrar "El número pertenece al dominio"
		//Verifico múltiplos
		si i % 2 = 0 Entonces
			Mostrar "El número es múltiplo de 2"
		FinSi
		si i % 3 = 0 Entonces
			Mostrar "El número es múltiplo de 3"
		FinSi
		si i % 5 = 0 Entonces
			Mostrar "El número es múltiplo de 5"
		FinSi
		si i % 2 <> 0 y i % 3 <> 0 y i % 5 <> 0 Entonces
			Mostrar "El número no es múltiplo ni de 2, ni de 3, ni de 5"
		FinSi
	FinSi
FinAlgoritmo

