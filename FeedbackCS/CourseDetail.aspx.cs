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
    public partial class CourseDetail : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getCourse();
            }
        }
        private void getCourse()
        {
            dbconnection db = new dbconnection();
            using (MySqlConnection con = new MySqlConnection(db.connstr))
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand("select * from course", con);
                DataSet ds = new DataSet();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                coursegrid.DataSource = dt;
                coursegrid.DataBind();
                con.Close();
            }
        }
        protected void btnadd_Click(object sender, EventArgs e)
        {
            dbconnection db = new dbconnection();
            using (MySqlConnection con = new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("insert into course(course_id,course_name,duration)values(@course_id,@course_name,@duration)", con);
                    cmd.Parameters.AddWithValue("@course_id", txtid.Text);
                    cmd.Parameters.AddWithValue("@course_name", txtname.Text);
                    cmd.Parameters.AddWithValue("@duration", txtduration.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    getCourse();
                    clear();
                }
                catch(Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
                
            }

        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            dbconnection db = new dbconnection();
            using (MySqlConnection con = new MySqlConnection(db.connstr))
            {
                try
                {
                    
                        con.Open();
                        MySqlCommand cmd = new MySqlCommand("delete from course where course_id='" + txtid.Text + "'", con);
                        cmd.Parameters.AddWithValue("@course_id", txtid.Text);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        getCourse();
                        clear();
                }
                catch(Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }
        protected void clear()
        {
            txtid.Text = string.Empty;
            txtname.Text = string.Empty;
            txtduration.Text = string.Empty;
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            dbconnection db = new dbconnection();
            using(MySqlConnection con=new MySqlConnection(db.connstr))
            {
                try
                {
                    if(txtid.Text!="" && txtname.Text!="" && txtduration.Text != "")
                    {
                        con.Open();
                        MySqlCommand cmd = new MySqlCommand("update course set course_id=@course_id,course_name=@course_name,duration=@duration where course_id='"+txtid.Text+ "'", con);
                        cmd.Parameters.AddWithValue("@course_id", txtid.Text);
                        cmd.Parameters.AddWithValue("@course_name", txtname.Text);
                        cmd.Parameters.AddWithValue("duration", txtduration.Text);
                        cmd.ExecuteNonQuery();
                        MessageBox.Show("Record Updated Successfully");
                        getCourse();
                        con.Close();
                        clear();
                    }
                    else
                    {
                        MessageBox.Show("Please select Record to update");
                    }

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }

        protected void coursegrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = coursegrid.SelectedRow;
            txtid.Text = gr.Cells[1].Text;
            txtname.Text = gr.Cells[2].Text;
            txtduration.Text = gr.Cells[3].Text;
        }

        protected void btnexit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx", false);
        }
    }
}