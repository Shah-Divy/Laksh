/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;
import javax.servlet.RequestDispatcher;
/**
 *
 * @author priya
 */
@WebServlet(name = "mailJserverlet", urlPatterns = {"/mailJserverlet"})
public class mailJserverlet extends HttpServlet {

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
       String toEmail = request.getParameter("mail");
        String subject = "Welcome to the Lakshhhhhhh.";
        String body = """
                      Hello,
                      
                      We extend a warm welcome to your esteemed organization. We are delighted to have you join our growing network of leading companies seeking exceptional talent.
                      At Laksh, we understand the critical role talent acquisition plays in your company's success. We are committed to providing you with a comprehensive platform to streamline your recruitment process and connect you with highly qualified candidates.
                      Sincerely,
                      The Laksh Team""";

        final String username = "laksh.190703@gmail.com"; // your email
        final String password = "zzlvnilmgxdxziio"; // your email password

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com"); // or your SMTP server host
        props.put("mail.smtp.port", "587"); // or your SMTP server port

        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    @Override
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });

       try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
            message.setSubject(subject);
            message.setText(body);

            Transport.send(message);

            // Redirect to another JSP page after sending email
//            PrintWriter out = response.getWriter();
            
            PrintWriter out = response.getWriter();
                 RequestDispatcher rd=request.getRequestDispatcher("Jindex.jsp");  
	        rd.include(request,response);
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }
}