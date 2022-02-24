<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FeedbackQuestion.aspx.cs" Inherits="FeedbackCS.FeedbackQuestion" %>

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
            width:100%;
            height:100%;
        }
         .element{
            display:flex;
            top:0;bottom:0;right:0;left:0;
            padding-top:20px;
            padding-bottom:20px;
            padding-left:20%;
        }
        .intro {
            width: 72vw;
            height: 125vh;
            background-color:#eee;
        }
        #Label1 {
            display: block;
            font-family: Garamond;
            font-size: 25px;
            font-weight: bolder;
            padding-top: 20px;
            padding-left: 26vw;
            background-color:#46B2B2;
            color:white;
        }
       .btn{
           margin-left:250px;
       }
       .chk{
           margin-left:5px;
       }
       .feed{
           margin-left:15px;
       }
       .lbl{
           font-weight:bold;
           font-size:20px;
           margin-left:20px;
           font-family:Garamond;
       }
       .header{
           align-content:center;
       }
      
    </style>
</head>
<body>
    <form id="form1" runat="server">
      <div class="element">
          <div class="intro">
               <asp:Label ID="Label1" runat="server" Text="QUESTIONNAIRE"></asp:Label><br />
            <p style="font-size:30px;font-weight:bolder;font-family:Garamond;border-bottom:solid;border-bottom-width:1px;padding-left:155px">Pt. Ravishankar Shukla University , Raipur</p>
            <p style="font-size:20px;font-weight:bolder;font-family:Garamond;padding-left:175px;border-bottom:solid;border-bottom-width:1px">Name of the Department : S.o.S in Computer Science & IT</p>
            <p style="font-size:18px;font-weight:bold;padding-left:5px;font-family:'Times New Roman', Times, serif">Student Feedback On Teachers (Separate for each Teacher,Please give only for those teachers who have taught you in this semester)</p>
           <div class="form">
                <asp:Label Text="Faculty-Name" runat="server" ID="lblfname" CssClass="lbl" Width="230px"></asp:Label>
                <asp:DropDownList ID="ddlname" runat="server" AutoPostBack="true" Width="180px"></asp:DropDownList>
           </div><br />
             <div class="form">
                 <asp:Label Text="Subject" runat="server" ID="lblsubject" CssClass="lbl" Width="230px"></asp:Label>
                 <asp:DropDownList ID="ddlsubject" runat="server" AutoPostBack="true" Width="180px"></asp:DropDownList>
             </div><br />
             <%-- <div class="form">
                  <asp:Label Text="Date" runat="server" ID="lbldate" CssClass="lbl" Width="230px"></asp:Label>
                  <asp:TextBox ID="txtdate" runat="server" Width="180px"></asp:TextBox>
              </div><br />--%>
              <table class="table table-bordered">
                 <tr>
                     <td style="align-self:center">

                         <asp:GridView ID="gvfacultyquestion" runat="server"  ViewStateMode="Enabled"  CellPadding="3" Width="100%" AutoGenerateColumns="False" Height="250px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" GridLines="Vertical" OnSelectedIndexChanged="gvfacultyquestion_SelectedIndexChanged">
                             <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                             <RowStyle BackColor="#E3EAEB" Font-Size="Small" HorizontalAlign="Left" Width="100%" ForeColor="Black" />
                             <AlternatingRowStyle BackColor="White" />
                             <Columns>
                                 <asp:BoundField DataField="question_id" HeaderStyle-CssClass="header" HeaderText="ID" ReadOnly="True" SortExpression="question_id" />
                                 <asp:BoundField HeaderText="Question" HeaderStyle-CssClass="header" DataField="question_name" ItemStyle-Font-Size="15px" ItemStyle-Font-Bold="true" ItemStyle-Font-Italic="true" HeaderStyle-Font-Size="25px">
                                 <HeaderStyle Font-Size="25px"></HeaderStyle>
                                  <ItemStyle Font-Bold="True" Font-Italic="True"></ItemStyle>
                                 </asp:BoundField>
                                 <asp:TemplateField HeaderText="Feedback" HeaderStyle-CssClass="header" ControlStyle-CssClass="feed" ControlStyle-Width="350px" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Font-Size="25px">
                                     <ItemTemplate>
                                        <asp:RadioButtonList ID="rbloption" runat="server" RepeatDirection="Horizontal">
                                             <asp:ListItem Value="4" Text="Very Good"></asp:ListItem>
                                             <asp:ListItem Value="3" Text="Good"></asp:ListItem>
                                             <asp:ListItem Value="2" Text="Satisfactory"></asp:ListItem>
                                             <asp:ListItem Value="1" Text="Unsatisfactory"></asp:ListItem>
                                        </asp:RadioButtonList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="rbloption" Display="Dynamic" SetFocusOnError="true" EnableViewState="false" EnableClientScript="false"></asp:RequiredFieldValidator>
                                     </ItemTemplate>
                                    <ControlStyle Width="400px"></ControlStyle>
                                    <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                                 </asp:TemplateField>
                             </Columns>
                             <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                             <HeaderStyle BackColor="#46B2B2" ForeColor="White" Font-Bold="True" HorizontalAlign="Left" />
                             <EditRowStyle Font-Size="X-Small" />
                             <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                             <SortedAscendingCellStyle BackColor="#F1F1F1" />
                             <SortedAscendingHeaderStyle BackColor="#0000A9" />
                             <SortedDescendingCellStyle BackColor="#CAC9C9" />
                             <SortedDescendingHeaderStyle BackColor="#000065" />

                         </asp:GridView><br /><br />

                        <asp:Button ID="btnsubmit" runat="server" Text="Submit"  CssClass="btn btn-primary" OnClick="btnsubmit_Click"/>
                        <asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="btn btn-danger" OnClick="btncancel_Click" />

                     </td>

                      
                 </tr>
                 
           </table>
          </div>
      </div>   
         <br />
    
    </form>

</body>
</html>
