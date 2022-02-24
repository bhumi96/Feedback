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
    public partial class StudentDetailUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getCourseDetail();
                GetData();
            }
        }
        protected void getCourseDetail()
        {
            dbconnection db = new dbconnection();
            using (MySqlConnection con = new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("select course_id,course_name from course", con);
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);

                    ddlstdcourse.DataSource = cmd.ExecuteReader();
                    ddlstdcourse.DataTextField = "course_name";
                    ddlstdcourse.DataValueField = "course_id";
                    ddlstdcourse.DataBind();
                    con.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }

            }
        }
        private int idstudent
        {
            get
            {
                return Convert.ToInt32(Request.QueryString["Id"]);
            }
        }
        protected void GetData()
        {
            dbconnection db = new dbconnection();
            using(MySqlConnection con=new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("select * from student_registration where id_student='" + idstudent + "'", con);
                    DataTable dt = new DataTable();
                    using(MySqlDataAdapter sda=new MySqlDataAdapter(cmd))
                    {
                        sda.Fill(dt);
                        lblId.Text = dt.Rows[0]["id_student"].ToString();
                        txtstudentname.Text = dt.Rows[0]["student_name"].ToString();
                        txtstdfathername.Text = dt.Rows[0]["father_name"].ToString();
                        txtstdmothername.Text = dt.Rows[0]["mother_name"].ToString();
                        txtstdaddress.Text = dt.Rows[0]["student_address"].ToString();
                        txtstdemail.Text = dt.Rows[0]["student_email"].ToString();
                        txtstdsem.Text = dt.Rows[0]["semester"].ToString();
                        txtstddob.Text = dt.Rows[0]["dateofbirth"].ToString();
                        txtstdmobile.Text = dt.Rows[0]["mobile_number"].ToString();
                        txtstdqualification.Text = dt.Rows[0]["qualification"].ToString();
                        txtstdadmission.Text = dt.Rows[0]["admission_date"].ToString();
                        ddlstdcourse.SelectedIndex = ddlstdcourse.Items.IndexOf(ddlstdcourse.Items.FindByValue(dt.Rows[0]["course_id"].ToString()));
                        ddlstdcategory.SelectedIndex = ddlstdcategory.Items.IndexOf(ddlstdcategory.Items.FindByText(dt.Rows[0]["category"].ToString()));
                        
                   }
                }catch(Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }

        protected void btnup_Click(object sender, EventArgs e)
        {
            dbconnection db = new dbconnection();
            using(MySqlConnection con =new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("update student_registration set student_name='"+txtstudentname.Text+"',father_name='"+txtstdfathername.Text+"',mother_name='"+txtstdmothername.Text+"',student_address='"+txtstdaddress.Text+"',student_email='"+txtstdemail.Text+"',course_id='"+ddlstdcourse.SelectedValue+"',semester='"+txtstdsem.Text+"',dateofbirth='"+txtstddob.Text+"',mobile_number='"+txtstdmobile.Text+"',qualification='"+txtstdqualification.Text+"',admission_date='"+txtstdadmission.Text+"',category='"+ddlstdcategory.SelectedItem+"',medium=@medium,gender=@gender where id_student='"+lblId.Text+"'", con);
                    if (chkstdenglish.Checked == true && chkstdmale.Checked == true)
                    {
                        cmd.Parameters.AddWithValue("@medium", chkstdhindi.Text);
                        cmd.Parameters.AddWithValue("@gender", chkstdmale.Text);
                    }
                    else if (chkstdhindi.Checked == true && chkstdfemale.Checked == true)
                    {
                        cmd.Parameters.AddWithValue("@medium", chkstdhindi.Text);
                        cmd.Parameters.AddWithValue("@gender", chkstdfemale.Text);
                    }
                    else if (chkstdenglish.Checked == true && chkstdmale.Checked == true)
                    {
                        cmd.Parameters.AddWithValue("@medium", chkstdenglish.Text);
                        cmd.Parameters.AddWithValue("@gender", chkstdmale.Text);
                    }
                    else if (chkstdenglish.Checked == true && chkstdfemale.Checked == true)
                    {
                        cmd.Parameters.AddWithValue("@medium", chkstdenglish.Text);
                        cmd.Parameters.AddWithValue("@gender", chkstdfemale.Text);
                    }
                    else
                    {
                        cmd.Parameters.Add("@medium", 0);
                        cmd.Parameters.Add("@gender", 0);
                    }
                    MySqlDataReader dr = cmd.ExecuteReader();
                    clear();
                    Response.Redirect("Student.aspx", false);
                    con.Close();
                }
                catch(Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }

            }
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            clear();
            Response.Redirect("Student.aspx", false);
        }
        protected void clear()
        {
            txtstudentname.Text = string.Empty;
            txtstdfathername.Text = string.Empty;
            txtstdmothername.Text = string.Empty;
            txtstdaddress.Text = string.Empty;
            txtstdemail.Text = string.Empty;
            txtstdsem.Text = string.Empty;
            txtstdadmission.Text = string.Empty;
            txtstdqualification.Text = string.Empty;
            txtstddob.Text = string.Empty;
            txtstdmobile.Text = string.Empty;
            ddlstdcategory.Items.Clear();
            ddlstdcourse.Items.Clear();
            chkstdenglish.Checked = false;
            chkstdhindi.Checked = false;
            chkstdfemale.Checked = false;
            chkstdmale.Checked = false;
        }
    }
}