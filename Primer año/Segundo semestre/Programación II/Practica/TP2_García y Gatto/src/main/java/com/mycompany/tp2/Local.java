/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tp2;

/**
 *
 * @author danie
 */
//Clase local
public class Local {
    //Atributos
    private String direccion;
    private int tamañoLocal;
    private int cantidadHabitaciones;
    //Planteamos la asociación del producto y el local,local y heladera, local y balanza
    private Producto Producto;
    private Balanza Balanza;
    private Heladera Heladera;
    
    //Getters y Setters

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getTamañoLocal() {
        return tamañoLocal;
    }

    public void setTamañoLocal(int tamañoLocal) {
        this.tamañoLocal = tamañoLocal;
    }

    public int getCantidadHabitaciones() {
        return cantidadHabitaciones;
    }

    public void setCantidadHabitaciones(int cantidadHabitaciones) {
        this.cantidadHabitaciones = cantidadHabitaciones;
    }

    public Producto getProducto() {
        return Producto;
    }

    public void setProducto(Producto Producto) {
        this.Producto = Producto;
    }

    public Balanza getBalanza() {
        return Balanza;
    }

    public void setBalanza(Balanza Balanza) {
        this.Balanza = Balanza;
    }

    public Heladera getHeladera() {
        return Heladera;
    }

    public void setHeladera(Heladera Heladera) {
        this.Heladera = Heladera;
    }
    
    
    
    //Constructor
    public Local(String direccion, int tamañoLocal, int cantidadHabitaciones, Producto Producto, Balanza Balanza, Heladera Heladera) {    
        this.direccion = direccion;
        this.tamañoLocal = tamañoLocal;
        this.cantidadHabitaciones = cantidadHabitaciones;
        this.Producto = Producto;
        this.Balanza = Balanza;
        this.Heladera = Heladera;
    }

    //Metodos
    public void atraerClientes(String color) {
        System.out.println("Vengan al local de color " + color + " en el centro ubicado en " + this.direccion + " pueden disfrutar de nuestras " + this.cantidadHabitaciones + " salas de productos");
    }
    
    public void almacenar(){
        System.out.println("En nuestro local de tamaño " + this.tamañoLocal + " metros, almacenamos en una de todas nuestras " + this.cantidadHabitaciones + " el total de " + this.Producto);
    }
    
    public void enseñarProductos(int tipoProductos){
        System.out.println("Pase por la dirección " + this.direccion + " para encontrar más de " + tipoProductos + " tipo de productos diferentes en la " + this.Heladera);
    }
    
}
