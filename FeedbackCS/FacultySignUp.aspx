<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultySignUp.aspx.cs" Inherits="FeedbackCS.FacultySignUp" %>

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
        body{
            padding:0;
            margin:0;
            width:100%;
            height:100vh;
            
        }
        .cover {
            background-image: url("./Image/2_ConcurrentEnrollment.jpg");
            background-repeat:no-repeat;
            background-size:cover;
            width:100%;
            height:100vh;
        }
        .element{
            display:flex;
            top:0;bottom:0;right:0;left:0;
            padding-top:80px;
            padding-bottom:20px;
            padding-left:30%;
        }
        .intro {
            max-width:500px;
            height: 55vh;
            background-color:rgba(0,0,0,0.30);
            border-radius: 10px;
            margin-top:50px;
        }
        h1{
            margin:0;
            color:red;
            font-size:30px;
            font-weight:500;
            letter-spacing:2px;
            padding:30px 30px;
        }
        .form{
            display:flex;
            padding-top:20px;
        }
         .lbl1{
            text-transform:uppercase;
            display:block;
            font-size:18px;
            color:#d2d2d2;
            font-style:italic;
            width:250px;
            margin-left:20px;

        }
         .btn{
             margin-left:90px;
         }
          /*input[type=text]{
            width:70%;
            border:none;
            box-sizing:border-box;
            background-color:#ffffff ;
            background-position-x: 0%;
            background-position-y: 0%;
            background-repeat: repeat;
            background-attachment: scroll;
            background-image: none;
            background-size: auto;
            background-origin: padding-box;
            background-clip: border-box;
            color:#000;
            margin-right:20px;
        }*/
           .input{
              width:70%;
            border:none;
            box-sizing:border-box;
            background-color: #ffffff;
            background-position-x: 0%;
            background-position-y: 0%;
            background-repeat: repeat;
            background-attachment: scroll;
            background-image: none;
            background-size: auto;
            background-origin: padding-box;
            background-clip: border-box;
            color:#000;
            margin-right:20px;
        }

    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="cover">
            <div class="element">
                <div class="intro">
                    <h1>SignUp</h1>

                    <div class="form">
                        <label class="lbl1">NAME</label>
                        <asp:TextBox ID="txtname" runat="server" CssClass="form-control input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Reqname" runat="server" ErrorMessage="Required" ControlToValidate="txtname" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </div><br />
                   
                     <div class="form">
                        <label class="lbl1">EMAIL</label>
                        <asp:TextBox ID="txtemail" runat="server" CssClass="form-control input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Reqemail" runat="server" ErrorMessage="Required" ControlToValidate="txtemail" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </div>
                        <asp:RegularExpressionValidator ID="Regularemail" runat="server" ErrorMessage="Please enter valid email id" ControlToValidate="txtemail" ForeColor="Red" Font-Bold="true" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                    <br />
                    <div class="form">
                        <asp:Button ID="btnsignup" Text="SIGNUP" runat="server" CssClass="btn btn-primary" OnClick="btnsignup_Click" />&nbsp;&nbsp;&nbsp
                        <asp:Button ID="btncancel" Text="CANCEL" runat="server" CssClass="btn btn-danger"  OnClick="btncancel_Click"/>
                    </div>

                </div>
            </div>

        </div>
        
    
    </div>
    </form>
</body>
</html>
