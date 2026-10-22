Algoritmo hospital
	definir tiempoGuardia,cantidadPacientes,tiempoPaciente,tiempoMenor Como Entero
	Definir continuarGuardia como logico
	tiempoMenor <- 0
	continuarGuardia <- Verdadero
	tiempoGuardia <- 0
	cantidadPacientes <- 0
	Mientras continuarGuardia = Verdadero Hacer
			Repetir
				Escribir "Ingrese el tiempo total de atención del paciente (0 para terminar la guardia) :"
				leer tiempoPaciente
				tiempoGuardia <- tiempoGuardia + tiempoPaciente
				cantidadPacientes <- cantidadPacientes + 1
				si tiempoPaciente < 20 Entonces
					tiempoMenor <- tiempoMenor + 1
				FinSi
			mientras que tiempoPaciente <> 0
			Mostrar "El tiempo total de la guardia fue de ",tiempoGuardia," minutos"
			si tiempoMenor = cantidadPacientes Entonces
				Mostrar "En esta guardia ningun paciente superó los 20 minutos"
			FinSi
			si cantidadPacientes <= 5 Entonces
				continuarGuardia <- Falso
			FinSi
	FinMientras
FinAlgoritmo
