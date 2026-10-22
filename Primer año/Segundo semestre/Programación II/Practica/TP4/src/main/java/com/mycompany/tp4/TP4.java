/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.tp4;

/**
 *
 * @author danie
 */
//TP4 Gatto y Garcia
import java.util.Scanner;
import java.util.InputMismatchException;
import java.util.Date;

public class TP4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        CasaNeumaticos casa = new CasaNeumaticos("Casa Neumatios S.A.");
        int opcion;
        System.out.println("Bienvenido a casa Neumáticos");
        System.out.println("Seleccione la opción que desee: ");
        do{
            System.out.println("1. Agregar empleados");
            System.out.println("2. Eliminar empleados");
            System.out.println("3. Agregar clientes");
            System.out.println("4. Eliminar clientes");
            System.out.println("5. Agregar proveedores");
            System.out.println("6. Eliminar proveedores");
            System.out.println("7. Realizar factura");
            System.out.println("8. Registrar Neumatico");
            System.out.println("9. Salir");
            System.out.println("Ingrese una opcion: ");
            opcion = sc.nextInt();
            sc.nextLine();
            switch (opcion){
                
                case 1:
                    //Si elegimos la opcion 1, validamos que no se genere un error de valor
                    try{
                        System.out.println("Ingrese el id del empleado");
                        int id = sc.nextInt();
                        System.out.println("Ingrese el teléfono");
                        long celular = sc.nextLong();
                        sc.nextLine();
                        System.out.println("Ingrese el nombre del empleado");
                        String nombre = sc.nextLine();
                        //Instancio la clase empleado
                        Empleados nuevoEmpleado = new Empleados(id,celular,nombre);
                        nuevoEmpleado.mostrarInformacion(); //Muestro la info del empleado que agregaré al arraylist
                        casa.agregarEmpleado(nuevoEmpleado);
                    }catch (InputMismatchException e){
                        System.out.println("Ingrese valores enteros");
                        sc.nextLine();
                    }
                    break;
                    
                case 2:
                    //Si elegimos la opcion 2, validamos que no se genere un error de valor
                    //y que no se genere un error en busqueda
                    try{
                        System.out.println("Ingrese el id del empleado a eliminar");
                        int id = sc.nextInt();
                        sc.nextLine();
                        casa.eliminarEmpleado(id);//Elimino el empleado del arraylist si existe
                    }catch (EmpleadoNoEncontradoException e){
                        System.out.println(e.getMessage());
                    }catch (InputMismatchException e){
                        System.out.println("Ingrese valores enteros");
                        sc.nextLine();
                    }
                    break;
                    
                case 3:
                    //si elejimos la opcion 3, validamos que no se genere error en el ingreso de valores
                    try{
                        System.out.println("Ingrese el dni del cliente");
                        int dni = sc.nextInt();
                        sc.nextLine();
                        System.out.println("Ingrese el teléfono");
                        long celular = sc.nextLong();
                        sc.nextLine();
                        System.out.println("Ingrese el nombre del cliente");
                        String nombre = sc.nextLine();
                        //Instancio a cliente
                        Cliente nuevoCliente = new Cliente(dni,celular,nombre);
                        nuevoCliente.mostrarInformacion();//Llamo al polimorfismo desde el main
                        casa.agregarClientes(nuevoCliente);
                    }catch (InputMismatchException e){
                        System.out.println("Ingrese valores enteros");
                        sc.nextLine();
                    }
                    break;
                    
                case 4:
                    //Si elegimos la opcion 4, validamos que no se genere un error de valor
                    //y que no se genere un error en busqueda
                    try {
                        System.out.println("Ingrese el dni del cliente a eliminar");
                        int dni = sc.nextInt();
                        sc.nextLine();
                        casa.eliminarCliente(dni);//Elimino el cliente del arraylist si existe
                    }catch (ClienteNoEncontradoException e) {
                        System.out.println(e.getMessage());
                    }catch (InputMismatchException e){
                        System.out.println("Ingrese valores enteros");
                        sc.nextLine();
                    }
                    break;
                case 5:
                    //Si elegimos la opcion 5, tuve que instanciar a neumatico ya que debía pasarlo por parámetro para instanciar proveedor
                    //por esa razón use la excepción para validar que ingrese enteros
                    try{
                        System.out.println("Ingrese la razon social");
                        String razonSocial = sc.nextLine();
                        System.out.println("Ingrese el tipo de marca de neumaticos que vende el proveedor");
                        String marca = sc.nextLine();
                        System.out.println("Ingrese el stock que el proveedor es capaz de aportar");
                        int stock = sc.nextInt();
                        sc.nextLine();
                        Neumatico tipoNeumatico = new Neumatico(marca,stock);
                        Proveedor nuevoProveedor = new Proveedor(razonSocial,tipoNeumatico);
                        casa.agregarProveedor(nuevoProveedor); //Agrego el proveedor al arraylist
                    }catch (InputMismatchException e){
                        System.out.println("Ingrese valores enteros");
                        sc.nextLine();
                    }
                    break;
                case 6:
                    //Si elegimos 6, elimino al proveedor como he trabajado anteriormente
                    try{
                        System.out.println("Ingrese la razon social del proveedor a eliminar");
                        String razonSocial = sc.nextLine();
                        casa.eliminarProveedor(razonSocial);//Elimino el proveedor del arraylist si existe
                    }catch (ProveedorNoEncontradoException e) {
                        System.out.println(e.getMessage());
                    }
                    break;
                    
                case 7:
                    //Para realizar factura debo instanciar venta primero para pasarlo por parametro
                    try{
                        
                        Date fecha = new Date(); //Usamos la fecha del dia(tuve que investigarlo)
                        
                        //Pedimos los valores para instanciar empleado
                        System.out.println("Ingrese el id del empleado");
                        int id = sc.nextInt();
                        System.out.println("Ingrese el teléfono");
                        long celularEmpleado = sc.nextLong();
                        sc.nextLine();
                        System.out.println("Ingrese el nombre del empleado");
                        String nombreEmpleado = sc.nextLine();
                        
                        //Pedimos los valores para instanciar cliente
                        System.out.println("Ingrese el dni del cliente");
                        int dni = sc.nextInt();
                        sc.nextLine();
                        System.out.println("Ingrese el teléfono");
                        long celularCliente = sc.nextLong();
                        sc.nextLine();
                        System.out.println("Ingrese el nombre del cliente");
                        String nombreCliente = sc.nextLine();
                        
                        //Pedimos los valores de neumatico para instanciarlo
                        System.out.println("Ingrese la marca de neumatico");
                        String marca = sc.nextLine();
                        System.out.println("Ingres el stock");
                        int stock = sc.nextInt();
                        sc.nextLine();
                        
                        //Pedimos el total de la venta para iniciar el constructor
                        System.out.println("Ingrese el total de la venta");
                        double total = sc.nextDouble();
                       
                        //Intsancio estas clases ya que son parámetros de venta
                        Empleados ventaDeEmpleado = new Empleados(id,celularEmpleado,nombreEmpleado);
                        Cliente compraDeCliente = new Cliente(dni,celularCliente,nombreCliente);
                        Neumatico productoComprado = new Neumatico(marca,stock);
                        
                        //Instancio la venta para realizar la facutra
                        Venta ventaRealizada = new Venta(fecha,compraDeCliente,ventaDeEmpleado,total,productoComprado);
                        
                        System.out.println("Ingrese el descuento: ");
                        int descuento = sc.nextInt();
                        sc.nextLine();
                        
                        //Llamo a las dos dobrecargas desde el main, una para calcular el total con descuento
                        //Otra sobrecarga para registrar la venta
                        double totalConDescuento = ventaRealizada.getFactura().calcularTotal(total, descuento);
                        
                        //registro la venta realizada
                        ventaRealizada.registrarVenta(totalConDescuento);
                        
                        //Realizo la factura con la instanciacion de venta
                        ventaRealizada.getFactura().imprimirFactura();
                        
                    }catch (InputMismatchException e){
                        System.out.println("Ingrese valores enteros");
                        sc.nextLine();
                    }
                    break;
                    
                case 8:
                    try{
                        //Pido los valores para instanciar neumatico
                        System.out.println("Ingrese la marca del neumatico");
                        String marca = sc.nextLine();
                        System.out.println("Ingrese el stock del neumatico");
                        int stock = sc.nextInt();
                        
                        //Instancio neumatico
                        Neumatico nuevoIngreso = new Neumatico(marca,stock);
                        
                        //Llamo al metodo registrar en casa neumaticos para ingresar el nuevo ingreso de neumaticos
                        casa.registrarNeumatico(nuevoIngreso);
                        
                    }catch (InputMismatchException e){
                        System.out.println("Ingrese valores enteros");
                        sc.nextLine();
                    }
                //Terminamos el programa
                case 9:
                    System.out.println("Gracias por confiar en nuestro sistema");
                    break;
                    
                //Si ingresa una opcion que no existe entonces se ejecuta default
                default:
                    System.out.println("Opcion invalida. Ingrese una del menu");
                    break;
            }
        } while (opcion != 9);
    }
}
