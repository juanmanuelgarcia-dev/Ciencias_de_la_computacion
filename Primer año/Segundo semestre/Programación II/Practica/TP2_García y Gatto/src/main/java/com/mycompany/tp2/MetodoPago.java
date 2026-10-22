/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tp2;

/**
 *
 * @author danie
 */
//Clase Metodo de pago
public class MetodoPago {
    //Atributos
    private String tipoMetodo;
    private String tipoDescuento;
    private float totalDescuento;
    
    public String getTipoMetodo(){
        return tipoMetodo;
    }
    
    //Getters y Setters
    public void setTipoMetodo(String tipoMetodo) {
        this.tipoMetodo = tipoMetodo;
    }

    public String getTipoDescuento() {
        return tipoDescuento;
    }

    public void setTipoDescuento(String tipoDescuento) {
        this.tipoDescuento = tipoDescuento;
    }

    public float getTotalDescuento() {
        return totalDescuento;
    }

    public void setTotalDescuento(float totalDescuento) {
        this.totalDescuento = totalDescuento;
    }
    
    //Constructores para los 3 atributos

    public MetodoPago(String tipoMetodo, String tipoDescuento, float totalDescuento) {
        this.tipoMetodo = tipoMetodo;
        this.tipoDescuento = tipoDescuento;
        this.totalDescuento = totalDescuento;
    }
    
    

    //Metodos
    public void obtenerDescuentos() {
        System.out.println("Puede adquirir el " + this.tipoDescuento + "abonando con " + this.tipoMetodo + " para ahorrarse la cantidad de " + this.totalDescuento + "pesos");
    }
    
    public void saldarDeuda(String requisitos){
        System.out.println("Pagando con el metodo " + this.tipoMetodo + " puede saldar su deuda ahora si cumple con " + requisitos);
    }
    
    public void beneficiarCompras(){
        System.out.println("Ahorre un 10% del total si paga con " + this.tipoMetodo);
    }
}
