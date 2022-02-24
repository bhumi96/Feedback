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

namespace FeedbackCS
{
    public partial class StudentLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            try
            {
                dbconnection db = new dbconnection();
                using (MySqlConnection con = new MySqlConnection(db.connstr))
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("select student_email,password from student_login_detail where student_email= @userName and password= @passWord", con);
                    cmd.Parameters.AddWithValue("@userName", txtUser.Text.Trim());
                    cmd.Parameters.AddWithValue("@passWord", txtpass.Text.Trim());
                    MySqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        Session["CurrentUser"] = txtUser.Text;
                        Response.Redirect("Student Registration.aspx", false);
                    }
                    else
                    {
                        MessageBox.Show(" invalid username and Password!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);

                    }
                    cmd.Dispose();
                    con.Dispose();
                    clear();
                }
            }

            catch (Exception ex)
            {
                System.Diagnostics.Trace.WriteLine("[ValidateUser] Exception " + ex.Message);
            }
        }

        void clear()
        {
            txtUser.Text = string.Empty;
            txtpass.Text = string.Empty;
        }
    }
}