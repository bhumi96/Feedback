<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssignSubject.aspx.cs" Inherits="FeedbackCS.AssignSubject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery.dataTables.js"></script>
    <link href="Content/jquery.dataTables.css" rel="stylesheet" />
    <script src="Scripts/dataTables.bootstrap.min.js"></script>
    


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
    <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.11.0/css/all.css" />
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&amp;display=swap" />
    <link rel="stylesheet" type="text/css" href="https://mdbootstrap.com/api/snippets/static/download/MDB-Pro_4.19.0/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="https://mdbootstrap.com/api/snippets/static/download/MDB-Pro_4.19.0/css/mdb.min.css" />
    <link rel="stylesheet" type="text/css" />

    <script type="text/javascript">
        $(document).ready(function () {
            $('.dropdown-toggle').dropdown();
        })
    </script>

    <style>
        body {
            padding: 0;
            margin: 0;
            overflow-x: hidden;
        }

        #Label1 {
            display: block;
            font-family: Garamond;
            font-size: 25px;
            font-weight: bolder;
            /*padding-top: 35px;*/
            padding-left: 8.5vw;
            background-color: white;
            color: black;
            margin-top: 40px;
            /*margin-left:0.5px;*/
        }
        .search{
            margin-top:6px;
        }

        .txt {
            display: inline-block;
            text-align: left;
        }

        .lbl {
            width: 240px;
            display: inline-block;
            margin-left: 50px;
            font-size: 20px;
            font-weight: bold;
            font-family: 'Times New Roman', Times, serif;
            color: black;
            margin-left: 10%;
        }


        .btn1 {
            margin-left: 8%;
            width: 119px;
        }

        .btn2 {
            margin-left: 20px;
            width: 119px;
        }

        .grid {
            width: 90%;
            margin-left: 30px;
            overflow: scroll;
            height: 350px;
        }

        .gridheader {
            text-align: center;
            position: static;
        }

        th {
            text-align: center;
        }

        .text {
            margin-top: 40px;
            margin-left: 40px;
        }

        /*.auto-style1 {
            margin-top: 20px;
            margin-left: 29px;
        }*/


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
                 <a style="margin-left: 30px; margin-top: 20px;">ASSIGN SUBJECT TO FACULTY</a>
             </div>
           <div class="col-md-3" style="display:flex;">
                <asp:TextBox runat="server" ID="txtssearch" Text="Search" CssClass="form-control search" ></asp:TextBox>
                <button id="btnssearch" onclick="btnsearch_click" type="submit" class="btn btn-primary" style="border-radius:5px;font-size:15px;margin-right:60px;width:15px;height:38px">
                    <i class="fas fa-search"></i>
                </button>
            </div>

             
        </div>



        <div class="row" style="margin-top:50px">
            <div class="col-md-6">
                <asp:Label ID="lblid" runat="server" Text="ID" CssClass="lbl"></asp:Label>
                <asp:TextBox ID="txtid" runat="server" CssClass="txt"></asp:TextBox><br />
                <br />

                <asp:Label ID="lblfname" runat="server" Text="Faculty Name" CssClass="lbl"></asp:Label>
                <asp:DropDownList ID="ddlname" runat="server" CssClass="txt" Width="174px" AutoPostBack="true"></asp:DropDownList><br />
                <br />

                <asp:Label ID="lblcourse" runat="server" Text="Course" CssClass="lbl"></asp:Label>
                <asp:DropDownList ID="ddlcourse" runat="server" CssClass="txt" Width="174px" AutoPostBack="true"></asp:DropDownList><br />
                <br />

                <asp:Label ID="lblsem" runat="server" Text="Semester" CssClass="lbl"></asp:Label>
                <asp:DropDownList ID="ddlsem" runat="server" CssClass="txt" Width="174px" AutoPostBack="true">
                    <asp:ListItem>---Select Semester---</asp:ListItem>
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                </asp:DropDownList><br />
                <br />

                <asp:Label ID="lblsub" runat="server" Text="Subject" CssClass="lbl"></asp:Label>
                <asp:DropDownList ID="ddlsubject" runat="server" CssClass="txt" Width="174px" AutoPostBack="true"></asp:DropDownList><br />
                <br />
                <br />

                <asp:Button ID="btninsert" runat="server" Text="INSERT" CssClass="btn btn-primary btn1" OnClick="btnok_Click" />
                <asp:Button ID="btnupdate" runat="server" Text="UPDATE" CssClass="btn btn-success btn2" OnClick="btnupdate_Click" />
                <asp:Button ID="btndelete" runat="server" Text="DELETE" CssClass="btn btn-danger btn2" OnClick="btndelete_Click" />
                <asp:Button ID="btncancel" runat="server" Text="CANCEL" CssClass="btn btn-warning btn2 " /><br />
                <br />
                <br />
                <br />
                <br />


            </div>

            <div class="col-md-6">
                <asp:GridView ID="grdsubject" runat="server" ForeColor="Black" OnPageIndexChanging="grdsubject_PageIndexChanging" HeaderStyle-HorizontalAlign="Center" CssClass="grid gridheader" CellPadding="3" margin-right="1px" margin-top="80px" ViewStateMode="Enabled" AllowSorting="True" AutoGenerateSelectButton="True" EnablePersistedSelection="True" DataKeyNames="id" SortedDescendingHeaderStyle-BorderStyle="Groove" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" OnSelectedIndexChanged="grdsubject_SelectedIndexChanged" AllowPaging="True" PageSize="10" AutoGenerateColumns="False">

                    <PagerStyle BackColor="#284775" ForeColor="white" HorizontalAlign="Center" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="ID" HeaderStyle-CssClass="gridheader" />
                        <asp:BoundField DataField="faculty_id" HeaderText="Name" HeaderStyle-CssClass="gridheader" />
                        <asp:BoundField DataField="course_id" HeaderText="Course" HeaderStyle-CssClass="gridheader" />
                        <asp:BoundField DataField="semester" HeaderText="Semester" HeaderStyle-CssClass="gridheader" />
                        <asp:BoundField DataField="subject_id" HeaderText="Subject" HeaderStyle-CssClass="gridheader" />
                        <asp:BoundField DataField="date" HeaderText="Year" HeaderStyle-CssClass="gridheader" />
                    </Columns>
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <FooterStyle />
                    <PagerTemplate>
                    </PagerTemplate>
                    <SelectedRowStyle BackColor="#000099" Font-Bold="true" ForeColor="White" />
                    <HeaderStyle BackColor="Black" Font-Bold="true" ForeColor="White" />

                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />


                </asp:GridView>



            </div>

            <br />
            <br />
            <br />
            <br />
        </div>


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
