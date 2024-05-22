/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Daofile;


/**
 *
 * @author divys
 */
@WebServlet(name = "emp_login", urlPatterns = {"/emp_login"})
public class emp_login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();  
	          
	    String n=request.getParameter("mail");  
	    String p=request.getParameter("password");
	    String q=request.getParameter("name"); 
            if(Daofile.validate(n, p)){ 
	    	
	    	HttpSession session = request.getSession();
 	        session.setAttribute("User_mail",n);
//	 	    session.setAttribute("Uname",q);
	    	
	    	  
	    	 RequestDispatcher reqd = request.getRequestDispatcher("Eindex.jsp");
	         
	        
	         reqd.forward(request, response); 
	    	
	    	 
	        
	        
	    }  
	    else{  
	        out.print("Sorry username or password error");  
	        RequestDispatcher rd=request.getRequestDispatcher("emp-login.html");  
	        rd.include(request,response);  
	    }  
	          
	    out.close();
    }
}