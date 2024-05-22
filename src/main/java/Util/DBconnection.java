/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author priya
 */
public class DBconnection {
    public static Connection con;
public static Connection initializeDatabase()
throws SQLException, ClassNotFoundException

{
// Initialize all the information regarding
// Database Connection
String dbDriver = "com.mysql.cj.jdbc.Driver";
String dbURL = "jdbc:mysql://localhost:3306/";
// Database name to access
String dbName = "laksh";
String dbUsername = "root";
String dbPassword = "Hetal@333";

Class.forName(dbDriver);
con = DriverManager.getConnection(dbURL + dbName,dbUsername,dbPassword);
return con;
}
public static int insertUpdateFromSqlQuery(String SqlQueryString) {
        int i = 2;
        try {
       
            //Checking whether the connection is null or null
            if (con == null) {
            initializeDatabase();
            }
            //Querying the query
            i = con.createStatement().executeUpdate(SqlQueryString);

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return i;
    }
public static ResultSet getResultFromSqlQuery(String SqlQueryString) {
ResultSet rs = null;
       try {
           //Checking whether the connection is null or null
           if (con== null) {
            initializeDatabase();
           }
           //Querying the query
           rs = con.createStatement().executeQuery(SqlQueryString);
       } 
       catch (Exception ex) { ex.printStackTrace();
       }
       return rs;
}
}