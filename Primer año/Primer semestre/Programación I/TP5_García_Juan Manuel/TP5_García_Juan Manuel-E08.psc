Algoritmo facultad
	definir cantidadAlumnos,notas,cantidadMaterias,i,j,notasTotal,contadorMayorA,todosDesaprobados Como Entero
	definir promedio Como Real
		Escribir "Inrese la cantidad de alumnos: "
		leer cantidadAlumnos
		mientras cantidadAlumnos > 0 Hacer
			Escribir "Ingrese la cantidad de materias: "
			leer cantidadMaterias
			para j <- 1 Hasta cantidadMaterias Hacer
				contadorMayorA <- 0
				todosDesaprobados <- 0
				para i <- 1 Hasta cantidadAlumnos con paso 1 hacer
					Escribir "Ingrese la nota en su examen: "
					leer notas
					notasTotal <- notas + notas
					si notas >= 80 Entonces
						contadorMayorA <- contadorMayorA + 1
					FinSi
					si notas < 60 Entonces
						todosDesaprobados <- todosDesaprobados + 1
					FinSi
				FinPara
				promedio <- notasTotal / cantidadAlumnos
				mostrar "El promedio de la materia ",j," es ",promedio
				Mostrar "Hubieron ",contadorMayorA," alumnos con nota superior a 80 en la materia ",j
				si todosDesaprobados = cantidadAlumnos Entonces
					Mostrar "En la materia ",j," todos desaprobaron"
				FinSi
			FinPara
		FinMientras
FinAlgoritmo
