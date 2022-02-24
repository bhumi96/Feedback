<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyLoginDetail.aspx.cs" Inherits="FeedbackCS.FacultyLoginDetail" %>

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

    <link href="Content/footer1.css" rel="stylesheet" />
    <script>

        $(document).ready(function () {
            $('#stafflogindetail').DataTable();
        });

    </script>
      <style>
          body{
              overflow-x:hidden;
          }
       .panel > .panel-heading{
            background-color:#46B2B2;
        }
       .btn{
           width:90px;
       }
      
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="panel panel-primary" style="width:100%">
          <div class="panel-heading" style="font-weight:bold;font-family:'Times New Roman', Times, serif;height:50px;margin-bottom:20px;" >
                <h4 class="panel-title">
                <span class="glyphicon glyphicon-user" style="font-size:18px;font-weight:bold;color:white;margin-left:10px" >STAFF_LOGIN_DETAIL</span> 
                 <a href="AdminMaster.aspx" style="font-size:18px; color:white;margin-left:80%"><i class="fa fa-sign-out"></i></a>
                </h4>
            </div>
            <div class="panel-body">
                
            <asp:Repeater ID="rptstafflogindetail" runat="server">
                <HeaderTemplate>
                    <table class="table table-hover table-striped table-bordered" role="grid" id="stafflogindetail" aria-describedby="emails_info">
                     <thead>
                          <tr>
                             <th style="width:200px" class="sorting" tabindex="0"  rowspan="1" colspan="1" aria-label=" NAME
                               : activate to sort column ascending">NAME</th>
                             <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label=" EMAIL
                               : activate to sort column ascending">EMAIL</th>
                             <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label=" DATE
                               : activate to sort column ascending">DATE</th>
                             <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label=" PASSWORD
                               : activate to sort column ascending">PASSWORD</th>
                             <th>ACTION</th>
                            
                           </tr>
                    </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                     <tr>
                                       <td><%# DataBinder.Eval(Container.DataItem,"staff_name") %></td>
                                       <td><%# DataBinder.Eval(Container.DataItem,"staff_email") %></td>
                                       <td><%# DataBinder.Eval(Container.DataItem,"password") %></td>
                                       <td>
                                           <asp:Button ID="btnupdate" runat="server" Text="APPROVE"  CssClass="btn btn-primary"/>
                                           <asp:Button ID="btndelete" runat="server" Text="REJECT"  CssClass="btn btn-danger"/>
                                       </td>
                      </tr>

                </ItemTemplate>
                <FooterTemplate>
                     </tbody>
               
               </table>
                </FooterTemplate>
                  
            </asp:Repeater>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
