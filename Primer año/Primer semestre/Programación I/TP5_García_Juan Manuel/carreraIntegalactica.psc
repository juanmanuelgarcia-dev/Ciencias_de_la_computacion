Algoritmo carreraIntegalactica
	Definir cantidadPlanetas,turnos,desafio,i,j,dificultad,totalDificultad,totalPlanetas,maxDificultad,diferencia,k como entero
	definir promedio como real
	
	//Inicializo variables
	j<- 0
	cantidadPlanetas <- 0
	totalPlanetas <- 0
	maxDificultad <- 0
	k <- 1
	
	//Bucle principal
	Repetir
		j <- j + 1
		Escribir "Usted está en el turno ",j," ingrese la cantidad de planetas a jugar (1 a 7 para jugar) o 0 para finalizar: "
		leer cantidadPlanetas
		totalDificultad <- 0
		
		//Validar la entrada
		si cantidadPlanetas = 0 Entonces
			Mostrar "Gracias por jugar"
			totalPlanetas <- 26
		SiNo
			totalPlanetas <- totalPlanetas + cantidadPlanetas
			Mientras cantidadPlanetas < 1 o cantidadPlanetas > 7 o totalPlanetas > 25  Hacer
				Escribir "Ingrese la cantidad de planetas pedidos para jugar (1 a 7) y hay un limite de 25 planetas o 0 para finalizar: "
				leer cantidadPlanetas
			FinMientras
			
			//Calculo el desafío en cada planeta
			Para i <- 1 Hasta cantidadPlanetas con paso 1 Hacer
				dificultad <- Aleatorio(1, 100)
				si dificultad > maxDificultad Entonces
					maxDificultad <- dificultad
				FinSi
				
		//Con un condicional clasificamos la dificultad
				si dificultad < 30 Entonces
					Mostrar "El planeta ",k," tiene dificultad de ",dificultad," (Desafío: Fácil)"
				SiNo
					si dificultad >= 30 y dificultad < 60 Entonces
						Mostrar "El planeta ",k," tiene dificultad de ",dificultad," (Desafío: Intermedio)"
					SiNo
						si dificultad >= 60 y dificultad < 90 Entonces
							Mostrar "El planeta ",k," tiene dificultad de ",dificultad," (Desafío: Difícil)"
						SiNo
							Mostrar "El planeta ",k," tiene dificultad de ",dificultad," (Desafío: Extremo)"
						FinSi
					FinSi
				FinSi
				totalDificultad <- totalDificultad + dificultad
				
				k <- k + 1
				si k > 7 Entonces
					k <- 1
				FinSi
			FinPara
			
			//Calculamos el promedio
			promedio <- totalDificultad / cantidadPlanetas
			Mostrar "El promedio de dificultad en el turno ",j," es de: ",promedio
			
			//Calculamos la mayor dificultad
			Mostrar "La máxima dificultad del turno ",j," es: ",maxDificultad
			
			//Calculamos la cantidadPlanetas de planetas
			Mostrar "El total de planetas que lleva en el turno ",j," es de: ",totalPlanetas
		FinSi
	Mientras Que totalPlanetas <= 25
FinAlgoritmo
