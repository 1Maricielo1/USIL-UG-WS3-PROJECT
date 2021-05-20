/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;
import Beans.Beans_Prestamo;
import Models.Model_Prestamo;
import java.util.List;


/**
 *
 * @author Insaw
 */
public class Controller_Prestamo {
      public List<Beans_Prestamo> getListadoPrestamo(){
        return new Model_Prestamo().getListadoPrestamo();
      
    }
    
}
