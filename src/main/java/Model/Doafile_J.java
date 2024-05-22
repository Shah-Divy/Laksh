/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author divys
 */
@WebServlet(name = "Doafile_J", urlPatterns = {"/Doafile_J"})
public class Doafile_J extends HttpServlet {

    private static final long serialVersionUID = 1L;
	public static boolean validate(String mail,String pass){  
		 boolean status=false; // for return status it is declared variable 
		 // for database status will be used so to return the vale to inactivate the database the status is bydefault false
		 try{  
		 Class.forName("com.mysql.cj.jdbc.Driver");// forName is method that registers the driver of database 
		 Connection con=DriverManager.getConnection(  
		 "jdbc:mysql:// localhost:3306/laksh","root","Hetal@333");  
		      
		 PreparedStatement ps=con.prepareStatement(  
		 "select * from company where mail=? and password=?");  
		 ps.setString(1,mail);  
		 ps.setString(2,pass);  
		      
		 ResultSet rs=ps.executeQuery();  
		 status=rs.next();  
		  
		 }catch(Exception e){System.out.println(e);}  
		 return status;  
		 }  
		 }     
    /**
     * @see HttpServlet#HttpServlet()
     */