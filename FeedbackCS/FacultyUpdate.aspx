<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyUpdate.aspx.cs" Inherits="FeedbackCS.FacultyUpdate" %>

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

    <style>
         body {
            padding:0;
            margin:0;
            
        }
        .cover {
            /*background-image: url("./Image/AdobeStock_236629968.jpeg");*/
            background-size: cover;
            background-repeat: no-repeat;
            width: 100%;
            height: 170%;
            display: flex;
            background-color:lightgray;
        }
        .element{
            display:flex;
            top:0;bottom:0;right:0;left:0;
            padding-left:30%;
            padding-top:20px;
            padding-bottom:20px;

        }
        .intro {
            width: 35vw;
            height: 122vh;
            background-color:white;
        }
        
        #lbl1{
            display:block;
            font-family:Garamond;
            font-size:25px;
            font-weight:bolder;
            padding-top:20px;
            padding-left:11vw;
            background-color:#46B2B2;
            color:white;
        }
        .txt{
          display:inline-block;
          text-align:left;  
        }
        .lbl{
            width:240px;
            display:inline-block;
            margin-left:40px;
            font-size:15px;
            font-weight:bold;
            font-family:'Times New Roman', Times, serif;

        }
        .btn{
            margin-left:115px;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="cover">
            <div class="element">
                <div class="intro">
                     <asp:Label ID="lbl1" runat="server" Text="FACULTY DETAIL"></asp:Label><br /><br />
                    <div class="form">
                        <asp:Label ID="lblId" runat="server" Text="ID"  CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtid" runat="server" CssClass="txt"></asp:TextBox>
                    </div><br />
                    <div class="form">
                         <asp:Label ID="lblname" runat="server" Text="NAME" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtstaffname" runat="server" CssClass="txt"></asp:TextBox>
                    </div><br />

                    <div class="form">
                        <asp:Label ID="lbladdress" runat="server" Text="ADDRESS" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtstaffaddress" runat="server" CssClass="txt"></asp:TextBox>
                    </div><br />

                    <div class="form">
                        <asp:Label ID="lblemail" runat="server" Text="EMAIL" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtstaffemail" runat="server" CssClass="txt"></asp:TextBox>
                    </div><br />

                    <div class="form">
                        <asp:Label ID="labeldesignation" runat="server" Text="DESIGNATION" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtstaffdesignation" runat="server" CssClass="txt"></asp:TextBox>
                    </div><br />

                    <div class="form">
                         <asp:Label ID="labelstafftype" runat="server" Text="STAFF TYPE" CssClass="lbl"></asp:Label>
                        <asp:DropDownList ID="ddlstafftype" runat="server" AutoPostBack="true" Width="175px">
                           <asp:ListItem Text="Teaching-Faculty" Value="1"></asp:ListItem>
                           <asp:ListItem Text="Non-Teaching Faculty" Value="2"></asp:ListItem>
                           <asp:ListItem Text="Visiting Faculty" Value="3"></asp:ListItem>
                           <asp:ListItem Text="Former Faculty" Value="4"></asp:ListItem>
                        </asp:DropDownList>
                    </div><br />
                     
                     <div class="form">
                        <asp:Label ID="lblmobile" runat="server" Text="MOBILE NUMBER" CssClass="lbl"></asp:Label>
                         <asp:TextBox ID="txtstaffmobile" runat="server" CssClass="txt"></asp:TextBox>
                    </div><br />

                    <div class="form">
                        <asp:Label ID="lbldob" runat="server" Text="DATE OF BIRTH" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtdofb" runat="server" CssClass="txt"></asp:TextBox>
                    </div><br />

                    <div class="form">
                        <asp:Label ID="lblqualification" runat="server" Text="QUALIFICATION" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtstaffqua" runat="server" CssClass="txt"></asp:TextBox>
                    </div><br />
                    
                    <div class="form">
                         <asp:Label ID="lbljoining" runat="server" Text="JOINING DATE" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtstaffjoin" runat="server" CssClass="txt"></asp:TextBox>
                    </div><br />

                    <div class="form">
                        <asp:Label ID="lblgender" runat="server" Text="GENDER" CssClass="lbl"></asp:Label>
                        <asp:CheckBox ID="checkmale" runat="server" Text="MALE"  CssClass="chk" />
                        <asp:CheckBox ID="checkfemale" runat="server" Text="FEMALE" /><br /><br />
                    </div><br />

                    <div class="form">
                        <asp:Button ID="btnupdate" runat="server" Text="UPDATE" CssClass="btn btn-primary" OnClick="btnupdate_Click"/>
                        <asp:Button ID="btncancel" runat="server" Text="CANCEL"  CssClass="btn btn-danger" OnClick="btncancel_Click"/>
                    </div>

                </div>
            </div>
        </div>
                    
    </div>
    </form>
</body>
</html>
