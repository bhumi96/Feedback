using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Windows.Forms;
using System.Text;

namespace FeedbackCS
{
    public partial class FacultySignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsignup_Click(object sender, EventArgs e)
        {
            try
            {
                dbconnection db = new dbconnection();
                using (MySqlConnection con = new MySqlConnection(db.connstr))
                {
                    string pass = getPassword(8);
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("insert into faculty_login_detail(faculty_name,email,password) values('" + this.txtname.Text + "','" + this.txtemail.Text + "','"+pass+"');", con);
                    cmd.Parameters.AddWithValue("@faculty_name", txtname.Text);
                    cmd.Parameters.AddWithValue("@faculty_email", txtemail.Text);
                    cmd.Parameters.AddWithValue("@password", pass);
                    cmd.ExecuteNonQuery();
                    clear();
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
        }
        protected void btncancel_Click(object sender, EventArgs e)
        {
            clear();
            Response.Redirect("FacultyLogin.aspx");
        }
        protected static string[] chars= { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "$", "@", "*", "#" };

        public static string getPassword(int length)
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