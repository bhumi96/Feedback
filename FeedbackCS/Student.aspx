<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="FeedbackCS.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
   
   
    <%--- bootstrap CDN -----%>

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

    <link href="Content/footer1.css" rel="stylesheet" />
    <script>
        $(document).ready(function () {
            $('#studetail').DataTable();
        });

</script>
    <style>
        body{
            width:100%;
            height:100%;
            margin:0;
            padding:0;
        }
       .panel > .panel-heading{
            background-color:#46B2B2;
        }
       .btn{
           width:90px;
       }

      
    </style>
    
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
    <div>
        <div class="panel" style="width:185%;">
             <div class="panel-heading" style="font-weight:bold;font-family:'Times New Roman', Times, serif;height:50px;margin-bottom:20px;" >
                <h4 class="panel-title">
                <span class="glyphicon glyphicon-user" style="font-size:18px;font-weight:bold;color:white;margin-left:10px" >STUDENT_DETAIL</span> 
                 <a href="AdminMaster.aspx" style="font-size:18px; color:white;margin-left:2300px"><i class="fa fa-sign-out"></i></a>
                </h4>
            </div>
            <div class="panel-body">
             <asp:HiddenField ID="hfId" runat="server" />   
            <asp:Repeater ID="rptstudent" runat="server">
                <HeaderTemplate>
                    <table class="table table-hover table-striped table-bordered" role="grid" id="studetail" aria-describedby="emails_info">
                     <thead>
                           <tr>
                             <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label=" ID
                               : activate to sort column ascending">ID</th>
                             <th class="sorting" tabindex="0"  rowspan="1" colspan="1" aria-label=" NAME
                               : activate to sort column ascending">NAME</th>
                             <th class="sorting" tabindex="0"  rowspan="1" colspan="1" aria-label=" FATHER NAME
                               : activate to sort column ascending">FATHER NAME</th>
                             <th class="sorting" tabindex="0"  rowspan="1" colspan="1" aria-label=" MOTHER NAME
                               : activate to sort column ascending">MOTHER NAME</th>
                             <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label=" ADDRESS
                               : activate to sort column ascending">ADDRESS</th>
                             <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label=" EMAIL
                               : activate to sort column ascending">EMAIL</th>
                             <th class="sorting" tabindex="0"  rowspan="1" colspan="1" aria-label=" COURSE
                               : activate to sort column ascending">COURSE</th>
                             <th class="sorting" tabindex="0"  rowspan="1" colspan="1" aria-label=" SEMESTER
                               : activate to sort column ascending">SEMESTER</th>
                             <th class="sorting" tabindex="0"  rowspan="1" colspan="1" aria-label=" DOB
                               : activate to sort column ascending">DOB</th>
                             <th class="sorting" tabindex="0"  rowspan="1" colspan="1" aria-label=" MOBILE NUMBER
                               : activate to sort column ascending">MOBILE NUMBER</th>
                             <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label=" QUALIFICATION
                               : activate to sort column ascending">QUALIFICATION</th>
                             <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label=" ADMISSIONDATE
                               : activate to sort column ascending">ADMISSIONDATE</th>
                             <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label=" CATEGORY
                               : activate to sort column ascending">CATEGORY</th>
                             <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label=" GENDER
                               : activate to sort column ascending">GENDER</th>
                             <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label=" REGISTRATION DATE
                               : activate to sort column ascending">REGISTRATION DATE</th>
                             <th style="width:200px" class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label=" ACTION
                               : activate to sort column ascending">ACTION</th>

                           </tr>
                    </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                     <tr>
                                       <td>
                                         <asp:Label ID="lblId" Text='<%# Eval("student_id") %>' runat="server" ></asp:Label>
                                       </td>
                                       <td><%# DataBinder.Eval(Container.DataItem,"student_name") %></td>
                                       <td><%# DataBinder.Eval(Container.DataItem,"father_name") %></td>
                                       <td><%# DataBinder.Eval(Container.DataItem,"mother_name") %></td>
                                       <td><%# DataBinder.Eval(Container.DataItem,"student_address") %></td>
                                       <td><%# DataBinder.Eval(Container.DataItem,"student_email") %></td>
                                       <td><%# DataBinder.Eval(Container.DataItem,"course_name") %></td>
                                       <td><%# DataBinder.Eval(Container.DataItem,"semester") %></td>
                                       <td><%# DataBinder.Eval(Container.DataItem,"date_of_birth") %></td>
                                       <td><%# DataBinder.Eval(Container.DataItem,"mobile_number") %></td>
                                       <td><%# DataBinder.Eval(Container.DataItem,"qualification") %></td>
                                       <td><%# DataBinder.Eval(Container.DataItem,"admission_date") %></td>
                                       <td><%# DataBinder.Eval(Container.DataItem,"category") %></td>
                                       <td><%# DataBinder.Eval(Container.DataItem,"gender") %></td>
                                       <td><%# DataBinder.Eval(Container.DataItem,"date") %></td>
                                       <td>
                                           <asp:Button ID="btnupdate" runat="server" Text="UPDATE"  CssClass="btn btn-primary" OnClick="btnupdate_Click"/>
                                           <asp:Button ID="btndelete" runat="server" Text="DELETE"  CssClass="btn btn-danger" OnClick="btndelete_Click"/>
                                       </td>
                      </tr>

                </ItemTemplate>
                <FooterTemplate>
                     </tbody>
               
               </table>
                </FooterTemplate>
                  
            </asp:Repeater>
                <asp:HiddenField ID="hfId1" runat="server" />
            </div>
        </div>
    
    </div>
        
    </form>
    <script type="text/javascript">
        $( window.onload= function  () {
            $("[id*= studetail] td").click(function () {
                var row = $(this).parent();
                $("[id*=studetail] tr").each(function () {
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
                $('[id*=hfId]').val($(this).closest('tr').find('[id*=lblId]')[0].innerHTML);
                return true;
            });
        });
    </script>

</body>
</html>
