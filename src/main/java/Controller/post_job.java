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

/**
 *
 * @author divys
 */
@WebServlet(name = "post_job", urlPatterns = {"/post_job"})
public class post_job extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try  {
            // TODO Auto-generated method stub

		// Initialize the database
		Connection con = DBconnection.initializeDatabase();
		
		 

		// Create a SQL query to insert data into demo table
		// demo table consists of two columns, so two '?' is used
		PreparedStatement st = con.prepareStatement("insert into post_job values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

		// For the first parameter,
		// get the data using request object
		// sets the data to st pointer

		// Same for second parameter
		int pid = 0;
		st.setInt(1,pid);
		//st.setString(2, request.getParameter("id"));
		st.setString(2, request.getParameter("post"));
		st.setString(3, request.getParameter("company_name"));
                st.setString(4, request.getParameter("location"));
		st.setString(5, request.getParameter("salary"));
                st.setString(6, request.getParameter("type"));
		st.setString(7, request.getParameter("jr1"));
                st.setString(8, request.getParameter("jr2"));
		st.setString(9, request.getParameter("jr3"));
		st.setString(10, request.getParameter("jr4"));
		st.setString(11, request.getParameter("jr5"));
                st.setString(12, request.getParameter("edu"));
		st.setString(13, request.getParameter("lang"));
                st.setString(14, request.getParameter("exp"));
		st.setString(15, request.getParameter("gender"));
                st.setString(16, request.getParameter("JD"));
		//st.setString(5, request.getParameter("salary"));
		//st.setString(8, request.getParameter("password")); // Execute the insert command using executeUpdate()
		// to make changes in database
		st.executeUpdate();

		// Close all the connections
		st.close();
		con.close();



		// Get a writer pointer
		// to display the successful result
		PrintWriter out = response.getWriter();
                RequestDispatcher rd=request.getRequestDispatcher("index.html");  
	        rd.include(request,response);
		}
		catch (IOException | ClassNotFoundException | SQLException  e) {
		e.printStackTrace();

           
        }
    }
}
