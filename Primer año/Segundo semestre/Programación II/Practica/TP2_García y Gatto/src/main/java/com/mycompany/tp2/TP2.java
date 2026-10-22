/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.tp2;

/**
 *
 * @author danie
 */
public class TP2 {
//MAIN
    public static void main(String[] args) {
        System.out.println("Bienvenido al kiosco");
        
        //Llamo a cada constructor con los datos de los atributos
        ListaDescuentos listadescuentos = new ListaDescuentos("2x1","con adquirir 2 productos al menos",7);
        MetodoPago metodopago = new MetodoPago("efectivo","10%",12);
        VehiculoTraslado vehiculotraslado = new VehiculoTraslado(5,"blanco",25);
        Producto producto = new Producto("aceite",500,250,vehiculotraslado);
        ListaPrecios listaprecios = new ListaPrecios("aceite",100);
        Maquinaria maquinaria = new Maquinaria(10,100f,"azul");
        Heladera heladera = new Heladera(100,250f,"blanco",1000);
        Balanza balanza = new Balanza(500f, 100f, 20, 50f, "gris");
        Local local = new Local("San Martin 50",70,5,producto,balanza,heladera);
        Cliente cliente = new Cliente("Juan",producto,listaprecios,metodopago);
        Vendedor vendedor = new Vendedor("Pablo","Cajero",local,producto,cliente,metodopago);
        
        //Pruebo getters y setters
        System.out.println("Cantidad de paginas en la lista de descuentos " + listadescuentos.getCantidadPaginas());
        listadescuentos.setCantidadPaginas(10);
        System.out.println("Páginas modificadas, la nueva cantidad es " + listadescuentos.getCantidadPaginas());
        
        System.out.println("El precio del " + listaprecios.getTipoProducto() + " es de " + listaprecios.getPrecioProductos());
        listaprecios.setPrecioProductos(110);
        System.out.println("El nuevo precio del " + listaprecios.getTipoProducto() + " sera de " + listaprecios.getPrecioProductos());
        
        //Interaccion en el programa
        vendedor.ofrecerProducto("aceite");
        listadescuentos.ayudarCliente();
        metodopago.beneficiarCompras();
        producto.enseñarCantidad();
        cliente.pagarProductos(110);
    }
}
