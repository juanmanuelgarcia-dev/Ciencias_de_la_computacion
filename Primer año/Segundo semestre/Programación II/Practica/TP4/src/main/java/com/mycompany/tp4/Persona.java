/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tp4;

/**
 *
 * @author danie
 */
public abstract class Persona {
    private long celular;
    private String nombre;
    
    public Persona(long celular, String nombre) {
        this.celular = celular;
        this.nombre = nombre;
    }

    public long getCelular() {
        return celular;
    }

    public void setCelular(long celular) {
        this.celular = celular;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public void mostrarInformacion(){
        System.out.println("El numero de celular de " + this.nombre + " es " + this.celular);
    }
}
