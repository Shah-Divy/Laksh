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
@WebServlet(name = "mailEserverlet", urlPatterns = {"/mailEserverlet"})
public class mailEserverlet extends HttpServlet {

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
                      Hi ,
                      
                      It's not every day a talented individual like you joins our platform! We're excited to welcome you to Laksshhh, where connecting with your dream job just got a whole lot easier.
                      Here, you'll find high-quality opportunities from top-tier companies looking for the perfect fit \u2013 someone like you.
                      Welcome to the future of your career. Welcome to Laksh.
                      Best Regards,
                      Laksh""";

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

           PrintWriter out = response.getWriter();
                 RequestDispatcher rd=request.getRequestDispatcher("Eindex.jsp");  
	        rd.include(request,response);

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }
}