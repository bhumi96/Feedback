using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;
using System.Windows.Forms;
using System.Text;
namespace FeedbackCS
{
    public partial class StudentSignup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getCourses();
            }
        }
        protected void getCourses()
        {
            dbconnection db = new dbconnection();
            using (MySqlConnection con = new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("select course_id,course_name from course", con);
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);

                    ddlcourses.DataSource = cmd.ExecuteReader();
                    ddlcourses.DataTextField = "course_name";
                    ddlcourses.DataValueField = "course_id";
                    ddlcourses.DataBind();
                    con.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }

            }
        }
      
        protected void btnsign_Click(object sender, EventArgs e)
        {
            try
            {
                dbconnection db = new dbconnection();
                using (MySqlConnection con = new MySqlConnection(db.connstr)) 
                {
                    string pass = GetRandomPassword(8);
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("insert into student_login_detail(student_name,student_email,course_id,semester,password) values('"+this.txtname.Text+"','"+this.txtemail.Text+"','"+ddlcourses.SelectedValue+"','"+this.txtsem.Text+"','"+pass+"');", con);
                    cmd.Parameters.AddWithValue("@student_name", txtname.Text);
                    cmd.Parameters.AddWithValue("@student_email", txtemail.Text);
                    cmd.Parameters.AddWithValue("@course_id",ddlcourses.SelectedValue);
                    cmd.Parameters.AddWithValue("@semester", txtsem.Text);
                    cmd.Parameters.AddWithValue("@password", pass);
                    
                    cmd.ExecuteNonQuery();
                    clear();
                    Response.Redirect("StudentLogin.aspx", false);
                }
            }
            catch (MySqlException ex)
            {
                MessageBox.Show(ex.Message);
            }
           
       }
        void clear()
        {
            txtname.Text = string.Empty;
            txtemail.Text = string.Empty;
            txtsem.Text = string.Empty;
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            clear();
            Response.Redirect("StudentLogin.aspx", false);
        }
        private static string[] chars = { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "$", "@", "*","#" };
        
        public static string GetRandomPassword(int length)
        {
            Random rd = new Random();
            int charlength = chars.Length;
            StringBuilder sb = new StringBuilder();
            for(int i = 0; i < length; i++)
            {
                sb.Append(chars[rd.Next(charlength)]);
            }
            return sb.ToString();

        }
    }


}
