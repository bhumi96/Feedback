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
    public partial class Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getStudent();
            }
        }
        private void  getStudent()
        {
            dbconnection db = new dbconnection();
            using (MySqlConnection con=new MySqlConnection(db.connstr))
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand("select student_registration.student_id, student_registration.student_name,student_registration.father_name,student_registration.mother_name,student_registration.student_address,student_registration.student_email,student_registration.semester,student_registration.date_of_birth,student_registration.mobile_number,student_registration.admission_date,student_registration.category,student_registration.gender,student_registration.qualification,student_registration.date,course.course_name from student_registration,course where course.course_id=student_registration.course_id ", con);
                DataSet ds = new DataSet();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                rptstudent.DataSource = dt;
                rptstudent.DataBind();

            }
        }
        protected void btnupdate_Click(object sender,EventArgs e)
        {
            Response.Redirect("StudentDetailUpdate.aspx?Id=" + hfId.Value);
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            dbconnection db = new dbconnection();
            using (MySqlConnection con = new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("delete from student_registration where student_id='" + hfId.Value + "'", con);
                    MySqlDataReader dr = cmd.ExecuteReader();
                    getStudent();
                    con.Close();
                }
                catch(Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
                
            }
        }
    }
    
}