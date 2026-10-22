Algoritmo focos
	Definir interruptorA,interruptorB,interruptorC Como Entero
	Escribir "Ingrese el estado del interruptor A"
	Leer interruptorA
	Escribir "Ingrese el estado del interruptor B"
	Leer interruptorB
	Escribir "Ingrese el estado del interruptorC"
	Leer interruptorC
	si interruptorA = 1 y interruptorB = 1 o interruptorA = 1 y interruptorC = 1 o interruptorB = 1 y interruptorC = 1 Entonces
		Mostrar "El sistema funciona"
	SiNo
		si interruptorA = 0 y interruptorB = 0 y interruptorC = 1 Entonces
			Mostrar "El sistema no funciona por interruptor A e interruptor B"
		SiNo
			si interruptorA = 0 y interruptorC = 0 y interruptorB = 1 Entonces
				Mostrar "El sistema no funciona por interruptor A e interruptor y C"
			SiNo
				si interruptorB = 0 y interruptorC = 0 y interruptorA = 1 Entonces
					Mostrar "El sistema no funciona por interruptor A e interruptor y C"
				SiNo
					Mostrar "El sistema no funciona por interruptor A, interruptor B e interruptor C"
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
