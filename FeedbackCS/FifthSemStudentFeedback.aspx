<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FifthSemStudentFeedback.aspx.cs" Inherits="FeedbackCS.FifthSemStudentFeedback" %>

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
            padding-left:30%;
        }
        .intro {
            width: 45vw;
            height: 200vh;
            background-color:#eee;
            border-radius: 10px;
        }
        #Label1 {
            display: block;
            font-family: Garamond;
            font-size: 25px;
            font-weight: bolder;
            padding-top: 20px;
            padding-left: 4vw;
            background-color:cadetblue;
            color:white;
        }
       .btn{
           margin-left:150px;
       }
       .chk{
           padding-left:3px;
       }

     .auto-style2 {
         width: 92px;
     }

    </style>
</head>
<body>
    <form id="form1" runat="server">
     <div class="element">
        <div class="intro">
            <asp:Label ID="Label1" runat="server" Text="QUESTIONNAIRE (for final year students only)"></asp:Label><br />
            <p style="font-size:30px;font-weight:bolder;font-family:Garamond;border-bottom:solid;border-bottom-width:1px;padding-left:15px">Pt. Ravishankar Shukla University , Raipur</p>
            <p style="font-size:20px;font-weight:bolder;font-family:Garamond;padding-left:17px;border-bottom:solid;border-bottom-width:1px">Name of the Department : S.o.S in Computer Science & IT</p>
           
             <table class="table table-bordered">
                
                <tbody>

                    <tr>
                        <th class="auto-style2">Students overall Evaluation of Program and Teaching</th>
                        <th><input type="text" style="margin-top:20px" /></th>
                    </tr>
                    <tr>
                        <th class="auto-style2">Name of the Teacher</th>
                        <th><input type="text" /></th>
                    </tr>
                    <tr>
                        <th class="auto-style2">Course/Program</th>
                        <th><input type="text" /></th>
                    </tr>
                    <tr>
                        <th class="auto-style2">Year</th>
                        <th><input type="text" /></th>
                    </tr>
                     <tr>
                         <th rowspan="2" class="auto-style2">1.</th>
                         <td colspan="11" >Your background for benefiting from the course was</td>
                     </tr>
                    <tr>
                        <th>
                            <asp:CheckBox ID="CheckBox1" runat="server" Text="More than adequate"/>
                            <asp:CheckBox ID="CheckBox2" runat="server" Text="Just adequate" CssClass="chk" />
                            <asp:CheckBox ID="CheckBox3" runat="server"  Text="Inadequate" CssClass="chk"/>
                            <asp:CheckBox ID="CheckBox4" runat="server" Text="Cannot say" CssClass="chk" />
                        </th>
                    </tr>
                    <tr>
                        <th rowspan="2" class="auto-style2">2.</th>
                        <td>Was the course conceptually difficult to understand ?</td>
                    </tr>
                    <tr>
                      <th>
                          <asp:CheckBox ID="CheckBox5" runat="server"  Text="Easy"/>
                          <asp:CheckBox ID="CheckBox6" runat="server"  Text="Manageable" CssClass="chk"/>
                          <asp:CheckBox ID="CheckBox7" runat="server"  Text="Difficult" CssClass="chk"/>
                          <asp:CheckBox ID="CheckBox8" runat="server"  Text="Very Difficult" CssClass="chk"/>
                       </th>
                    </tr>
                    <tr>
                        <th rowspan="2" class="auto-style2">3.</th>
                        <td>Were you able to get the prescribed reading ?</td>
                    </tr>
                    <tr>
                        <th>
                            <asp:CheckBox ID="CheckBox9" runat="server"  Text="Easily"/>
                            <asp:CheckBox ID="CheckBox10" runat="server" Text="With difficulty" CssClass="chk"/>
                            <asp:CheckBox ID="CheckBox11" runat="server" Text="Not at all" CssClass="chk"/>
                            <asp:CheckBox ID="CheckBox12" runat="server" Text="With great difficulty" CssClass="chk"/>
                        </th>
                    </tr>
                    <tr>
                        <th rowspan="2" class="auto-style2">4.</th>
                        <td>How well did the teacher prepare for class ?</td>
                    </tr>
                    <tr>
                        <th>
                            <asp:CheckBox ID="CheckBox14" runat="server"  Text="Thoroughly"/>
                            <asp:CheckBox ID="CheckBox13" runat="server"  Text="Satisfactorily" CssClass="chk"/>
                            <asp:CheckBox ID="CheckBox15" runat="server"  Text="Poorly" CssClass="chk"/>
                            <asp:CheckBox ID="CheckBox16" runat="server"  Text="Indifferently" CssClass="chk"/>
                        </th>
                    </tr>
                    <tr>
                        <th rowspan="2" class="auto-style2">5.</th>
                        <td>How helpful was the teacher in advising ?</td>
                    </tr>
                    <tr>
                        <th>
                            <asp:CheckBox ID="CheckBox17" runat="server" Text="Helpful" />
                            <asp:CheckBox ID="CheckBox18" runat="server" Text="Unhelpful" CssClass="chk" />
                            <asp:CheckBox ID="CheckBox19" runat="server" Text="Sometimes helpful" CssClass="chk"/>
                            <asp:CheckBox ID="CheckBox20" runat="server" Text="Sometimes unhelpful" CssClass="chk"/>
                        </th>
                    </tr>
                    <tr>
                        <th rowspan="2" class="auto-style2">6.</th>
                        <td>Was the teacher ?</td>
                    </tr>
                    <tr>
                        <th>
                            <asp:CheckBox ID="CheckBox21" runat="server" Text="Courteous"/>
                            <asp:CheckBox ID="CheckBox22" runat="server" Text="Rude" CssClass="chk"/>
                            <asp:CheckBox ID="CheckBox23" runat="server" Text="Indifferent" CssClass="chk" />
                            <asp:CheckBox ID="CheckBox24" runat="server" Text="Strict"  CssClass="chk"/>
                        </th>
                    </tr>
                    <tr>
                        <th rowspan="2" class="auto-style2">7.</th>
                        <td>Was there any opportunity for personal interaction with teacher ?</td>
                    </tr>
                    <tr>
                        <th>
                            <asp:CheckBox ID="CheckBox25" runat="server"  Text="Yes"/>
                            <asp:CheckBox ID="CheckBox26" runat="server"  Text="To some external" CssClass="chk" />
                            <asp:CheckBox ID="CheckBox27" runat="server"  Text="Nil" CssClass="chk"/>
                            <asp:CheckBox ID="CheckBox28" runat="server"  Text="Cannot say"  CssClass="chk"/>
                        </th>
                    </tr>
                    <tr>
                        <th rowspan="2" class="auto-style2">8.</th>
                        <td>Was there any opportunity for small group work ?</td>
                    </tr>
                    <tr>
                        <th>
                            <asp:CheckBox ID="CheckBox29" runat="server" Text="Yes"/>
                            <asp:CheckBox ID="CheckBox30" runat="server" Text="To some extent" CssClass="chk" />
                            <asp:CheckBox ID="CheckBox31" runat="server" Text="Nil"  CssClass="chk"/>
                            <asp:CheckBox ID="CheckBox32" runat="server" Text="cannot say" CssClass="chk"/>
                        </th>
                    </tr>
                    <tr>
                        <th rowspan="2" class="auto-style2">9.</th>
                        <td>Were outsider experts invited to address you ?</td>
                    </tr>
                    <tr>
                        <th>
                            <asp:CheckBox ID="CheckBox33" runat="server" Text="Yes" />
                            <asp:CheckBox ID="CheckBox34" runat="server" Text="Rarely" CssClass="chk"/>
                            <asp:CheckBox ID="CheckBox35" runat="server" Text="None" CssClass="chk" />
                            <asp:CheckBox ID="CheckBox36" runat="server" Text="Frequently" CssClass="chk"/>
                        </th>
                    </tr>
                    <tr>
                        <th rowspan="2" class="auto-style2">10.</th>
                        <td>Did you visit industries,laboratories,banks and outside universities ?</td>
                    </tr>
                    <tr>
                        <th>
                            <asp:CheckBox ID="CheckBox37" runat="server" Text="Yes,frequently"/>
                            <asp:CheckBox ID="CheckBox38" runat="server" Text="Some times"  CssClass="chk"/>
                            <asp:CheckBox ID="CheckBox39" runat="server" Text="No"  CssClass="chk"/>
                            <asp:CheckBox ID="CheckBox40" runat="server" Text="Yes,rarely" CssClass="chk" />
                        </th>
                    </tr>
                </tbody>
           </table> <br />

            <asp:Button ID="btnsubmit" runat="server" Text="Submit"  CssClass="btn btn-primary"/>
            <asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="btn btn-danger" />

           
        </div>
    
    </div>
    </form>
</body>
</html>
