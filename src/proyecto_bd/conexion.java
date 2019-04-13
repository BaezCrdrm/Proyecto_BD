package proyecto_bd;

import java.sql.*;
/**
 *
 * @author Dany
 */
public class conexion {
    Connection cn;
    
    public Connection conexionDB(){
        try{
           Class.forName("com.mysql.jdbc.Driver");
        cn = DriverManager.getConnection("jdbc:mysql://localhost/panaderia", "root", "");
        System.out.println("Coneccion Exitosa "); 
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        return cn;    
    }
    
    Statement createStatement(){
        throw new UnsupportedOperationException("No Soportado");  
    }
}