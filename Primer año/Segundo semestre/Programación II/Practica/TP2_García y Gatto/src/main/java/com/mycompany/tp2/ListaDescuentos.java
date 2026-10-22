/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.tp2;

/**
 *
 * @author danie
 */
//Clase lista de descuentos
public class ListaDescuentos {
    //Atributos
    private String tipoDescuento;
    private String Requisitos;
    private int cantidadPaginas;
    
    //Getters y Setters
    public String getTipoDescuento() {
        return tipoDescuento;
    }

    public void setTipoDescuento(String tipoDescuento) {
        this.tipoDescuento = tipoDescuento;
    }

    public String getRequisitos() {
        return Requisitos;
    }

    public void setRequisitos(String Requisitos) {
        this.Requisitos = Requisitos;
    }

    public int getCantidadPaginas() {
        return cantidadPaginas;
    }

    public void setCantidadPaginas(int cantidadPaginas) {
        this.cantidadPaginas = cantidadPaginas;
    }
    
    //Constructor para los 3 atributos
    public ListaDescuentos(String tipoDescuento, String Requisitos, int cantidadPaginas) {
        this.tipoDescuento = tipoDescuento;
        this.Requisitos = Requisitos;
        this.cantidadPaginas = cantidadPaginas;
    }
    
    //Métodos
    public void ayudarCliente(){
        System.out.println("Puede adquirir el descuento " + this.tipoDescuento+ " si cumple " + this.Requisitos);
    }
    
    public void enseñarDescuento(String nombre,int cantidadPaginas){
        System.out.println("El cliente " + nombre + " esta buscando un descuento en alguna de las " + this.cantidadPaginas + "paginas");
        
    }
    
    public void motivarVentas(String tipoDescuento, String Requisitos){
        System.out.println("Adquiera ya el descuento del producto " + this.tipoDescuento + "cumpliendo " + this.Requisitos);
    }
}
