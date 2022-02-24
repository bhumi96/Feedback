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
    public partial class CourseFeedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getCourseQue();
            }
        }

        protected void getCourseQue()
        {
            dbconnection db = new dbconnection();
            using(MySqlConnection con=new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("select cquestion_id,course_question from course_feedback_question", con);
                    grdcourse.DataSource = cmd.ExecuteReader();
                    grdcourse.DataBind();
                    con.Close();
                }
                catch(Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }

            }
        }

        protected void grdcourse_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = grdcourse.SelectedRow;
            int rowid = gr.RowIndex;
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            Double sum = 0;
            Double min = 0;
            int value = 0;
            dbconnection db = new dbconnection();
            using(MySqlConnection con=new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    foreach (GridViewRow gvr in grdcourse.Rows)
                    {
                        RadioButtonList rbl = (RadioButtonList)gvr.FindControl("rblcourseoption");
                        value = Convert.ToInt32(rbl.SelectedItem.Value);
                        sum += Convert.ToDouble(rbl.SelectedValue);
                        min = Convert.ToDouble(sum / 9);
                        rbl.ClearSelection();

                        using (MySqlCommand cmd = new MySqlCommand("insert into course_feedback(student,course_id,semester,cquestion_id,course_answer) values('" + Session["CurrentUser"].ToString() + "', '" + Session["course_id"] + "','" + Session["semester"] + "','" + gvr.Cells[0].Text + "','" + value + "')", con))
                        {
                            cmd.Parameters.AddWithValue("@student", Session["CurrentUser"].ToString());
                            cmd.Parameters.AddWithValue("@course_id", Session["course_id"]);
                            cmd.Parameters.AddWithValue("@semester", Session["semester"]);
                            cmd.Parameters.AddWithValue("@cquestion_id", gvr.Cells[0].Text);
                            cmd.Parameters.AddWithValue("@course_answer", value);
                            cmd.ExecuteNonQuery();
                        }
                    }
                }
                catch(Exception ex)
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