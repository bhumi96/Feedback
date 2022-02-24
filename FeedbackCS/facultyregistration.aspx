<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="facultyregistration.aspx.cs" Inherits="FeedbackCS.facultyregistration" %>

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
        body{
            padding:0;
            margin:0;
            
        }
        .cover {
            background-image: url("./Image/corinne-kutz-tMI2_-r5Nfo-unsplash.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            width: 100%;
            height: 121vh;
            display: flex;
        }
       
        .element{
            display:flex;
            top:0;bottom:0;right:0;left:0;
            padding-top:20px;
            padding-bottom:20px;
            padding-left:57%;
        }
        .intro{
            width:40vw;
            height:118vh;
            background-color:white;
            border-radius:10px;
        }
        #Label1{
             display:block;
            font-family:Garamond;
            font-size:25px;
            font-weight:bolder;
            padding-top:20px;
            padding-left:10vw;
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
            font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif

        }
        .btn{
            margin-left:115px;

        }
        .chk{
            margin-left:5px;
        }
        .validation{
            padding-left:30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="cover">
            <div class="element">
                <div class="intro">
                    <asp:Label ID="Label1" runat="server" Text="STAFF REGISTRATION"></asp:Label><br /><br />

                    <div class="form">
                        <asp:Label ID="labelname" runat="server" Text="NAME" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtname" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Reqname" runat="server" ErrorMessage="Required" ForeColor="Red" Font-Bold="true" ControlToValidate="txtname"></asp:RequiredFieldValidator>
                    </div><br />

                    <div class="form">
                        <asp:Label ID="lblshort" runat="server" Text="SHORT-NAME" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtshort" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reshort" runat="server" ErrorMessage="Required" ForeColor="Red" Font-Bold="true" ControlToValidate="txtshort"></asp:RequiredFieldValidator>
                    </div><br />
                    
                    <div class="form">
                         <asp:Label ID="labeladdress" runat="server" Text="ADDRESS" CssClass="lbl"></asp:Label>
                         <asp:TextBox ID="txtaddress" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Reqaddress" runat="server" ErrorMessage="Required" ForeColor="Red" Font-Bold="true" ControlToValidate="txtaddress"></asp:RequiredFieldValidator>
                    </div><br />
                   
                    <div class="form">
                        <asp:Label ID="labelmail" runat="server" Text="EMAIL" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtmail" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Reqmail" runat="server" ErrorMessage="Required"  ForeColor="Red" Font-Bold="true" ControlToValidate="txtmail"></asp:RequiredFieldValidator>
                    </div>
                    <asp:RegularExpressionValidator ID="Regularmail" CssClass="validation" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  ErrorMessage="Please enter valid email id" ControlToValidate="txtmail" ForeColor="Red" Font-Bold="true"></asp:RegularExpressionValidator>

                    <div class="form">
                        <asp:Label ID="labeldesig" runat="server" Text="DESIGNATION" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtdesig" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Reqdesig" runat="server" ErrorMessage="Required" ControlToValidate="txtdesig" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </div><br />
                    
                    <div class="form">
                        <asp:Label ID="labelstype" runat="server" Text="STAFF TYPE" CssClass="lbl"></asp:Label>
                        <asp:DropDownList ID="ddlstype" runat="server" AutoPostBack="true" Width="175px">
                           <asp:ListItem Text="Teaching-Faculty" Value="1"></asp:ListItem>
                           <asp:ListItem Text="Non-Teaching Faculty" Value="2"></asp:ListItem>
                           <asp:ListItem Text="Visiting Faculty" Value="3"></asp:ListItem>
                           <asp:ListItem Text="Former Faculty" Value="4"></asp:ListItem>
                        </asp:DropDownList>
                    </div><br />
                    
                    <div class="form">
                        <asp:Label ID="labelnumber" runat="server" Text="MOBILE NO." CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtnumber" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Reqnumber" runat="server" ErrorMessage="Required" ControlToValidate="txtnumber" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </div>
                    <asp:RangeValidator ID="Rangenumber" runat="server" CssClass="validation" ErrorMessage="Please enter number" ControlToValidate="txtnumber" MinimumValue="0" MaximumValue="9" ForeColor="Red" Font-Bold="true"></asp:RangeValidator>
                    
                    <div class="form">
                        <asp:Label ID="labeljoining" runat="server" Text="JOINING DATE" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtjoining" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Reqjoining" runat="server" ErrorMessage="Required" ControlToValidate="txtjoining" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </div><br />
                    
                    <div class="form">
                        <asp:Label ID="labelqualification" runat="server" Text="QUALIFICATION" CssClass="lbl"></asp:Label>
                        <asp:TextBox ID="txtqualification" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Reqqualification" runat="server" ErrorMessage="Required" ControlToValidate="txtqualification" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </div><br />
                    
                    <div class="form">
                         <asp:Label ID="labeldob" runat="server" Text="DATE OF BIRTH" CssClass="lbl"></asp:Label>
                         <asp:TextBox ID="txtdob" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Reqdob" runat="server" ErrorMessage="Required" ControlToValidate="txtdob" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </div><br />
                   
                    <asp:Label ID="lblgender" runat="server" Text="GENDER" CssClass="lbl"></asp:Label>
                    <asp:CheckBox ID="chkmale" runat="server" Text="MALE"  CssClass="chk" />
                    <asp:CheckBox ID="chkfemale" runat="server" Text="FEMALE" /><br /><br />

                    <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" CssClass="btn btn-primary" OnClick="btnsubmit_Click" />
                    <asp:Button ID="btncancel" runat="server" Text="CANCEL"  CssClass="btn btn-danger" OnClick="btncancel_Click"/><br />

                </div>
            </div>
        </div>
    
    </div>
    </form>
</body>
</html>
