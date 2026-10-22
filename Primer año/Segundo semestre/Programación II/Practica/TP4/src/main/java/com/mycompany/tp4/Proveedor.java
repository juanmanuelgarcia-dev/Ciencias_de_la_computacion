/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tp4;

/**
 *
 * @author danie
 */

public class Proveedor {
    //Atributos
    private String razonSocial;
    private Neumatico tipoNeumatico;
    
    //constructor
    public Proveedor(String razonSocial, Neumatico tipoNeumatico) {
        this.razonSocial = razonSocial;
        this.tipoNeumatico = tipoNeumatico;
    }
    
    
    //Getters y Setters
    public String getRazonSocial() {
        return razonSocial;
    }

    public void setRazonSocial(String razonSocial) {
        this.razonSocial = razonSocial;
    }

    public Neumatico getProducto() {
        return tipoNeumatico;
    }

    public void setProducto(Neumatico tipoNeumatico) {
        this.tipoNeumatico = tipoNeumatico;
    }
    
    //Metodos
    public void enviarPedido(){
        System.out.println("El producto " + this.tipoNeumatico + " fue enviado con éxito");
    }
}
