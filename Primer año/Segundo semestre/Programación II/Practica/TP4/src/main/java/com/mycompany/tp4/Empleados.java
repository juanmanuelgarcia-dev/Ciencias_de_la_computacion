/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tp4;

/**
 *
 * @author danie
 */
public class Empleados extends Persona{
    //Atributos
    private int id;
    
    //Constructor
    public Empleados(int id, long celular, String nombre) {
        super(celular, nombre);//Representa la herencia de persona
        this.id = id;
    }

    //Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
    public void registrarVenta(Venta venta){
        System.out.println("El empleado " + getId() + " desea registrar la venta de " + venta);
    }
    
    @Override //Override
    public void mostrarInformacion(){
        System.out.println("El empleado " + getNombre() + " tiene el id " + this.id); 
    }
}
