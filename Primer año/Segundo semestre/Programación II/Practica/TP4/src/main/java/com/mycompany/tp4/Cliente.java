/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tp4;

/**
 *
 * @author danie
 */

import java.util.ArrayList;
import java.util.List;

public class Cliente extends Persona{
    //Atributos
    private int dni;
    private List<String> compras = new ArrayList<>();
    //Constructores

    public Cliente(int dni, long celular, String nombre) {
        super(celular, nombre);//Representa la herencia
        this.dni = dni;
    }
    
  
    //Getters y Setters
    public int getDni() {
        return dni;
    }

    public void setDni(int dni) {
        this.dni = dni;
    }

    public List<String> getCompras() {
        return compras;
    }

    public void setCompras(List<String> compras) {
        this.compras = compras;
    }
    
    //Metodo
    public void agregarCompra(String compra){
        this.compras.add(compra);
        System.out.println("La compra fue agregada con éxito");
    }
    
    @Override //Otro override
    public void mostrarInformacion(){
        System.out.println("El cliente " + getNombre() + " tiene el dni " + this.dni);
    }
}
