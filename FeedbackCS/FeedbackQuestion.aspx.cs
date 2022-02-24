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
    public partial class FeedbackQuestion : System.Web.UI.Page
    {
        public int pos;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getQuestion();
                getfaculty();
                getsubject();
            }
        }
        protected void getQuestion()
        {
            try
            {
                dbconnection db = new dbconnection();
                using (MySqlConnection con = new MySqlConnection(db.connstr))
                {
                    MySqlCommand cmd = new MySqlCommand("select question_id,question_name from feedbackit.faculty_feedback_question", con);
                    con.Open();
                    gvfacultyquestion.DataSource = cmd.ExecuteReader();
                    gvfacultyquestion.DataBind();
                }

            }
            catch (Exception)
            {


            }
        }
        protected void getfaculty()
        {
            try
            {
                dbconnection db = new dbconnection();
                using(MySqlConnection con=new MySqlConnection(db.connstr))
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("select faculty_id, faculty_name  from faculty_registration where faculty_type ='Teaching-Faculty'", con);
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                   
                    ddlname.DataSource = cmd.ExecuteReader();
                    ddlname.DataTextField = "faculty_name";
                    ddlname.DataValueField = "faculty_id";
                    ddlname.DataBind();
                    ddlname.Items.Insert(0, "---Select---");

                    con.Close();
                }
            }
            catch(Exception ex)
            {

            }
        }
        protected void getsubject()
        {
            try
            {
                dbconnection db = new dbconnection();
                using(MySqlConnection con=new MySqlConnection(db.connstr))
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("select subject_id,subject_name from subject", con);
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);

                    ddlsubject.DataSource = cmd.ExecuteReader();
                    ddlsubject.DataTextField = "subject_name";
                    ddlsubject.DataValueField = "subject_id";
                    ddlsubject.DataBind();
                    ddlsubject.Items.Insert(0, "---Select---");

                    con.Close();
                }
            }
            catch(Exception ex)
            {

            }
        }

        protected void gvfacultyquestion_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = gvfacultyquestion.SelectedRow;
            int rowid = gr.RowIndex;
            
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            Double sum = 0;
            Double min = 0;
            int val = 0;
            dbconnection db = new dbconnection();
            using(MySqlConnection con=new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    foreach (GridViewRow gvr in gvfacultyquestion.Rows)
                    {
                        RadioButtonList rbl = (RadioButtonList)gvr.FindControl("rbloption");
                        val = Convert.ToInt32(rbl.SelectedItem.Value);
                        sum += Convert.ToDouble(rbl.SelectedValue);
                        min = Convert.ToDouble(sum / 9);
                        rbl.ClearSelection();

                        using (MySqlCommand cmd = new MySqlCommand("insert into faculty_rating(student,faculty_id,question_id,course_id,semester,answer) values('" + Session["CurrentUser"].ToString() + "','" + ddlname.SelectedValue + "','" + gvr.Cells[0].Text + "', '" + Session["course_id"] + "','" + Session["semester"] + "','"+val+"')", con))
                        {
                            cmd.Parameters.AddWithValue("@student", Session["CurrentUser"].ToString());
                            cmd.Parameters.AddWithValue("@faculty_id", ddlname.SelectedValue);
                            cmd.Parameters.AddWithValue("@question_id", gvr.Cells[0].Text);
                            cmd.Parameters.AddWithValue("@course_id", Session["course_id"]);
                            cmd.Parameters.AddWithValue("@semester", Session["semester"]);
                            cmd.Parameters.AddWithValue("@answer", val);
                            cmd.ExecuteNonQuery();
                        }
                       

                    }
                    using (MySqlCommand cmd1 = new MySqlCommand("insert into faculty_feedback(faculty_id,subject_id,total_feedback,course_id,std_User,semester) values('" + ddlname.SelectedValue + "','" + ddlsubject.SelectedValue + "','" + Math.Round(min, 2) + "','" + Session["course_id"] + "','" + Session["CurrentUser"].ToString() + "','" + Session["semester"] + "')", con))
                    {
                        cmd1.Parameters.AddWithValue("@faculty_id", ddlname.SelectedValue);
                        cmd1.Parameters.AddWithValue("@subject_id", ddlsubject.SelectedValue);
                        cmd1.Parameters.AddWithValue("@total_feedback", Math.Round(min, 2));
                        cmd1.Parameters.AddWithValue("@course_id", Session["course_id"]);
                        cmd1.Parameters.AddWithValue("@std_User", Session["CurrentUser"].ToString());
                        cmd1.Parameters.AddWithValue("@semester", Session["semester"]);
                        cmd1.ExecuteNonQuery();
                    }
                        

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
                  
            }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("FeedbackMaster.aspx", false);
        }

       
    }
  }




