package com.mycompany.tp2;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author danie
 */
//Clase vehiculo de traslado
public class VehiculoTraslado {
    //Atributos
    private int tamaño;
    private String color;
    private int cantidadAlmacenamiento;
    
    //Getters y Setters
    public int getTamaño() {
        return tamaño;
    }

    public void setTamaño(int tamaño) {
        this.tamaño = tamaño;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getCantidadAlmacenamiento() {
        return cantidadAlmacenamiento;
    }

    public void setCantidadAlmacenamiento(int cantidadAlmacenamiento) {
        this.cantidadAlmacenamiento = cantidadAlmacenamiento;
    }

    //Constructores
    public VehiculoTraslado(int tamaño, String color, int cantidadAlmacenamiento) {
        this.tamaño = tamaño;
        this.color = color;
        this.cantidadAlmacenamiento = cantidadAlmacenamiento;
    }
    
    
    //Metodos
    public void acelerar(String nombre){
        System.out.println("El vehiculo de color " + this.color + " de tamaño " + this.tamaño + " acelera muy rápido, se lo compré a " + nombre);
    }
    
    public void frenar(){
        System.out.println("El vehiculo de color " + this.color + " frena muy rápido con una carga de " + this.cantidadAlmacenamiento + " cajas");
    }
    
    public void almacenar(){
        System.out.println("Este vehículo es de tamaño " + this.tamaño + " metros y puede cargar hasta " + this.cantidadAlmacenamiento + " cajas");
    }
  }
