﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseRating.aspx.cs" Inherits="FeedbackCS.CourseRating" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     
         <script src="Scripts/jquery-1.10.2.min.js"></script>
        <script src="Scripts/bootstrap.bundle.min.js"></script>

    <%--- bootstrap CDN -----%>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


    <link href="Content/footer1.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.11.0/css/all.css"/>
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&amp;display=swap"/>
    <link rel="stylesheet" type="text/css" href="https://mdbootstrap.com/api/snippets/static/download/MDB-Pro_4.19.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="https://mdbootstrap.com/api/snippets/static/download/MDB-Pro_4.19.0/css/mdb.min.css"/>
   
     <script type="text/javascript">
        $(document).ready(function () {
            $('.dropdown-toggle').dropdown();
        })
    </script>

 <style>
     body{
       
         margin:0;
         padding:0;
         overflow-x:hidden;
     }

  .lbl{
        margin-left:50px;
        width:230px;
        display:inline-block;
        font-family:Garamond;
        font-weight:bold;
        font-size:23px;
    }
  .lbl2{
      font-size:15px;
      margin-left:5px;
  }
  .lbl3{
      font-size:15px;
      margin-left:20px;
  }
  .label{
      margin-left:50px;
      font-family:Garamond;
      font-weight:bold;
      font-size:28px;
      color:black;
  }
  .lbl1{
      margin-top:12%;
  }
   
    .search{
        margin-top:6px;
    }
   
    .txt{
        /*margin-left:2%;*/
        width:55px;
    }
    .txt1{
        /*margin-left:23%;*/
        width:55px;
    }
       
       .btn2{
           margin-top:5%;
           width:100px;
       }
       .drop{
           width:150px;
       }


        .bgcolor {
            background-color: #46B2B2;
        }

        li {
            font-size: 20px;
            color: white;
            font-weight: bold;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .navbar-nav > li {
            margin-left: 15px;
            margin-right: 15px;
        }

        a {
            color: white;
        }

        .bar {
            border-bottom-color: black;
            background-color: gainsboro;
            font-size: 20px;
            font-weight: bold;
            font-family: 'Times New Roman', Times, serif;
        }
   
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager runat="server" ID="smcourse"></asp:ScriptManager>
        </div>
    
         <nav class="navbar navbar-expand-lg bgcolor">
            <a class="navbar-brand" style="color: white; font-weight: bold; font-family: 'Times New Roman', Times, serif; font-size: 30px">STUDENT FEEDBACK SYSTEM</a>
        </nav>
        <div class="row" style="margin-bottom: 10px"></div>
        <div></div>
        
          <nav class="navbar navbar-expand-lg bgcolor">
            <%--  <a class="navbar-brand" style="color:black">
               <img src="Image/images.jpg"  style="width:60px;height:60px;border-radius:50px;"/>
              
           </a> ---%>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse" style="background-color: white">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarCollapse">

                <ul class="navbar-nav">
                    <li><a class="active" href="Home.aspx"><span class="glyphicon glyphicon-home" style="font-weight: bold">Home</span></a></li>
                    <li><a href="facultydetail.aspx"><span>Faculty</span></a></li>
                    <li><a href="Student.aspx"><span>Student</span></a></li>
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span>Subject</span></a>
                        <ul class="dropdown-menu">
                            <li style="color: black"><a tabindex="-1" href="AddSubject.aspx" style="color: black; font-size: 15px">Add Subject</a></li>
                            <li><a tabindex="-1" href="AssignSubject.aspx" style="color: black; font-size: 15px">Assign Subject</a></li>
                        </ul>
                    </li>
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span>Course</span></a>
                        <ul class="dropdown-menu">
                            <li><a tabindex="-1" href="CourseDetail.aspx" style="color: black; font-size: 15px">Add Course</a></li>
                            <li><a tabindex="-1" href="CourseRating.aspx" style="color: black; font-size: 15px">Course Feedback</a></li>
                        </ul>
                    </li>
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span>FeedbackReport</span></a>
                        <ul class="dropdown-menu">
                            <li><a tabindex="-1" href="MeanScore.aspx" style="color: black; font-size: 15px">Mean-Score</a></li>
                            <li><a tabindex="-1" href="facultyOvarallrating.aspx" style="color: black; font-size: 15px">CourseWise Faculty Rating</a></li>
                            <li><a tabindex="-1" href="Rtofaculty.aspx" style="color: black; font-size: 15px">SemesterWise Faculty Rating</a></li>
                        </ul>
                    </li>
                    <li><a href="AdminLogin.aspx"><span class="glyphicon glyphicon-off" id="icon" style="font-weight: bold">Logout</span></a></li>
                </ul>
            </div>
        </nav>  
    
         <div class="row bar">
            <div class="col-md-9">
                <a style="margin-left: 40px; margin-top: 20px;">COURSE FEEDBACK</a>
            </div>
            <div class="col-md-3" style="display:flex;">
                <asp:TextBox runat="server" ID="txt2search" Text="Search" CssClass="form-control search" ></asp:TextBox>
                <button id="btn2search" onclick="btnsearch_click" type="submit" class="btn btn-primary" style="border-radius:5px;font-size:15px;margin-right:60px;width:20px;height:38px">
                    <i class="fas fa-search"></i>
                </button>
            </div>


        </div>

        <div class="row">
            <div class="col-md-6">
                
                <div class="form">
                    <asp:Label ID="lblcourseid" runat="server" Text="Course" CssClass="lbl lbl1"></asp:Label>
                    <asp:DropDownList ID="ddlcourse" runat="server" CssClass="drop"></asp:DropDownList>
                </div><br />
                <div class="form">
                    <asp:Label ID="lblsem" runat="server" Text="Semester" CssClass="lbl"></asp:Label>
                    <asp:DropDownList ID="ddlsemester" runat="server" CssClass="drop">
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form">
                    <asp:Label ID="lblvgood" Text="RVgood" CssClass="lbl2" runat="server" Visible="false"></asp:Label>
                    <asp:TextBox ID="txtrvgood" runat="server" CssClass="txt1" Visible="false"></asp:TextBox>

                    <asp:Label ID="lblgood" Text="RGood" CssClass="lbl3" runat="server" Visible="false"></asp:Label>
                    <asp:TextBox ID="txtrgood" runat="server" CssClass="txt" Visible="false"></asp:TextBox>

                    <asp:Label ID="lblstish" Text="RStish" CssClass="lbl3" runat="server" Visible="false"></asp:Label>
                    <asp:TextBox ID="txtrstish" runat="server" CssClass="txt" Visible="false"></asp:TextBox>

                    <asp:Label ID="lblunstish" Text="RUnstish" CssClass="lbl3" runat="server" Visible="false"></asp:Label>
                    <asp:TextBox ID="txtrunstish" runat="server" CssClass="txt" Visible="false"></asp:TextBox>
                </div>
                <div class="form">
                    <asp:Button ID="btncalculate" runat="server" Text="Submit" CssClass="btn btn-primary btn2" OnClick="btncalculate_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnresponse" runat="server" Text="Response" CssClass="btn btn-success btn2" OnClick="btnresponse_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnshow" runat="server" Text="Show" CssClass="btn btn-warning btn2" OnClick="btnshow_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btncncel" runat="server" Text="Cancel" CssClass="btn btn-danger btn2" OnClick="btncncel_Click" />
                </div>
            </div>


            <div class="col-md-6">
                <div class="control" style="margin-top:50px;">
                    <asp:DropDownList ID="ddlcourseselect" runat="server"></asp:DropDownList>
                </div>
                <div class="chart" style="width:550px; height:500px;margin-top:60px">
                    
                  <ajaxtoolkit:barchart id="CourseChart" runat="server" charttype="Column" chartheight="300px">

                  </ajaxtoolkit:barchart>
                   
                </div>
            </div>
        </div>


        <%--footer--%>

           <footer class="page-footer font-small pt-4" style="bottom: 0; margin-bottom: 0; padding-bottom: 0; padding-top: 300px; width: 100%; background-color: #46B2B2">
            <!-- Footer Links -->
            <div class="container text-center text-md-left">

                <!-- Footer links -->
                <div class="row text-center text-md-left mt-3 pb-3">

                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
                        <h6 class="text-uppercase mb-4 font-weight-bold">Home</h6>
                        <p>
                            <a href="#">About Pt.R.S.U.</a>
                        </p>
                        <p>
                            <a href="PhotoGallary.aspx">Photo Gallery</a>
                        </p>
                    </div>
                    <!-- Grid column -->

                    <hr class="w-100 clearfix d-md-none" />

                    <!-- Grid column -->
                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
                        <h6 class="text-uppercase mb-4 font-weight-bold">Products</h6>
                        <p>
                            <a href="#!">MDBootstrap</a>
                        </p>
                        <p>
                            <a href="#!">MDWordPress</a>
                        </p>
                        <p>
                            <a href="#!">BrandFlow</a>
                        </p>
                        <p>
                            <a href="#!">Bootstrap Angular</a>
                        </p>
                    </div>
                    <!-- Grid column -->

                    <hr class="w-100 clearfix d-md-none" />

                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
                        <h6 class="text-uppercase mb-4 font-weight-bold">Useful links</h6>
                        <p>
                            <a href="#!">Your Account</a>
                        </p>
                        <p>
                            <a href="#!">Become an Affiliate</a>
                        </p>
                        <p>
                            <a href="#!">Shipping Rates</a>
                        </p>
                        <p>
                            <a href="#!">Help</a>
                        </p>
                    </div>

                    <!-- Grid column -->
                    <hr class="w-100 clearfix d-md-none" />

                    <!-- Grid column -->
                    <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
                        <h6 class="text-uppercase mb-4 font-weight-bold">Contact</h6>
                        <p>
                            <i class="fas fa-home mr-3"></i>Raipur(C.G)India-492010
                        </p>
                        <p>
                            <i class="fas fa-envelope mr-3"></i>Pt. Ravishankar Shukla University Amanaka G.E.Road
                        </p>
                        <p>
                            <i class="fas fa-phone mr-3"></i>+ 01 234 567 88
                        </p>
                        <p>
                            <i class="fas fa-print mr-3"></i>Fax No. 0771-2262818(Registrar)
                        </p>
                    </div>
                    <!-- Grid column -->

                </div>
                <!-- Footer links -->

                <hr />

                <!-- Grid row -->
                <div class="row d-flex align-items-center">

                    <!-- Grid column -->
                    <div class="col-md-7 col-lg-8">

                        <!--Copyright-->
                        <p class="text-center text-md-left">
                            © Pt Ravishankar Shukla University ,Amanaka,GE Road ,Raipur 492010.All rights reserved.
                        </p>

                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-5 col-lg-4 ml-lg-0">

                        <!-- Social buttons -->
                        <div class="text-center text-md-right">
                            <ul class="list-unstyled list-inline">
                                <li class="list-inline-item">
                                    <a class="btn-floating btn-sm rgba-white-slight mx-1">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a class="btn-floating btn-sm rgba-white-slight mx-1">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a class="btn-floating btn-sm rgba-white-slight mx-1">
                                        <i class="fab fa-google-plus-g"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a class="btn-floating btn-sm rgba-white-slight mx-1">
                                        <i class="fab fa-linkedin-in"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>

                    </div>
                    <!-- Grid column -->

                </div>
                <!-- Grid row -->

            </div>
            <!-- Footer Links -->

        </footer>
    </form>
</body>
</html>
