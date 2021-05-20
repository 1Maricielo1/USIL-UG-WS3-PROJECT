/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import Beans.Beans_Prestamo;
import Connections.Connection_Biblioteca;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author Insaw
 */
public class Model_Prestamo {
    
     public List<Beans_Prestamo>getListadoPrestamo(){
        
        try{
            List<Beans_Prestamo>lst=new ArrayList<Beans_Prestamo>(); //crear la lista objetos de tipo curso
            ResultSet resultSet; //recorrer consulta SQL y pasarla al List
            PreparedStatement s = Connection_Biblioteca.obtenerConexion().prepareStatement("SELECT claveprestamo,fecha_prestamo,fecha_devolucion,clavesocio,clavelibro FROM prestamo");
            resultSet = s.executeQuery(); //ejecuta la consulta sql
            
            while(resultSet.next()){
                Beans_Prestamo objcur = new Beans_Prestamo ();
                objcur.setClaveprestamo(resultSet.getInt("claveprestamo"));
                objcur.setFecha_prestamo(resultSet.getString("fecha_prestamo"));
                objcur.setFecha_devolucion(resultSet.getString("fecha_devolucion"));
                objcur.setClavesocio(resultSet.getInt("clavesocio"));
                objcur.setClavelibro(resultSet.getInt("clavelibro"));
                
                
                lst.add(objcur);//asignando el objeto de tipo curso al list
                
            } 
            Connection_Biblioteca.obtenerConexion().close();//cerrar la conexion
            resultSet.close();//cerrar el resultset
            return lst;//imprimir el list con los datos de tabla curso
            
            
            }catch(SQLException ex){
                //Logger.getLogger(CursoModel.class.getName()).log(Level.SERVER,null,e);
                System.out.println("Ocurrio un error!"+ex.getMessage());
            }
            return null;
    
}
}
