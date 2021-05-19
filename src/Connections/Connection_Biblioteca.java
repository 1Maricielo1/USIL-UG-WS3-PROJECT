/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connections;
import java.sql.*;
        
/**
 *
 * @author Insaw
 */
public class Connection_Biblioteca
{
    
    public static Connection obtenerConexion()
    {
        Connection cn = null;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3308/biblioteca", "root", "BD82461963");
            System.out.println("Conexión exitosa!");
        }
        catch(Exception ex)
        {
            System.out.println(ex.getMessage());
        }
        return cn;
    }
}
