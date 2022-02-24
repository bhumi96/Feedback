<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentSignup.aspx.cs" Inherits="FeedbackCS.StudentSignup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="Content/bootstrap.min.css" rel="stylesheet" />
         <script src="Scripts/jquery-1.10.2.min.js"></script>
         <script src="Scripts/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>

    <style>
        body {
            /*background-image: url("./Image/seth-schwiet-WB3ujiKLJwQ-unsplash.jpg");*/
            background-image: url("./Image/baim-hanif-pYWuOMhtc6k-unsplash.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            padding: 0;
            margin: 0;
        }
        .login-form{
            background-color:rgba(0,0,0,0.411);
            background-position-x:0%;
            background-position-y:0%;
            background-repeat: repeat;
            background-attachment: scroll;
            background-size: auto;
            background-origin: padding-box;
            background-clip: border-box;
            max-width:500px;
            height:500px;
            margin:0 auto;
            padding:3em;
            border-radius:10px;
            box-sizing:border-box;
            margin-top:50px;
            margin-left:30%;
        }
        h1{
            color:red;
            font-weight:bold;
            font-size:28px;
            padding-top:5px;
            margin-left:5px;

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
            width:240px;

        }
        /*input[type=date]{
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
        }
        .btn{
            margin-left:80px;
            display:flex;
        }
        
    </style>

</head>
<body>
 <form id="form1" runat="server">
    <div>
        <div class="login-form">
            <h1>SignUp</h1>
             <div class="form">
                   <label class="lbl1">NAME :</label>
                     <asp:TextBox ID="txtname" runat="server" CssClass="form-control input" ></asp:TextBox>
             </div>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="(Required)" Font-Bold="true" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
           
             <div class="form">
               <label class="lbl1">EMAIL :</label>
                <asp:TextBox ID="txtemail" runat="server" CssClass="form-control input"></asp:TextBox>
            </div> 
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="(Required)" ControlToValidate="txtemail" ForeColor="Red" Font-Bold="true" Font-Size="Medium"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter valid email id format" ControlToValidate="txtemail" Font-Bold="true" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

             <div class="form">
                <label class="lbl1">COURSE:</label>
                <asp:DropDownList ID="ddlcourses" runat="server" CssClass="form-control input" AutoPostBack="true"></asp:DropDownList>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="(Required)"  ControlToValidate="ddlcourses" ForeColor="Red" Font-Bold="true" Font-Size="Medium"></asp:RequiredFieldValidator>

            <div class="form">
                <label class="lbl1">SEMESTER :</label>
                <asp:TextBox ID="txtsem" runat="server" CssClass="form-control input"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="(Required)" ControlToValidate="txtsem" ForeColor="Red" Font-Size="Medium" Font-Bold="true"></asp:RequiredFieldValidator>

            <br />
            <div class="form">
                 <asp:Button ID="btnsign" Text="SIGNUP" runat="server" CssClass="btn btn-info" OnClick="btnsign_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                 <asp:Button ID="btncancel" Text="CANCEL" runat="server"  CssClass="btn btn-danger" OnClick="btncancel_Click"/>
            </div>
            

          </div>
    
    </div>
    </form>
   <%-- <script>
        function validatenumber(key) {
            var keycode = (key.which) ? key.which : key.keycode;
            if (keycode > 31 && (keycode < 48 || keycode > 57)) {
                alert("please enter number");
                return false;
            }
            else {
                return true;
            }
        }
    </script>--%>
</body>
</html>
