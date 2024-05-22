/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Util.DBconnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 *
 * @author divys
 */
@WebServlet(name = "emp_reg", urlPatterns = {"/emp_reg"})
public class emp_reg extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try  {
            // TODO Auto-generated method stub

		// Initialize the database
		Connection con = DBconnection.initializeDatabase();
		
		 

		// Create a SQL query to insert data into demo table
		// demo table consists of two columns, so two '?' is used
		PreparedStatement st = con.prepareStatement("insert into candidate values(?,?,?,?)");

		// For the first parameter,
		// get the data using request object
		// sets the data to st pointer

		// Same for second parameter
		int uid = 0;
		st.setInt(1,uid);
		//st.setString(2, request.getParameter("id"));
		st.setString(2, request.getParameter("name"));
		st.setString(3, request.getParameter("mail"));
//		st.setString(4, request.getParameter("num"));
//		st.setString(5, request.getParameter("address"));
		st.setString(4, request.getParameter("password"));
//		st.setString(5, request.getParameter("type"));
//		st.setString(8, request.getParameter("gender"));
//		st.setString(9, request.getParameter("pin_code"));
//		
//		

		//st.setString(8, request.getParameter("password"));
                // Execute the insert command using executeUpdate()
		// to make changes in database
		st.executeUpdate();
		// Close all the connections
		st.close();
		con.close();
                String n=request.getParameter("mail");
HttpSession session = request.getSession();
 	        session.setAttribute("User_mail",n);
              


		// Get a writer pointer
		// to display the successful result
		PrintWriter out = response.getWriter();
                 RequestDispatcher rd=request.getRequestDispatcher("mailEserverlet");  
	        rd.include(request,response);
		}
		catch (IOException | ClassNotFoundException | SQLException  e) {
		e.printStackTrace();

           
        }
    }
}