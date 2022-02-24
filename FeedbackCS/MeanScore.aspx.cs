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
    public partial class feedbackReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getfaculty();
                course();

            }
        }
        protected void getfaculty()
        {
            dbconnection db = new dbconnection();
            using(MySqlConnection con=new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("select faculty_id,faculty_name from faculty_registration where faculty_type='Teaching-Faculty'", con);
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    ddlfacultyname.DataSource = cmd.ExecuteReader();
                    ddlfacultyname.DataTextField = "faculty_name";
                    ddlfacultyname.DataValueField = "faculty_id";
                    ddlfacultyname.DataBind();
                }
                catch(Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }

        protected void course()
        {
            dbconnection db = new dbconnection();
            using (MySqlConnection con = new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("select course_id,course_name from course", con);
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);

                    ddlcoursename.DataSource = cmd.ExecuteReader();
                    ddlcoursename.DataTextField = "course_name";
                    ddlcoursename.DataValueField = "course_id";
                    ddlcoursename.DataBind();
                    con.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
                
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            dbconnection db = new dbconnection();
            using(MySqlConnection con=new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("select sum(total_feedback)/count(total_feedback) as total  from faculty_feedback where faculty_id='" + ddlfacultyname.SelectedValue + "' AND  YEAR(Date)=YEAR(NOW()) AND course_id= '"+ddlcoursename.SelectedValue+ "' AND semester='"+txtsem.Text+"' ", con);
                    MySqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {        
                        txtresult.Text = (dr["total"].ToString());
                        txtresult.Text= Math.Round(double.Parse(txtresult.Text), 3).ToString();
                    }
                    decimal result = Convert.ToDecimal(txtresult.Text);
                    dr.Close();
                    MySqlCommand cmd1 = new MySqlCommand("insert into faculty_mean_score (faculty_id,course_id,semester,mean_score) values (@faculty_id,@course_id,@semester,@mean_score)", con);
                    cmd1.Parameters.AddWithValue("@faculty_id", ddlfacultyname.SelectedValue);
                    cmd1.Parameters.AddWithValue("@course_id", ddlcoursename.SelectedValue);
                    cmd1.Parameters.AddWithValue("@semester", txtsem.Text);
                    cmd1.Parameters.AddWithValue("@mean_score", result);
                    cmd1.ExecuteNonQuery();

                    //using (MySqlCommand cmd2 = new MySqlCommand("insert into countfacultyrating(questionid,facultyid,courseid,semester,vgood,good,satis,total) select questionid,facultyid,course,semester,max(case when answer=4 then count(student) else 0 end),max(case when answer=3 then 1 else 0 end),max(case when answer=2 then 1 else 0 end),count(student) as ans from facultyrating where answer IN (4,3,2) and facultyid='" + ddlfacultyname.SelectedValue + "' and course='" + ddlcoursename.SelectedValue + "' and semester='" + txtsem.Text + "' group by questionid", con))
                    using (MySqlCommand cmd2 = new MySqlCommand("insert into faculty_rating_count(question_id,faculty_id,course_id,semester,vgood,good,satish,unsatish,total) select question_id,faculty_id,course_id,semester,sum(if(answer=4,1,0)) as vgood,sum(if(answer=3,1,0)) as good,sum(if(answer=2,1,0)) as satish,sum(if(answer=1,1,0)) as unsatish,count(student) total from faculty_rating  where faculty_id='" + ddlfacultyname.SelectedValue + "' and course_id='" + ddlcoursename.SelectedValue + "' and semester='" + txtsem.Text + "' group by question_id ", con))
                    cmd2.ExecuteNonQuery();

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