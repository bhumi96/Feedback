<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentloginDetail.aspx.cs" Inherits="FeedbackCS.StudentloginDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <script src=" https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.11.0/js/jquery.dataTables.min.js"></script>
     <script src="https://cdn.datatables.net/1.11.0/js/dataTables.bootstrap4.min.js"></script>


        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" />
        <link rel="stylesheet" href="https://cdn.datatables.net/1.11.0/css/dataTables.bootstrap4.min.css" />
    <link href="Content/footer1.css" rel="stylesheet" />

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

    <script>

        $(document).ready(function () {
            $('#studlogindetail').DataTable();
        });

    </script>
      <style>
       .panel > .panel-heading{
            background-color:#46B2B2;
            color:white;
        }
       .btn{
           width:90px;
       }
       body{
           overflow-x:hidden;
       }
      
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="panel" style="width:100%">
            <div class="panel-heading" style="font-weight:bold;font-family:'Times New Roman', Times, serif;height:50px;margin-bottom:20px;" >
                 <h4 class="panel-title">
                <span class="glyphicon glyphicon-user" style="font-size:18px;font-weight:bold;color:white;margin-left:10px" >STUDENT_LOGIN_DETAIL</span> 
                 <a href="AdminMaster.aspx" style="font-size:18px; color:white;margin-left:80%"><i class="fa fa-sign-out"></i></a>
                    
                </h4>
            </div>
            <div class="panel-body">
            <asp:HiddenField ID="hidfield" runat="server" />   
            <asp:Repeater ID="rptstudlogindetail" runat="server">
                <HeaderTemplate>
                    <table class="table table-striped table-bordered" role="grid" id="studlogindetail" aria-describedby="emails_info">
                     <thead>
                          <tr>
                             <th class="sorting" tabindex="0"  rowspan="1" colspan="1" aria-label=" ID
                               : activate to sort column ascending">ID</th>
                             <th class="sorting" tabindex="0"  rowspan="1" colspan="1" aria-label=" NAME
                               : activate to sort column ascending">NAME</th>
                             <th id="tdemail" style="width:200px" class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label=" EMAIL
                               : activate to sort column ascending">EMAIL</th>
                             <th style="width:100px" class="sorting" tabindex="0"  rowspan="1" colspan="1" aria-label=" COURSE
                               : activate to sort column ascending">COURSE</th>
                             <th style="width:100px" class="sorting" tabindex="0"  rowspan="1" colspan="1" aria-label=" SEMESTER
                               : activate to sort column ascending">SEMESTER</th>
                             <th class="sorting" tabindex="0"  rowspan="1" colspan="1" aria-label=" DATE
                               : activate to sort column ascending">DATE</th>
                             <th class="sorting" tabindex="0"  rowspan="1" colspan="1" aria-label=" ACTION
                               : activate to sort column ascending">ACTION</th>
                            
                           </tr>
                    </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                     <tr>
                                       <td>
                                           <asp:Label ID="lblid" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                                       </td>
                                       <td><%# DataBinder.Eval(Container.DataItem,"student_name") %></td>
                                       <td>
                                           <asp:Label ID="lblemail" Text='<%# Eval("student_email") %>' runat="server"></asp:Label>
                                       </td>
                                       <td><%# DataBinder.Eval(Container.DataItem,"course_name") %></td>
                                       <td><%# DataBinder.Eval(Container.DataItem,"semester") %></td>
                                       <td><%# DataBinder.Eval(Container.DataItem,"date") %></td>
                                       <td>
                                           <asp:Button ID="btnapprove" runat="server" Text="APPROVE"  CssClass="btn btn-primary" OnClick="btnapprove_Click"/>
                                           <asp:Button ID="btnreject" runat="server" Text="REJECT"  CssClass="btn btn-danger" OnClick="btnreject_Click"/>
                                       </td>
                      </tr>

                </ItemTemplate>
                <FooterTemplate>
                     </tbody>
               
               </table>
                </FooterTemplate>
                  
            </asp:Repeater>
                <asp:HiddenField ID="hidfield1" runat="server" />

            </div>
        </div>
    
    </div>
    </form>

    <script type="text/javascript">
        $( window.onload= function  () {
            $("[id*= studlogindetail] td").click(function () {
                var row = $(this).parent();
                $("[id*=studlogindetail] tr").each(function () {
                    if ($(this)[0] != row[0]) {
                        $("td", this).removeClass("selected_row");
                    }
                });
                $("td", row).each(function () {
                    if (!$(this).hasClass("selected_row")) {
                        $(this).addClass("selected_row");
                    } else {
                        $(this).removeClass("selected_row");
                    }
                });
                $('[id*=hidfield]').val($(this).closest('tr').find('[id*=lblid]')[0].innerHTML);
                return true;
            });
        });
    </script>

</body>
</html>
