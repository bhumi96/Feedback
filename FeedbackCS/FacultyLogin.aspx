<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyLogin.aspx.cs" Inherits="FeedbackCS.FacultyLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
         <script src="Scripts/jquery-1.10.2.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
     <script src='https://kit.fontawesome.com/a076d05399.js'></script>

    <style>
        body {
            margin: 0;
            padding: 0;
            width: 100%;
            height: 60vw;
        }
        .cover{
            background-image: url("./Image/seth-schwiet-WB3ujiKLJwQ-unsplash.jpg");
            background-repeat:no-repeat;
            background-size:cover;
            width:100%;
            height:60vw;
        }
        h1{
            margin:0;
            color:red;
            text-align:center;
            font-size:50px;
            font-weight:500;
            letter-spacing:2px;
            padding:50px 0;
        }
        .login-form{

            background-color:rgba(0,0,0,0.411);
            background-position-x:0%;
            background-position-y:0%;
            background-repeat: repeat;
            background-attachment: scroll;
            background-image: none;
            background-size: auto;
            background-origin: padding-box;
            background-clip: border-box;
            max-width:500px;
            margin:0 auto;
            padding:3em;
            border-radius:10px;
            box-sizing:border-box;

        }
        .form-group{
            margin:20px 0;
        }
        .lbl1{
            display:block;
            text-transform:uppercase;
            font-size:13px;
            color:#d2d2d2;
            letter-spacing:2px;
            margin-bottom:10px;
            font-style:italic;
        }
        .group{
            display:flex;
            padding:15px 5px;
            background-color:#ffffff;
        }
        .group i{
            color:#fc3955;
            font-size:20px;
            padding:0 10px;
        }
        .inputtext{
            width:100%;
            border:none;
            box-sizing:border-box;
            background-color: transparent;
            background-position-x: 0%;
            background-position-y: 0%;
            background-repeat: repeat;
            background-attachment: scroll;
            background-image: none;
            background-size: auto;
            background-origin: padding-box;
            background-clip: border-box;
            color:#000;
        }
        .form-group1{
            margin:20px 0;
        }
        .inputpassword{
            width: 100%;
            box-sizing: border-box;
            color: #000;
            border-top-color: currentcolor;
            border-top-style: none;
            border-top-width: medium;
            border-right-color: currentcolor;
            border-right-style: none;
            border-right-width: medium;
            border-bottom-color: currentcolor;
            border-bottom-style: none;
            border-bottom-width: medium;
            border-left-color: currentcolor;
            border-left-style: none;
            border-left-width: medium;
            border-image-outset: 0;
            border-image-repeat: stretch;
            border-image-slice: 100%;
            border-image-source: none;
            border-image-width: 1;
            box-sizing: border-box;
            background: transparent;
            background-color: transparent;
            background-position-x: 0%;
            background-position-y: 0%;
            background-repeat: repeat;
            background-attachment: scroll;
            background-image: none;
            background-size: auto;
            background-origin: padding-box;
            background-clip: border-box;
        }
        .forgot{
            display:flex;
            justify-content:space-between;
            margin:20px 0;
        }
        a{
            color: #eee;
           font-size: 14px;
           text-decoration: none;
            text-decoration-line: none;
            text-decoration-style: solid;
            text-decoration-color: currentcolor;
        }
        .forgot p{
            color: #ffffff;
            text-align: center;
            margin: 0px;
            font-size: 13px;
        }
        .button{
            background: #fc3955;
            background-color: rgb(252, 57, 85);
            background-position-x: 0%;
            background-position-y: 0%;
            background-repeat: repeat;
            background-attachment: scroll;
            background-image: none;
            background-size: auto;
            background-origin: padding-box;
            background-clip: border-box;
            color:white;
            font-size: 13px;
            text-transform: uppercase;
            letter-spacing: 1px;
            border: none;
            border-top-color: currentcolor;
            border-top-style: none;
            border-top-width: medium;
            border-right-color: currentcolor;
            border-right-style: none;
            border-right-width: medium;
            border-bottom-color: currentcolor;
            border-bottom-style: none;
            border-bottom-width: medium;
            border-left-color: currentcolor;
            border-left-style: none;
            border-left-width: medium;
            border-image-outset: 0;
            border-image-repeat: stretch;
            border-image-slice: 100%;
            border-image-source: none;
            border-image-width: 1;
            padding: 12px 60px;
            cursor: pointer;
            width: 100%;
            border-radius: 6px;
            border-top-left-radius: 6px;
            border-top-right-radius: 6px;
            border-bottom-right-radius: 6px;
            border-bottom-left-radius: 6px;

        }
         .registration{
            color: #eee;
            font-size: 13px;
            text-align: center;
            margin-top: 2em;
        }
        .register{
            color: #00BCD4;
            text-decoration: none;
            text-decoration-line: none;
            text-decoration-style: solid;
            text-decoration-color: currentcolor;
        }

    </style>

</head>
<body>
     <div class="cover">
           <h1>Faculty Login Form</h1>

        <div class="login-form">

            <h2 style="color:red">Login Here</h2>
             <form id="form1" method="post" runat="server">
                 <div class="form-group">
                     <label class="lbl1">Username:</label>
                     <div class="group">
                         <i class="fas fa-user">
                         </i> 
                         <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control inputtext"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="Requser" runat="server" ErrorMessage="(Required)" ControlToValidate="txtUsername" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                     </div>
                 </div>
                 <div class="form-group1">
                     <label class="lbl1">Password</label>
                     <div class="group">
                         <i class="fas fa-unlock">
                         </i>
                         <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control inputpassword" TextMode="Password"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="Reqpassword" runat="server" ErrorMessage="(Required)" ControlToValidate="txtpassword" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                     </div>
                 </div>
                 <div class="forgot">
                     <a href="#">Forgot Password?</a>
                     <p>
                         <input type="checkbox" />
                         Remember Me
                     </p>
                 </div>
                 <asp:Button ID="btnlogin" runat="server" OnClick="btnlogin_Click" CssClass="button" Text="LOGIN" />
                 <%--<button id="btnsubmit" type="submit" runat="server" onclick="btnsubmit_click">Login</button>--%>
           </form>
            <p class="registration">
                Don't have an account?
                <a class="register" href="FacultySignUp.aspx">SignUp</a>
            </p>

        </div>


        </div>
</body>
</html>
