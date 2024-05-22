<%-- 
    Document   : c1
    Created on : 16-Mar-2024, 2:04:16 am
    Author     : divys
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Util.DBconnection"%>
<%@ page import="java.sql.*"%>
<%@ page import="Controller.*" %>
<!DOCTYPE html>
<html lang="zxx" class="no-js">
<head>
    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/fav.png">
    <!-- Author Meta -->
    <meta name="author" content="codepixer">
    <!-- Meta Description -->
    <meta name="description" content="">
    <!-- Meta Keyword -->
    <meta name="keywords" content="">
    <!-- meta character set -->
    <meta charset="UTF-8">
    <!-- Site Title -->
    <title>Laksh</title>

    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
        <!--
        CSS
        ============================================= -->
        <link rel="stylesheet" href="css/linearicons.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/nice-select.css">					
        <link rel="stylesheet" href="css/animate.min.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body>
      <header id="header" id="home">
            <div class="container">
                <div class="row align-items-center justify-content-between d-flex">
                    <div id="logo">
                        <a href="index.html"><img src="img/1234.png" alt="" title="" /></a>
                    </div>
                    <nav id="nav-menu-container">
                        <ul class="nav-menu">
                            <li class="menu-active"><a href="index.html">Home</a></li>
                            <li><a href="category.html">Category</a></li>
                            <li><a href="price.html">Price</a></li>
                            <li><a href="about-us.html">About Us</a></li>
                            <li><a href="contact.html">Contact</a></li>
    
                            <div class="dropdown">
                                <li><a class="ticker-btn" href="#">Account</a>
    
                                    <!-- Dropdown content -->
                                    <div class="dropdown-content">
                                        <a href="candi-login.html">Candidate</a>
                                        <a href="emp-login.html">Employee</a>
                                    </div>
                                </li>
                            </div>
                            
                        </ul>
                    </nav><!-- #nav-menu-container -->
                </div>
            </div>
        </header><!-- #header -->


        <!-- start banner Area -->
        <section class="banner-area relative" id="home">	
            <div class="overlay overlay-bg"></div>
            <div class="container">
                <div class="row d-flex align-items-center justify-content-center">
                    <div class="about-content col-lg-12">
                        <h1 class="text-white">
                            URGENT JOBS				
                        </h1>	
                        <p class="text-white link-nav"><a href="index.html">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="category.html"> Job category</a></p>
                    </div>											
                </div>
            </div>
        </section>
        <!-- End banner Area -->	
        
        <!-- Start post Area -->
         <%
try {
    ResultSet retriveProduct = DBconnection.getResultFromSqlQuery("SELECT * FROM post_job WHERE type='urgent'");

    while (retriveProduct.next()) {
%>
        <section class="post-area section-gap">
            <div class="container">
                <div class="row justify-content-center d-flex">
                    <div class="col-lg-8 post-list">
                       
                        <div class="single-post d-flex flex-row">
                            <div class="thumb">
                                <img src="img/post.png" alt="">
                                
                            </div>
                            <div class="details" style="margin-left: 33px;">
                                <div class="title d-flex flex-row justify-content-between">
                                    <div class="titles">
                                        <h4><%=retriveProduct.getString("post")%></h4>
                                        <h6><%=retriveProduct.getString("company_name")%></h6>					
                                    </div>
                                    <ul class="btns">
                                        <!-- <li><a href="#"><span class="lnr lnr-heart"></span></a></li> -->
                                        <li><a href="senior6.jsp">Apply</a></li>
                                    </ul>
                                </div>
                                <p>
                                    <%=retriveProduct.getString("JD")%>

                                </p>
                                <!-- <h5>Job Nature: Full time</h5> -->
                                <p class="address"><span class="lnr lnr-map"></span> <%=retriveProduct.getString("location")%></p>
                                <p class="address"><span class="lnr lnr-database"></span> <%=retriveProduct.getString("salary")%></p>
                            </div>
                        </div>

                       
                    </div>
                </div>
            </div>
       <%
    }
} catch (SQLException e) {
    e.printStackTrace(); // Print the stack trace to identify the issue
}
%>                            
        </section>
                            
        <!-- End post Area -->

        <!-- Start callto-action Area -->
        <section class="callto-action-area section-gap">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="menu-content col-lg-9">
                        <div class="title text-center">
                            <h1 class="mb-10 text-white">Join us today without any hesitation</h1>
                            <p class="text-white">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore  et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
                            <a class="primary-btn" href="#">I am a Candidate</a>
                            <a class="primary-btn" href="#">I want an Employee</a>
                        </div>
                    </div>
                </div>	
            </div>
        </section>
        
        <!-- End calto-action Area -->			
    
        <!-- start footer Area -->		
        <footer class="footer-area section-gap">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6  col-md-12">
                        <div class="single-footer-widget newsletter">
                            <h6>Newsletter</h6>
                            <p>You can trust us. we only send promo offers, not a single spam.</p>
                            <div id="mc_embed_signup">
                                <form target="_blank" novalidate="true" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="form-inline">

                                    <div class="form-group row" style="width: 100%">
                                        <div class="col-lg-8 col-md-12">
                                            <input name="EMAIL" placeholder="Enter Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Email '" required="" type="email">
                                            <div style="position: absolute; left: -5000px;">
                                                <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
                                            </div>
                                        </div> 
                                    
                                        <div class="col-lg-4 col-md-12">
                                            <button class="nw-btn primary-btn">Subscribe<span class="lnr lnr-arrow-right"></span></button>
                                        </div> 
                                    </div>		
                                    <div class="info"></div>
                                </form>
                            </div>		
                        </div>
                    </div>
                                            
                </div>

                <div class="row footer-bottom d-flex justify-content-between">
                    <p class="col-lg-8 col-sm-12 footer-text m-0 text-white">
                    </p>
                    <div class="col-lg-4 col-sm-12 footer-social">
                        <div id="logo_footer">
                            <img src="img/1234.png" alt="Your Logo" title="Your Logo Title" /></a>
                        </div>
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                        <a href="#"><i class="fa fa-behance"></i></a>
                    </div>
                </div>
                
            </div>
        </footer>
        <!-- End footer Area -->		

        <script src="js/vendor/jquery-2.2.4.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="js/vendor/bootstrap.min.js"></script>			
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
          <script src="js/easing.min.js"></script>			
        <script src="js/hoverIntent.js"></script>
        <script src="js/superfish.min.js"></script>	
        <script src="js/jquery.ajaxchimp.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>	
        <script src="js/owl.carousel.min.js"></script>			
        <script src="js/jquery.sticky.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>			
        <script src="js/parallax.min.js"></script>		
        <script src="js/mail-script.js"></script>	
        <script src="js/main.js"></script>	

    </body>
</html>