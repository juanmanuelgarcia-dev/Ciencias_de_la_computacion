/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tp2;

/**
 *
 * @author danie
 */
//Clase padre maquinaria
public class Maquinaria {
    //Atributos
    private int tamaño;
    private float electricidadConsumida;
    private String color;

    //Defino el constructor
    public Maquinaria(int tamaño, float electricidadConsumida, String color) {
        this.tamaño = tamaño;
        this.electricidadConsumida = electricidadConsumida;
        this.color = color;
    }
    
    //Getters y Setters

    public int getTamaño() {
        return tamaño;
    }

    public void setTamaño(int tamaño) {
        this.tamaño = tamaño;
    }

    public float getElectricidadConsumida() {
        return electricidadConsumida;
    }

    public void setElectricidadConsumida(float electricidadConsumida) {
        this.electricidadConsumida = electricidadConsumida;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }
    
    //Metodos
    public void enseñarInfo(){
        System.out.println("Maquinaria - color " + this.color + " Maquinaria - Consumo " + this.electricidadConsumida + " Maquinaria - Tamaño " + this.tamaño);
    }
   
    public void resolverProblemas(String problema,String tipoMaquinaria){
        System.out.println("La maquinaria " + tipoMaquinaria + " nos facilitó el problema de " + problema);
    }
    
    public void ayudarVendedor(String tipoMaquinaria){
        System.out.println("La maquinaria " + tipoMaquinaria + " nos ayudó a vender más");
    }
}

