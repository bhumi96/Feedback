<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseFeedback.aspx.cs" Inherits="FeedbackCS.CourseFeedback" %>

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
            padding-left:28%;
        }
        .intro {
            width: 60vw;
            height: 95vh;
            background-color:#eee;
            border-radius: 10px;
        }
        #Label1 {
            display: block;
            font-family: Garamond;
            font-size: 25px;
            font-weight: bolder;
            padding-top: 20px;
            padding-left: 21vw;
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
            <p style="font-size:30px;font-weight:bolder;font-family:Garamond;border-bottom:solid;border-bottom-width:1px;padding-left:16%">Pt. Ravishankar Shukla University , Raipur</p>
            <p style="font-size:20px;font-weight:bolder;font-family:Garamond;padding-left:18%;border-bottom:solid;border-bottom-width:1px">Name of the Department : S.o.S in Computer Science & IT</p>
            
            <table class="table table-bordered">
                <tr>
                    <td style="align-self:center">
                        <asp:GridView ID="grdcourse" runat="server" ViewStateMode="Enabled"  CellPadding="3" Width="100%" AutoGenerateColumns="False" Height="250px" GridLines="Vertical" ForeColor="Black" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" OnSelectedIndexChanged="grdcourse_SelectedIndexChanged">
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                             <RowStyle BackColor="#E3EAEB" Font-Size="Small" HorizontalAlign="Left" Width="100%" ForeColor="Black" />
                             <AlternatingRowStyle BackColor="white" />
                             <Columns>
                                 <asp:BoundField DataField="cquestion_id" HeaderStyle-CssClass="header" HeaderText="ID" ReadOnly="True" SortExpression="id" >
<HeaderStyle CssClass="header"></HeaderStyle>
                                 </asp:BoundField>
                                 <asp:BoundField HeaderText="Question" HeaderStyle-CssClass="header" DataField="course_question" ItemStyle-Font-Size="15px" ItemStyle-Font-Bold="true" ItemStyle-Font-Italic="true" HeaderStyle-Font-Size="25px">
                                 <HeaderStyle Font-Size="25px"></HeaderStyle>
                                  <ItemStyle Font-Bold="True" Font-Italic="True"></ItemStyle>
                                 </asp:BoundField>
                                 <asp:TemplateField HeaderText="Feedback" HeaderStyle-CssClass="header" ControlStyle-CssClass="feed" ControlStyle-Width="350px" HeaderStyle-HorizontalAlign="Right" HeaderStyle-Font-Size="25px">
                                     <ItemTemplate>
                                         <asp:RadioButtonList ID="rblcourseoption" runat="server" RepeatDirection="Horizontal">
                                             <asp:ListItem Value="4" Text="Very Good"></asp:ListItem>
                                             <asp:ListItem Value="3" Text="Good"></asp:ListItem>
                                             <asp:ListItem Value="2" Text="Satisfactory"></asp:ListItem>
                                             <asp:ListItem Value="1" Text="Unsatisfactory"></asp:ListItem>
                                         </asp:RadioButtonList>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="rblcourseoption" Display="Dynamic" SetFocusOnError="true" EnableViewState="false" EnableClientScript="false"></asp:RequiredFieldValidator>
                                     </ItemTemplate>

                                   <ControlStyle Width="400px"></ControlStyle>

                                   <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                                 </asp:TemplateField>
                             </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                             <HeaderStyle BackColor="#46B2B2" ForeColor="White" Font-Bold="True" HorizontalAlign="Left" />
                             <EditRowStyle Font-Size="X-Small" />
                             <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                             <SortedAscendingCellStyle BackColor="#F1F1F1" />
                             <SortedAscendingHeaderStyle BackColor="#808080" />
                             <SortedDescendingCellStyle BackColor="#CAC9C9" />
                             <SortedDescendingHeaderStyle BackColor="#383838" />

                        </asp:GridView><br /><br /><br /> 
                        <asp:Button ID="btnsubmit" runat="server" Text="Submit"  CssClass="btn btn-primary" OnClick="btnsubmit_Click"/>
                        <asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="btn btn-danger" OnClick="btncancel_Click" />  
                    </td>
                </tr>
                
            </table> 
        
            <br />

            

           
        </div>
    
    </div>
    </form>
</body>
</html>
