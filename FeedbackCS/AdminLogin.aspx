<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="FeedbackCS.AdminLogin" %>

<!DOCTYPE html>

<html lang="en">
    <head>

        <title></title>
        <meta charset="utf-8" />

        <meta name="viewport" content="width=device-width,initial-scale=1" />
         <link href="Content/bootstrap.min.css" rel="stylesheet" />
         <script src="Scripts/jquery-1.10.2.min.js"></script>
         <script src="Scripts/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <style>
            .login-page
            {
                width:360px;
                padding:9% 0 0;
                margin:auto;
            }
            .form {
                position: fixed;
                top: 200px;
                background: #5cb85c;
                max-width: 360px;
                margin: auto;
                padding: 50px;
                text-align: center;
                box-shadow: 0 0 20px 0 rgba(0,0,0,0.2),0 5px 5px 0 rgba(0,0,0,0.24);
                background-image: url("./Image/feedback.jpg");
            }
           
            /*.form input
            {
                border-style: none;
                border-color: inherit;
                border-width: 0px;
                font-family:"Roboto",sans-serif;
                outline:0px;
                background:#f2f2f2;
                margin:0 0 15px;
                padding:15px;
                box-sizing:border-box;
                font-size:14px;
            }
            .form button
            {
                font-family:"Roboto",sans-serif;
                text-transform:uppercase;
                outline:0;
                background:#5cb85c;
                width:100px;
                border:0px;
                padding:15px;
                color:#62d6cb;
                font-size:14px;
                -webkit-transition:all 0 ease;
                transition:all 0 ease;
                cursor:pointer;
            }
            .form button:hover,.form button:active,.form button:focus
            {
                background:#5cb85c;
            }*/
            body {
                background-image: url("./Image/feedback.jpg");
                background-size: cover;
                background-repeat: no-repeat;
            }
        </style>
    </head>
    <body>
        <form class="login-form" runat="server">
        <div class="container">
            <div class="login-page">
                <div class="form">
                    <h3>Admin Login</h3>
                        <br />

                    <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="requser" runat="server" ErrorMessage="*******"  Display="Static" ControlToValidate="txtUserName" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                    <br />
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqpass" runat="server" ErrorMessage="*******" Display="Static" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>

                    <br />
                    <asp:Button ID="btnlog" runat="server" Text="Login"  CssClass="btn btn-primary" OnClick="btnlog_Click"/>
                    <asp:CheckBox ID="chkRemember" Visible="false" runat="server" />
                    
                    <br /><br />    
                   
                </div>
            </div> 
            

        </div>
             </form>
        <script>
            $('.message a').click(function () { $('form').animate({ height: "toggle", opacity: "toggle" }, "slow"); });
        </script>
    </body>
</html>
