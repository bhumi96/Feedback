using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Windows.Forms;


namespace FeedbackCS
{
    public partial class FacultyLogin : System.Web.UI.Page
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
                    MySqlCommand cmd = new MySqlCommand("select email,password from faculty_login_detail where email= @email and password= @password", con);
                    cmd.Parameters.AddWithValue("@email", txtUsername.Text);
                    cmd.Parameters.AddWithValue("@password", txtpassword.Text);
                    MySqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        Session["User"] = txtUsername.Text;
                        Response.Redirect("facultyregistration.aspx",false);
                    }
                    else
                    {
                        MessageBox.Show("invalid username and Password!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                    cmd.Dispose();
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            
        }
    }
}