Algoritmo SumaDigitos
    Definir numeroPositivo, copiaNumero, digito, posicion Como Entero
    Definir suma_impares, suma_pares Como Entero
    Escribir "Ingrese un número natural N:"
    Leer numeroPositivo
    // Caso de un solo dígito
    Si numeroPositivo < 10 Entonces
        Escribir "Suma posiciones impares: 0"
        Escribir "Suma posiciones pares: ", N
        Escribir "No son iguales"
    Sino
        copiaNumero = numeroPositivo
        suma_impares = 0
        suma_pares = 0
        posicion = 1
        Mientras copiaNumero > 0 Hacer
            digito = copiaNumero MOD 10
            Si posicion MOD 2 <> 0 Entonces
                suma_impares = suma_impares + digito
            Sino
                suma_pares = suma_pares + digito
            FinSi
            copiaNumero = TRUNC(copiaNumero / 10)
            posicion = posicion + 1
        FinMientras
        Escribir "Suma posiciones impares: ", suma_impares
        Escribir "Suma posiciones pares: ", suma_pares
        Si suma_impares = suma_pares Entonces
            Escribir "Son iguales"
        Sino
            Escribir "No son iguales"
        FinSi
    FinSi
FinAlgoritmo
