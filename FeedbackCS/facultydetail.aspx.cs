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
    public partial class facultydetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getStaff();
            }

        }
        private void getStaff()
        {
            dbconnection db = new dbconnection();
            using (MySqlConnection con = new MySqlConnection(db.connstr))
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand("select * from faculty_registration", con);
                DataSet ds = new DataSet();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                rptstaff.DataSource = dt;
                rptstaff.DataBind();

            }
        }

        protected void btnup_Click(object sender, EventArgs e)
        {
            Response.Redirect("FacultyUpdate.aspx?Id=" + hid.Value);
        }

        protected void btndel_Click(object sender,EventArgs e)
        {
            dbconnection db = new dbconnection();
            using(MySqlConnection con=new MySqlConnection(db.connstr))
            { 
                try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("delete from faculty_registration where faculty_id='" + hid.Value + "'", con);
                    MySqlDataReader dr = cmd.ExecuteReader();
                    con.Close();
                    getStaff();
                }
                catch(Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
                
            }
        }
    }
}