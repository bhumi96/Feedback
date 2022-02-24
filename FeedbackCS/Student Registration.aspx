<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student Registration.aspx.cs" Inherits="FeedbackCS.Student_Registration" %>

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
            background-image: url("./Image/kelli-tungay-2LJ4rqK2qfU-unsplash.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            width: 100%;
            height: 150vh;
            display: flex;
        }
        .element{
            display:flex;
            top:0;bottom:0;right:0;left:0;
            padding-left:50%;
            padding-top:20px;
            padding-bottom:20px;

        }
        .intro {
            width: 40vw;
            height: 148vh;
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
            font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;

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
           margin-left:210px;
       }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="cover">
            <div class="element">
                <div class="intro">
                    <asp:Label ID="lbl1" runat="server" Text="REGISTRATION FORM"></asp:Label><br /><br />
                    <asp:Label ID="lblid" runat="server" Text="" Visible="false"></asp:Label>
                    <div class="form">
                         <asp:Label ID="lblname" runat="server" Text="NAME" CssClass="lbl"></asp:Label>
                         <asp:TextBox ID="txtname" runat="server" CssClass="txt"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="Reqname" runat="server" ErrorMessage="(Required)" ForeColor="Red" Font-Bold="true" Font-Size="Small" ControlToValidate="txtname"></asp:RequiredFieldValidator>
                    </div><br />

                    <div class="form">
                        <asp:Label ID="lblfathername" runat="server" Text="FATHER NAME" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtfathername" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Reqfather" runat="server" ErrorMessage="(Required)" ForeColor="Red" Font-Bold="true" Font-Size="Small" ControlToValidate="txtfathername"></asp:RequiredFieldValidator>
                    </div><br />

                    <div class="form">
                        <asp:Label ID="lblmothername" runat="server" Text="MOTHER NAME" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtmothername" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Reqmother" runat="server" ErrorMessage="(Required)" ForeColor="Red" Font-Size="Small" Font-Bold="true" ControlToValidate="txtmothername"></asp:RequiredFieldValidator>
                    </div><br />

                    <div class="form">
                        <asp:Label ID="lbladdress" runat="server" Text="ADDRESS" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtaddress" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Reqaddress" runat="server" ErrorMessage="(Required)" ForeColor="Red" Font-Size="Small" Font-Bold="true" ControlToValidate="txtaddress"></asp:RequiredFieldValidator>
                    </div><br />

                    <div class="form">
                        <asp:Label ID="lblemail" runat="server" Text="EMAIL" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtemail" runat="server" CssClass="txt"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="Reqemail" runat="server" ErrorMessage="(Required)" ForeColor="Red" Font-Size="Small" Font-Bold="true" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="Regularemail" runat="server"  CssClass="validation" ErrorMessage="Please Enter valid email id format" ForeColor="Red" Font-Bold="true" Font-Size="Small" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtemail"></asp:RegularExpressionValidator>
                    </div>

                    <div class="form">
                        <asp:Label ID="lblcourse" runat="server" Text="COURSE" CssClass="lbl"></asp:Label>
                        <asp:DropDownList ID="ddlcourse" runat="server" CssClass="txt" Width="165px" AutoPostBack="true"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="Reqcourse" runat="server" ErrorMessage="(Required)" Font-Bold="true" ForeColor="Red" Font-Size="Small" ControlToValidate="ddlcourse"></asp:RequiredFieldValidator>
                    </div><br />

                    <div class="form">
                        <asp:Label ID="lblsem" runat="server" Text="SEMESTER" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtsem" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Reqsem" runat="server" ErrorMessage="(Required)" Font-Bold="true" Font-Size="Small" ForeColor="Red" ControlToValidate="txtsem"></asp:RequiredFieldValidator>
                    </div><br />

                    <div class="form">
                        <asp:Label ID="lbldob" runat="server" Text="DATE OF BIRTH" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtdob" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Reqdob" runat="server" ErrorMessage="(Required)" Font-Bold="true" Font-Size="Small" ForeColor="Red" ControlToValidate="txtdob"></asp:RequiredFieldValidator>
                    </div><br />

                    <div class="form">
                        <asp:Label ID="lblmobile" runat="server" Text="MO. NUMBER" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtmobile" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Reqmobile" runat="server" ErrorMessage="(Required)" Font-Bold="true" Font-Size="Small" ForeColor="Red" ControlToValidate="txtmobile"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="Rangemobile" runat="server" CssClass="validation" ErrorMessage="Please enter only number " ControlToValidate="txtmobile" MaximumValue="9" MinimumValue="0" ForeColor="Red" Font-Bold="true"></asp:RangeValidator>
                    </div>

                    <div class="form">
                        <asp:Label ID="lblqualification" runat="server" Text="QUALIFICATION" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtqualification" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Reqqualification" runat="server" ErrorMessage="(Required)" Font-Bold="true" Font-Size="Small" ForeColor="Red" ControlToValidate="txtqualification"></asp:RequiredFieldValidator>
                    </div><br />
                    
                    <div class="form">
                         <asp:Label ID="lbladmission" runat="server" Text="ADMISSION DATE" CssClass="lbl"></asp:Label>
                         <asp:TextBox ID="txtadmission" runat="server" CssClass="txt"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="Reqadmission" runat="server" ErrorMessage="(Required)" Font-Bold="true" Font-Size="Small" ForeColor="Red" ControlToValidate="txtadmission"></asp:RequiredFieldValidator>
                    </div><br />

                    <div class="form">
                        <asp:Label ID="lblcategory" runat="server" Text="CATEGORY" CssClass="lbl"></asp:Label>
                        <asp:DropDownList ID="ddlcategory" runat="server" Width="166px" AutoPostBack="true">
                        <asp:ListItem Value="SC" Text="SC"></asp:ListItem>
                        <asp:ListItem Value="ST" Text="ST"></asp:ListItem>
                        <asp:ListItem Value="OBC" Text="OBC"></asp:ListItem>
                        <asp:ListItem Value="GEN" Text="GEN"></asp:ListItem>
                    </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="Reqcategory" runat="server" ErrorMessage="(Required)" Font-Size="Small" ForeColor="Red" Font-Bold="true" ControlToValidate="ddlcategory"></asp:RequiredFieldValidator>
                    </div><br />
                   
                    <div class="form">
                         <asp:Label ID="lblgender" runat="server" Text="GENDER" CssClass="lbl"></asp:Label>
                         <asp:CheckBox ID="chkmale" runat="server" Text="MALE" CssClass="txt" />
                         <asp:CheckBox ID="chkfemale" runat="server" Text="FEMALE" CssClass="chk" /><br /><br />
                    </div>
                   <div class="form">
                       <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" CssClass="btn btn-primary" OnClick="btnsubmit_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Button ID="btncancel" runat="server" Text="CANCEL"  CssClass="btn btn-danger" OnClick="btncancel_Click"/>
                   </div><br />
                    <div>
                        <asp:HyperLink ID="feedid" runat="server" Text="FeedbackMaster" NavigateUrl="~/FeedbackMaster.aspx" Visible="false" Font-Bold="true" CssClass="link"></asp:HyperLink>
                    </div>
                    <div>
                        <%--<asp:LinkButton ID="linkbtn" runat="server" Text="already registered...." CssClass="link" Font-Bold="true"></asp:LinkButton>--%>
                        <%--<asp:HyperLink ID="register" runat="server" Text="already registered...." NavigateUrl="~/Student.aspx" Font-Bold="true" CssClass="link"></asp:HyperLink>--%>
                    </div>

                </div>
            </div>
            
            
           
        </div>
    </form>
     
</body>
</html>
