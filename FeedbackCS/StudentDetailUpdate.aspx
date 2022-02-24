<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentDetailUpdate.aspx.cs" Inherits="FeedbackCS.StudentDetailUpdate" %>

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
            background-color:lightgray;
            background-size: cover;
            background-repeat: no-repeat;
            width: 100%;
            height: 100%;
            display: flex;
        }
        .element{
            display:flex;
            top:0;bottom:0;right:0;left:0;
            padding-left:35%;
            padding-top:20px;
            padding-bottom:20px;

        }
        .intro {
            width: 35vw;
            height: 150vh;
            background-color:white;
        }
        
        #lbl1{
            display:block;
            font-family:Garamond;
            font-size:25px;
            font-weight:bolder;
            padding-top:20px;
            padding-left:10.6vw;
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
            font-size:17px;
            font-weight:bold;
            font-family:'Times New Roman', Times, serif;

        }
        .btn{
            margin-left:115px;

        }
        .chk{
            padding:5px;
        }
        .validation{
            padding-left:30px;
        }
        .link{
            margin-left:180px;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="cover">
            <div class="element">
                <div class="intro">
                    <asp:Label ID="lbl1" runat="server" Text="STUDENT DETAIL"></asp:Label><br />
                    <div class="form">
                        <asp:Label ID="lblId" runat="server" Text="ID" CssClass="lbl"></asp:Label>
                    </div><br />
                    <div class="form">
                        <asp:Label ID="lblnames" runat="server" Text="Name" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtstudentname" runat="server" CssClass="txt"></asp:TextBox>
                    </div>
                    <br />
                    <div class="form">
                        <asp:Label ID="lblfather" runat="server" Text="Father Name" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtstdfathername" runat="server" CssClass="txt"></asp:TextBox>
                    </div><br />
                    <div class="form">
                        <asp:Label ID="lblmother" runat="server" Text="Mother Name" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtstdmothername" runat="server" CssClass="txt"></asp:TextBox>
                    </div><br />
                    <div class="form">
                        <asp:Label ID="lbladd" runat="server" Text="Address" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtstdaddress" runat="server" CssClass="txt"></asp:TextBox>
                    </div><br />
                    <div class="form">
                        <asp:Label ID="lblemail" runat="server" Text="Email" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtstdemail" runat="server" CssClass="txt"></asp:TextBox>
                    </div><br />
                    <div class="form">
                        <asp:Label ID="lblcourse" runat="server" Text="Course" CssClass="lbl"></asp:Label>
                        <asp:DropDownList ID="ddlstdcourse" runat="server" CssClass="txt" Width="165px" AutoPostBack="true"></asp:DropDownList>
                    </div><br />
                    <div class="form">
                        <asp:Label ID="lblsem" runat="server" Text="Semester" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtstdsem" runat="server" CssClass="txt"></asp:TextBox>
                    </div><br />
                    <div class="form">
                        <asp:Label ID="lbldob" runat="server" Text="Date Of Birth" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtstddob" runat="server" CssClass="txt"></asp:TextBox>
                    </div><br />
                    <div class="form">
                        <asp:Label ID="lblmonum" runat="server" Text="Mobile Number" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtstdmobile" runat="server" CssClass="txt"></asp:TextBox>
                    </div><br />
                    <div class="form">
                        <asp:Label ID="lblquali" runat="server" Text="Qualification" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtstdqualification" runat="server" CssClass="txt"></asp:TextBox>
                    </div>
                    <br />
                    <div class="form">
                        <asp:Label ID="lbldate" runat="server" Text="Admission Date" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtstdadmission" runat="server" CssClass="txt"></asp:TextBox>
                    </div><br />
                    <div class="form">
                        <asp:Label ID="lblcategory" runat="server" Text="Category" CssClass="lbl"></asp:Label>
                        <asp:DropDownList ID="ddlstdcategory" runat="server" Width="166px" AutoPostBack="true">
                                 <asp:ListItem Value="SC" Text="SC"></asp:ListItem>
                                 <asp:ListItem Value="ST" Text="ST"></asp:ListItem>
                                 <asp:ListItem Value="OBC" Text="OBC"></asp:ListItem>
                                 <asp:ListItem Value="GEN" Text="GEN"></asp:ListItem>
                       </asp:DropDownList>
                    </div><br />
                    <div class="form">
                        <asp:Label ID="lblmedium" runat="server" Text="Medium" CssClass="lbl"></asp:Label>
                        <asp:CheckBox ID="chkstdhindi" runat="server" Text="HINDI" CssClass="txt" />
                        <asp:CheckBox ID="chkstdenglish" runat="server" Text="ENGLISH" CssClass="chk" />
                    </div><br />
                    <div class="form">
                        <asp:Label ID="lblgender" runat="server" Text="Gender" CssClass="lbl"></asp:Label>
                        <asp:CheckBox Id="chkstdmale" runat="server" Text="MALE" CssClass="txt" />
                        <asp:CheckBox ID="chkstdfemale" runat="server" Text="FEMALE" CssClass="chk" />
                    </div><br />
                    <div class="form">
                        <asp:Button ID="btnup" runat="server" Text="UPDATE" CssClass="btn btn-primary" OnClick="btnup_Click" />
                        <asp:Button ID="btncancel" runat="server" Text="CANCEL" CssClass="btn btn-danger" OnClick="btncancel_Click"/><br /><br />
                    </div>

    </div>
                </div>
        </div>
        </div>
    </form>
</body>
</html>
