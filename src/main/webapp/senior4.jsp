<%-- 
    Document   : job_D
    Created on : 16-Mar-2024, 3:51:43 pm
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
    <link rel="stylesheet" href="css/senior.css">
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
                
                  <!-- <li><a class="ticker-btn" href="#">Signup</a></li> -->
                  <div class="dropdown">
                  <li><a class="ticker-btn" href="#">Account</a>
                    
                        <!-- Dropdown content -->
                        <div class="dropdown-content">
                          <a href="#">Candidate</a>
                          <a href="#">Employee</a>
                        </div>
                      </div>
                </li>				          				          
                </ul>
              </nav><!-- #nav-menu-container -->		    		
            </div>
        </div>
      </header><!-- #header -->
    <main>
            <%
      ResultSet retriveProduct= DBconnection.getResultFromSqlQuery("select *from post_job where type='accountant'");
 
 
      while (retriveProduct.next()) {
      %>
        <div class="job__Main-hinme4-0 kvBHAi">
            <div class="job__Wrapper-hinme4-2 eAkeWf">
                <div class="styles__Container-sc-15yd6lj-9 hFsuF">
                    <div class="styles__Wrapper-sc-15yd6lj-0 SPmfS">
                        <div class="styles__TextHeadingContainer-sc-15yd6lj-1 kNZsEd">
                            <div class="styles__TextHeadingWrapper-sc-15yd6lj-2 dDwOtO">
                                <div class="styles__TitleOpeningContainer-sc-15yd6lj-13 crWwJo">
                                    <h1 class="styles__TextJobTitle-sc-15yd6lj-4 gxrgA-d"> <%=retriveProduct.getString("post")%> </h1>
                                </div>
                                <div class="styles__TextJobCompany-sc-15yd6lj-5 fJuhTv"> <%=retriveProduct.getString("company_name")%> </div>
                                <div class="styles__JobAreaContainer-sc-15yd6lj-6 hOwORP">
                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M7.99984 1.33337C5.05127 1.33337 2.6665 3.47684 2.6665 6.12707C2.6665 8.98275 6.03412 12.9204 7.42079 14.4202C7.72555 14.7489 8.28174 14.7489 8.5865 14.4202C9.96555 12.9204 13.3332 8.98275 13.3332 6.12707C13.3332 3.47684 10.9484 1.33337 7.99984 1.33337ZM7.99984 7.83911C6.94841 7.83911 6.09508 7.07212 6.09508 6.12707C6.09508 5.18203 6.94841 4.41504 7.99984 4.41504C9.05127 4.41504 9.9046 5.18203 9.9046 6.12707C9.9046 7.07212 9.05127 7.83911 7.99984 7.83911Z"
                                            fill="white"></path>
                                    </svg>
                                    <div class="styles__TextJobArea-sc-15yd6lj-7 jwQXYc"> <%=retriveProduct.getString("location")%> </div>
                                </div>
                            </div>

                        </div>
                        <div
                            class="styles__TextHeadingContainer-sc-15yd6lj-1 styles__TextSalaryContainer-sc-15yd6lj-3 kNZsEd jyJyXA">
                            <div class="styles__TextJobSalary-sc-15yd6lj-8 dQfoXC">
                                <svg width="16" height="16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path
                                        d="M10.87 13 8.448 9.546c.545-.256.96-.55 1.248-.88.287-.331.45-.713.487-1.145H11V6.263H9.996a1.847 1.847 0 0 0-1.062-1.006H11V4H4v1.39h1.98c.353 0 .635.066.846.198.21.133.354.358.43.675H4v1.258h3.3c-.058.397-.19.666-.395.807-.206.141-.514.212-.925.212H4v1.39h1.822L7.744 13h3.127z"
                                        fill="#fff"></path>
                                </svg>
                                <%=retriveProduct.getString("salary")%>
                            </div>
                        </div>
                        <button class="primary-btn mt-20 text-white" style="    float: right;
                                    background: #E8E8DD;
                                    border: 1px solid transparent;
                                    border-color: #E8E8DD;
                                    color: #E8E8DD;
                                    padding-left: 25px;
                                    padding-right: 25px;
                                    padding-top: 20px;
                                    margin-top: -18px;
                                    padding-bottom: 20px;
                                    border-radius: 50px;">
                            <a href="mailto:your_email@example.com">
                                <img src="img/mail logo.png" alt="Email" width="32" height="32">
                            </a>
                        </button>


                        <div class="styles__JobIconContainer-sc-15yd6lj-10 fGWxuX">
                            <div class="styles__IconContainer-sc-15yd6lj-11 ceQPTl">
                                <svg width="12" height="12" viewBox="0 0 12 12" fill="none"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                        d="M1 0.4972C1 0.222604 1.2226 0 1.4972 0H10.5028C10.7774 0 11 0.222604 11 0.4972V11.9503C11 11.9777 10.9777 12 10.9503 12H7.25006V8.62463H4.75007V12H1.04972C1.02226 12 1 11.9777 1 11.9503V0.4972ZM2.29961 1.20001C2.27227 1.20001 2.2501 1.22218 2.2501 1.24952V2.5905C2.2501 2.61785 2.27227 2.64001 2.29961 2.64001H3.70703C3.73438 2.64001 3.75654 2.61785 3.75654 2.5905V1.24952C3.75654 1.22218 3.73438 1.20001 3.70703 1.20001H2.29961ZM5.25006 1.24952C5.25006 1.22218 5.27223 1.20001 5.29957 1.20001H6.70699C6.73434 1.20001 6.7565 1.22218 6.7565 1.24952V2.5905C6.7565 2.61785 6.73434 2.64001 6.70699 2.64001H5.29957C5.27223 2.64001 5.25006 2.61785 5.25006 2.5905V1.24952ZM8.29955 1.20001C8.27221 1.20001 8.25004 1.22218 8.25004 1.24952V2.5905C8.25004 2.61785 8.27221 2.64001 8.29955 2.64001H9.70697C9.73432 2.64001 9.75648 2.61785 9.75648 2.5905V1.24952C9.75648 1.22218 9.73432 1.20001 9.70697 1.20001H8.29955ZM2.2501 3.64949C2.2501 3.62214 2.27227 3.59998 2.29961 3.59998H3.70703C3.73438 3.59998 3.75654 3.62214 3.75654 3.64949V4.99046C3.75654 5.01781 3.73438 5.03998 3.70703 5.03998H2.29961C2.27227 5.03998 2.2501 5.01781 2.2501 4.99046V3.64949ZM5.29957 3.59998C5.27223 3.59998 5.25006 3.62214 5.25006 3.64949V4.99046C5.25006 5.01781 5.27223 5.03998 5.29957 5.03998H6.70699C6.73434 5.03998 6.7565 5.01781 6.7565 4.99046V3.64949C6.7565 3.62214 6.73434 3.59998 6.70699 3.59998H5.29957ZM8.25004 3.64949C8.25004 3.62214 8.27221 3.59998 8.29955 3.59998H9.70697C9.73432 3.59998 9.75648 3.62214 9.75648 3.64949V4.99046C9.75648 5.01781 9.73432 5.03998 9.70697 5.03998H8.29955C8.27221 5.03998 8.25004 5.01781 8.25004 4.99046V3.64949ZM2.29961 6C2.27227 6 2.2501 6.02217 2.2501 6.04951V7.39049C2.2501 7.41783 2.27227 7.44 2.29961 7.44H3.70703C3.73438 7.44 3.75654 7.41783 3.75654 7.39049V6.04951C3.75654 6.02217 3.73438 6 3.70703 6H2.29961ZM5.25006 6.04951C5.25006 6.02217 5.27223 6 5.29957 6H6.70699C6.73434 6 6.7565 6.02217 6.7565 6.04951V7.39049C6.7565 7.41783 6.73434 7.44 6.70699 7.44H5.29957C5.27223 7.44 5.25006 7.41783 5.25006 7.39049V6.04951ZM8.29955 6C8.27221 6 8.25004 6.02217 8.25004 6.04951V7.39049C8.25004 7.41783 8.27221 7.44 8.29955 7.44H9.70697C9.73432 7.44 9.75648 7.41783 9.75648 7.39049V6.04951C9.75648 6.02217 9.73432 6 9.70697 6H8.29955Z"
                                        fill="#4D3951"></path>
                                </svg>
                                <div class="styles__IconText-sc-15yd6lj-12 IhsTj"><%=retriveProduct.getString("type")%></div>
                            </div>
                            <div class="styles__IconContainer-sc-15yd6lj-11 ceQPTl">
                                <svg width="16" height="16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <mask id="a" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0"
                                        width="16" height="16">
                                        <path fill="#C4C4C4" d="M0 0h16v16H0z"></path>
                                    </mask>
                                    <g mask="url(#a)">
                                        <ellipse cx="8" cy="7.995" rx="6" ry="5.995" fill="#4D3951"></ellipse>
                                        <path
                                            d="M10.614 9.091H7.851v2.832H6.137v-7.11h4.756v1.324H7.85v1.636h2.763V9.09Z"
                                            fill="#fff"></path>
                                    </g>
                                </svg>
<!--                                <div class="styles__IconText-sc-15yd6lj-12 IhsTj">Full-time</div>-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    
    <section id="section">

        <div class="job__Container-hinme4-4 jaibFw">
            <div class="job__LeftSection-hinme4-5 ddCiog">
                <div class="styles__Container-d77mis-0 gzIUyW">
                    <h2 class="styles__Heading-d77mis-2 gwEzWc">Job Requirements</h2>
                    <section class="styles__Wrapper-d77mis-1 HjpDK">

                        <div class="styles__RequirementWrapper-d77mis-3 hNfmyt">
                            <svg width="16" height="16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="m12.285 4.28-6.296 6.295-2.294-2.293a1 1 0 0 0-1.414 1.414l3.001 3.001a1 1 0 0 0 1.415 0l7.002-7.002a1 1 0 0 0-1.414-1.414z"
                                    fill="#22C38E"></path>
                            </svg>
                            <p class="styles__Description-d77mis-4 jVATYF"><%=retriveProduct.getString("jr1")%></p>
                        </div>
                        <div class="styles__RequirementWrapper-d77mis-3 hNfmyt">
                            <svg width="16" height="16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="m12.285 4.28-6.296 6.295-2.294-2.293a1 1 0 0 0-1.414 1.414l3.001 3.001a1 1 0 0 0 1.415 0l7.002-7.002a1 1 0 0 0-1.414-1.414z"
                                    fill="#22C38E"></path>
                            </svg>
                            <p class="styles__Description-d77mis-4 jVATYF"><%=retriveProduct.getString("jr2")%></p>
                        </div>
                        <div class="styles__RequirementWrapper-d77mis-3 hNfmyt">
                            <svg width="16" height="16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="m12.285 4.28-6.296 6.295-2.294-2.293a1 1 0 0 0-1.414 1.414l3.001 3.001a1 1 0 0 0 1.415 0l7.002-7.002a1 1 0 0 0-1.414-1.414z"
                                    fill="#22C38E"></path>
                            </svg>
                            <p class="styles__Description-d77mis-4 jVATYF"><%=retriveProduct.getString("jr3")%></p>
                        </div>
                        <div class="styles__RequirementWrapper-d77mis-3 hNfmyt">
                            <svg width="16" height="16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="m12.285 4.28-6.296 6.295-2.294-2.293a1 1 0 0 0-1.414 1.414l3.001 3.001a1 1 0 0 0 1.415 0l7.002-7.002a1 1 0 0 0-1.414-1.414z"
                                    fill="#22C38E"></path>
                            </svg>
                            <p class="styles__Description-d77mis-4 jVATYF"><%=retriveProduct.getString("jr4")%></p>
                        </div>
                        <div class="styles__RequirementWrapper-d77mis-3 hNfmyt">
                            <svg width="16" height="16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="m12.285 4.28-6.296 6.295-2.294-2.293a1 1 0 0 0-1.414 1.414l3.001 3.001a1 1 0 0 0 1.415 0l7.002-7.002a1 1 0 0 0-1.414-1.414z"
                                    fill="#22C38E"></path>
                            </svg>
                            <p class="styles__Description-d77mis-4 jVATYF"><%=retriveProduct.getString("jr5")%></p>
                        </div>
<!--                        <div class="styles__RequirementWrapper-d77mis-3 hNfmyt">
                            <svg width="16" height="16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="m12.285 4.28-6.296 6.295-2.294-2.293a1 1 0 0 0-1.414 1.414l3.001 3.001a1 1 0 0 0 1.415 0l7.002-7.002a1 1 0 0 0-1.414-1.414z"
                                    fill="#22C38E"></path>
                            </svg>
                            <p class="styles__Description-d77mis-4 jVATYF">Accounting softwares</p>
                        </div>
                        <div class="styles__RequirementWrapper-d77mis-3 hNfmyt">
                            <svg width="16" height="16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="m12.285 4.28-6.296 6.295-2.294-2.293a1 1 0 0 0-1.414 1.414l3.001 3.001a1 1 0 0 0 1.415 0l7.002-7.002a1 1 0 0 0-1.414-1.414z"
                                    fill="#22C38E"></path>
                            </svg>
                            <p class="styles__Description-d77mis-4 jVATYF">Account acquisition</p>
                        </div>
                        <div class="styles__RequirementWrapper-d77mis-3 hNfmyt">
                            <svg width="16" height="16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="m12.285 4.28-6.296 6.295-2.294-2.293a1 1 0 0 0-1.414 1.414l3.001 3.001a1 1 0 0 0 1.415 0l7.002-7.002a1 1 0 0 0-1.414-1.414z"
                                    fill="#22C38E"></path>
                            </svg>
                            <p class="styles__Description-d77mis-4 jVATYF">Report preparation</p>
                        </div>
                        <div class="styles__RequirementWrapper-d77mis-3 hNfmyt">
                            <svg width="16" height="16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="m12.285 4.28-6.296 6.295-2.294-2.293a1 1 0 0 0-1.414 1.414l3.001 3.001a1 1 0 0 0 1.415 0l7.002-7.002a1 1 0 0 0-1.414-1.414z"
                                    fill="#22C38E"></path>
                            </svg>
                            <p class="styles__Description-d77mis-4 jVATYF">Preparing account statements</p>
                        </div>
                        <div class="styles__RequirementWrapper-d77mis-3 hNfmyt">
                            <svg width="16" height="16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="m12.285 4.28-6.296 6.295-2.294-2.293a1 1 0 0 0-1.414 1.414l3.001 3.001a1 1 0 0 0 1.415 0l7.002-7.002a1 1 0 0 0-1.414-1.414z"
                                    fill="#22C38E"></path>
                            </svg>
                            <p class="styles__Description-d77mis-4 jVATYF">Pivot tables</p>
                        </div>-->
                    </section>
                </div>
                <div class="styles__Container-sc-1532ppx-6 gwwPeI">
                    <h2 class="styles__Heading-sc-1532ppx-0 hTICSR">Job Details</h2>
                    <div class="styles__Wrapper-sc-1532ppx-1 wMxpj">
                        <div class="styles__JobDetailSection-sc-1532ppx-12 fGuEza">
                            <div class="styles__JobDetailBlockContainer-sc-1532ppx-4 bsAiYV">
                                <div class="styles__IconContainer-sc-1532ppx-13 fejpUp">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 32 32">
                                        <g fill="#FFF" fill-rule="evenodd" stroke="#31445A" stroke-linejoin="round"
                                            stroke-width="2">
                                            <path d="M6 7l10 4v15L6 22zM26 7l-10 4v15l10-4z"></path>
                                            <path d="M14 11h4v13a2 2 0 11-4 0V11h0z"></path>
                                        </g>
                                    </svg>
                                </div>
                                <div class="styles__DescriptionContent-sc-1532ppx-7 eGDXns">
                                    <div class="styles__JobDetailBlockHeading-sc-1532ppx-2 kiHVDt"><%=retriveProduct.getString("edu")%></div>
<!--                                    <div class="styles__JobDetailBlockValue-sc-1532ppx-3 gJbXgC">
                                        Graduate
                                         
                                        <span class="styles__EducationDegreeText-sc-1532ppx-14 fjVcFe">(
                                             
                                            Bachelor Degree
                                             
                                            )</span>
                                    </div>-->
                                </div>
                            </div>
                            <div class="styles__JobDetailBlockContainer-sc-1532ppx-4 bsAiYV">
                                <div class="styles__IconContainer-sc-1532ppx-13 fejpUp">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 32 33">
                                        <g fill="none" fill-rule="evenodd" transform="translate(6 7)">
                                            <path fill="#FFF" stroke="#31445A" stroke-linejoin="round" stroke-width="2"
                                                d="M10 0c5.523 0 10 4.03 10 9 0 1.807-.591 3.489-1.61 4.898L19 20l-4.337-3.036A10.868 10.868 0 0110 18C4.477 18 0 13.97 0 9s4.477-9 10-9z">
                                            </path>
                                            <circle cx="7.5" cy="8.5" r="1.5" fill="#4D3951"></circle>
                                            <circle cx="12.5" cy="8.5" r="1.5" fill="#4D3951"></circle>
                                        </g>
                                    </svg>
                                </div>
                                <div class="styles__DescriptionContent-sc-1532ppx-7 eGDXns">
                                    <div class="styles__JobDetailBlockHeading-sc-1532ppx-2 kiHVDt"><%=retriveProduct.getString("lang")%></div>
<!--                                    <div class="styles__JobDetailBlockValue-sc-1532ppx-3 gJbXgC">Thoda English</div>-->
                                </div>
                            </div>
                            <div class="styles__JobDetailBlockContainer-sc-1532ppx-4 bsAiYV">
                                <div class="styles__IconContainer-sc-1532ppx-13 fejpUp">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 32 32">
                                        <g fill="none" fill-rule="evenodd">
                                            <path fill="#FFF" stroke="#31445A" stroke-linejoin="round" stroke-width="2"
                                                d="M16 20l-5.878 3.09 1.123-6.545-4.756-4.635 6.572-.955L16 5l2.939 5.955 6.572.955-4.756 4.635 1.123 6.545z">
                                            </path>
                                            <path fill="#31445A"
                                                d="M14 21a1 1 0 011 1v5a1 1 0 01-2 0v-5a1 1 0 011-1zm4 0a1 1 0 011 1v3a1 1 0 01-2 0v-3a1 1 0 011-1z">
                                            </path>
                                        </g>
                                    </svg>
                                </div>
                                <div class="styles__DescriptionContent-sc-1532ppx-7 eGDXns">
                                    <div class="styles__JobDetailBlockHeading-sc-1532ppx-2 kiHVDt"><%=retriveProduct.getString("exp")%></div>
<!--                                    <div class="styles__JobDetailBlockValue-sc-1532ppx-3 gJbXgC">Min. 5 Years</div>-->
                                </div>
                            </div>
                            <div class="styles__JobDetailBlockContainer-sc-1532ppx-4 bsAiYV">
                                <div class="styles__IconContainer-sc-1532ppx-13 fejpUp">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 32 32">
                                        <path fill="#FFF" fill-rule="evenodd" stroke="#31445A" stroke-linejoin="round"
                                            stroke-width="2"
                                            d="M9.25 10a2.5 2.5 0 000-5 2.5 2.5 0 000 5zm1.25 17c.518 0 .937-.42.937-.938V20.75h.625c.518 0 .938-.42.938-.938V14.5c0-1.036-.84-1.875-1.875-1.875h-.444a3.43 3.43 0 01-2.862 0h-.444c-1.036 0-1.875.84-1.875 1.875v5.312c0 .518.42.938.937.938h.625v5.312c0 .518.42.938.938.938h2.5zM22 10a2.5 2.5 0 000-5 2.5 2.5 0 000 5zm.625 17c.518 0 .937-.42.937-.938V22h2.188a.939.939 0 00.91-1.165l-1.876-7.5a.985.985 0 00-.909-.71h-.444a3.43 3.43 0 01-2.862 0h-.444a.986.986 0 00-.91.71l-1.875 7.5A.939.939 0 0018.25 22h2.187v4.062c0 .518.42.938.938.938h1.25z">
                                        </path>
                                    </svg>
                                </div>
                                <div class="styles__DescriptionContent-sc-1532ppx-7 eGDXns">
                                    <div class="styles__JobDetailBlockHeading-sc-1532ppx-2 kiHVDt"><%=retriveProduct.getString("gender")%></div>
<!--                                    <div class="styles__JobDetailBlockValue-sc-1532ppx-3 gJbXgC">Both</div>-->
                                </div>
                            </div>
                        </div>
                        <div class="styles__JobDetailBlockContainer-sc-1532ppx-4 bsAiYV">
                            <div class="styles__IconContainer-sc-1532ppx-13 fejpUp">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 32 33">
                                    <g fill="none" fill-rule="evenodd" stroke="#31445A" stroke-width="2"
                                        transform="translate(0 1)">
                                        <path stroke-linecap="round"
                                            d="M9.165 21.08C7.217 21.81 6 22.848 6 24c0 2.21 4.477 4 10 4s10-1.79 10-4c0-1.145-1.202-2.177-3.13-2.906">
                                        </path>
                                        <path fill="#FFF"
                                            d="M16 5a6.982 6.982 0 00-4.95 2.05A6.982 6.982 0 009 12c0 2.452 2.091 5.629 6.297 9.919a.99.99 0 00.7.288c.259 0 .516-.1.715-.297C20.806 17.8 23 14.517 23 12a6.982 6.982 0 00-2.05-4.95A6.982 6.982 0 0016 5z">
                                        </path>
                                        <rect width="4" height="4" x="14" y="10" fill="#FFF" rx="2"></rect>
                                    </g>
                                </svg>
                            </div>
                            <div class="styles__DescriptionContent-sc-1532ppx-7 eGDXns">
                                <div class="styles__JobDetailBlockHeading-sc-1532ppx-2 kiHVDt">Address</div>
                                <div class="styles__JobDetailBlockValue-sc-1532ppx-3 gJbXgC"> <%=retriveProduct.getString("location")%></div>
                            </div>
                        </div>

                        <div class="styles__JobDescriptionContainer-sc-1532ppx-17 iPjuQL">
                            <h2 class="styles__Heading-sc-1532ppx-0 hTICSR">Job Description</h2>
                            <div class="styles__DescriptionTextPartial-sc-1532ppx-9 jwXndH">
                                <p> <%=retriveProduct.getString("JD")%> </p>
<!--                                <h2>More about this Senior Accountant job</h2>
                                <p>
                                    Goyal Realty Ventures is aggressively hiring for the job profile of Senior
                                    Accountant at Mumbai in Thakur Pakhadi locality. Kindly go through the FAQs below to
                                    get all answers related to the given job.
                                </p>
                                <p>
                                    <strong>1. How much salary can I expect?</strong><br><br>
                                    Ans. You can expect a minimum salary of 70,000 INR and can go up to 90,000 INR. The
                                    salary offered will depend on your skills, experience, and performance in the
                                    interview.<br><br>
                                </p>
                            </div>
                            <div id="jobDescription" class="styles__DescriptionTextFull-sc-1532ppx-9 jwXndH"
                                style="display: none;">
                                <p>
                                <h2>More about this Senior Accountant job</h2>
                                <p>
                                    Goyal Realty Ventures is aggressively hiring for the job profile of Senior
                                    Accountant at Mumbai in Thakur Pakhadi locality. Kindly go through the FAQs below to
                                    get all answers related to the given job.
                                </p>
                                <p>
                                    <strong>1. How much salary can I expect?</strong><br><br>
                                    Ans. You can expect a minimum salary of 70,000 INR and can go up to 90,000 INR. The
                                    salary offered will depend on your skills, experience, and performance in the
                                    interview.<br><br>
                                    <strong>2. What is the eligibility criteria to apply for this job?</strong><br><br>
                                    Ans. The candidate should have completed Graduate degree and people who have 5 to 31
                                    years are eligible to apply for this job. You can apply for more jobs in Mumbai to
                                    get hired quickly.<br><br>

                                    <strong>3. Is there any specific skill required for this job?</strong><br><br>
                                    Ans. The candidate should have Thoda English skills and sound communication skills
                                    for this job. <br><br>

                                    <strong>4. Who can apply for this job?</strong><br><br>
                                    Ans. Both Male and Female candidates can apply for this job.<br><br>

                                    <strong>5. Is it a work from home job?</strong><br><br>
                                    Ans. No, it’s not a work from home job and can’t be done online. You can explore and
                                    apply for other work from home jobs in Mumbai at apna.<br><br>

                                    <strong>6. Are there any charges or deposits required while applying for the role or
                                        while joining?</strong><br><br>
                                    Ans. No work-related deposit needs to be made during your employment with the
                                    company.<br><br>

                                    <strong>7. How can I apply for this job?</strong><br><br>
                                    Ans. Go to the apna app and apply for this job. Click on the apply button and call
                                    HR directly to schedule your interview.<br><br>

                                    <strong>8. What is the last date to apply?</strong><br><br>
                                    Ans. The last date to apply for this job is 20-Jan-2024.<br><br>

                                    For more details, download apna app and find Full Time jobs in Mumbai. Through apna,
                                    you can find jobs in 74 cities across India. Join NOW!<br><br>
                                </p>-->
                            </div>
<!--                            <div class="styles__ButtonContainer-sc-1532ppx-10 cVpFGH">
                                <button class="styles__ReadDescriptionButton-sc-1532ppx-11 eYGOKI"
                                    onclick="toggleDescription()">
                                    <span id="buttonText">Show Full Job Description</span>
                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path d="M12 10L8 6L4 10" stroke="#190a28" stroke-width="1.5"
                                            stroke-linecap="round" stroke-linejoin="round"></path>
                                    </svg>
                                </button>
                            </div>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<%
                        }
                    %>
</main>
    <script>
        function toggleDescription() {
            var partialDescription = document.querySelector('.styles__DescriptionTextPartial-sc-1532ppx-9');
            var fullDescription = document.getElementById('jobDescription');
            var buttonText = document.getElementById('buttonText');

            if (fullDescription.style.display === 'none' || fullDescription.style.display === '') {
                partialDescription.style.display = 'none';
                fullDescription.style.display = 'block';
                buttonText.innerText = 'Hide Job Description';
            } else {
                partialDescription.style.display = 'block';
                fullDescription.style.display = 'none';
                buttonText.innerText = 'Show Full Job Description';
            }
        }
    </script>

    <!-- start footer Area -->
    <footer class="footer-area section-gap">
        <div class="container">
            <div class="row">
                <div class="col-lg-6  col-md-12">
                    <div class="single-footer-widget newsletter">
                        <h6>Newsletter</h6>
                        <p>You can trust us. we only send promo offers, not a single spam.</p>
                        <div id="mc_embed_signup">
                            <form target="_blank" novalidate="true"
                                action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                                method="get" class="form-inline">

                                <div class="form-group row" style="width: 100%">
                                    <div class="col-lg-8 col-md-12">
                                        <input name="EMAIL" placeholder="Enter Email" onfocus="this.placeholder = ''"
                                            onblur="this.placeholder = 'Enter Email '" required="" type="email">
                                        <div style="position: absolute; left: -5000px;">
                                            <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value=""
                                                type="text">
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-12">
                                        <button class="nw-btn primary-btn">Subscribe<span
                                                class="lnr lnr-arrow-right"></span></button>
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
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    <!-- Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> -->
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="js/vendor/bootstrap.min.js"></script>
    <script type="text/javascript"
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
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
