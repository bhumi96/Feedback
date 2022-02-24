using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Windows.Forms;
using System.Text.RegularExpressions;


namespace FeedbackCS
{
    public partial class AssignSubject : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            { 

                getFaculty();
                getCourse();
                getSubject();
                getfacultysubject();

               
            }


        }
        protected void getCourse()
        {
            dbconnection db = new dbconnection();
            using (MySqlConnection con = new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("select course_id,course_name from course", con);
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);

                    ddlcourse.DataSource = cmd.ExecuteReader();
                    ddlcourse.DataTextField = "course_name";
                    ddlcourse.DataValueField = "course_id";
                    ddlcourse.DataBind();
                    con.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }

            }
        }
        protected void getFaculty()
        {
            dbconnection db = new dbconnection();
            using (MySqlConnection con = new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("select faculty_id,faculty_name from faculty_registration", con);
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);

                    ddlname.DataSource = cmd.ExecuteReader();
                    ddlname.DataTextField = "faculty_name";
                    ddlname.DataValueField = "faculty_id";
                    ddlname.DataBind();
                    con.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }

            }
        }
        protected void getSubject()
        {
            dbconnection db = new dbconnection();
            using (MySqlConnection con = new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("select subject_id,subject_name from subject", con);
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);

                    ddlsubject.DataSource = cmd.ExecuteReader();
                    ddlsubject.DataTextField = "subject_name";
                    ddlsubject.DataValueField = "subject_id";
                    ddlsubject.DataBind();

                    con.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }

            }
        }
        protected void btnok_Click(object sender, EventArgs e)
        {
            dbconnection db = new dbconnection();
            using(MySqlConnection con=new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    string str= "insert into assign_subject(faculty_id,course_id,semester,subject_id)values(@faculty_id,@course_id,@semester,@subject_id)";
                    MySqlCommand cmd = new MySqlCommand(str, con);
                    cmd.Parameters.AddWithValue("@faculty_id", ddlname.SelectedValue);
                    cmd.Parameters.AddWithValue("@course_id", ddlcourse.SelectedValue);
                    cmd.Parameters.AddWithValue("@semester", ddlsem.SelectedItem);
                    cmd.Parameters.AddWithValue("@subject_id", ddlsubject.SelectedValue);
                    cmd.ExecuteNonQuery();
                    getfacultysubject();
                }
                catch(Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
                con.Close();
               
            }
        }


        protected void getfacultysubject()
        {

            dbconnection db = new dbconnection();
            using (MySqlConnection con = new MySqlConnection(db.connstr))
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand("select assign_subject.id,faculty_registration.faculty_name,course.course_name,assign_subject.semester,subject.subject_name,assign_subject.date from assign_subject,subject,faculty_registration,course where assign_subject.faculty_id = faculty_registration.faculty_id OR assign_subject.course_id = course.course_id OR assign_subject.subject_id=subject.subject_id", con);
                DataSet ds = new DataSet();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                grdsubject.DataSource = dt;
                grdsubject.DataBind();
                con.Close();
            }
        }

        protected void grdsubject_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = grdsubject.SelectedRow;
            txtid.Text = gr.Cells[1].Text;
           
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            dbconnection db = new dbconnection();
            using (MySqlConnection con = new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("update assign_subject set faculty_id='" + ddlname.SelectedItem + "',course_id='" + ddlcourse.SelectedItem + "',semester='" + ddlsem.SelectedItem + "',subject_id='" + ddlsubject.SelectedItem + "' where id='"+txtid.Text+"'", con);
                    cmd.Parameters.AddWithValue("faculty_id", ddlname.SelectedValue);
                    cmd.Parameters.AddWithValue("course_id", ddlcourse.SelectedValue);
                    cmd.Parameters.AddWithValue("semester", ddlsem.SelectedItem);
                    cmd.Parameters.AddWithValue("subject_id", ddlsubject.SelectedValue);
                    //cmd.Parameters.AddWithValue("date", ddlyear.SelectedItem);
                    cmd.ExecuteNonQuery();
                    getfacultysubject();
                    con.Close();


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
            using(MySqlConnection con=new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("delete from assign_subject where id='"+txtid.Text+"'", con);
                    cmd.ExecuteNonQuery();
                    getfacultysubject();
                    con.Close();
                }
                catch(Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }
        protected void btnsearch_Click(object sender, EventArgs e)
        {
            getfacultysubject();
        }

        protected void grdsubject_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdsubject.PageIndex = e.NewPageIndex;
            getfacultysubject();
        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {
            getfacultysubject();
        }
    }
}