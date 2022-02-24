using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Windows.Forms;
using System.Web.Security;
using static FeedbackCS.Global;
using System.Net;

namespace FeedbackCS
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand cmd;
        string str;
       

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new MySqlConnection("DataSource=localhost;Database=feedbackit;User ID=root;Password=Analogx3$$; SslMode=none");
            con.Open();
            
        }

        protected void btnlog_Click(object sender, EventArgs e)
        {

            str = "select * from admin where username = @username and password=@password ";
            cmd = new MySqlCommand(str, con);
            cmd.Parameters.AddWithValue("@username", txtUserName.Text.Trim());
            cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
            MySqlDataReader dr = cmd.ExecuteReader();
            if(dr.Read())
            { 
                Session["CurrentUser"] = txtUserName.Text;
                Response.Redirect("AdminMaster.aspx");
            }
            else
            {
                MessageBox.Show(" invalid username and Password!","Error",MessageBoxButtons.OK, MessageBoxIcon.Warning);

            }
            con.Close();

        }


       
    }
}
