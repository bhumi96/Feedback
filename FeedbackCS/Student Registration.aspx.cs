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
    public partial class Student_Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getCourse();
                getStudentData();
            }
          
        }
        private void getCourse()
        {
            dbconnection db = new dbconnection();
            using(MySqlConnection con=new MySqlConnection(db.connstr))
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
                catch(Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
                
            }
        }

        private void getStudentData()
        {
            dbconnection db = new dbconnection();
            using (MySqlConnection con = new MySqlConnection(db.connstr))
            {
                try
                {
                    MySqlCommand cmd = new MySqlCommand("select * from student_registration where student_email='" + Session["CurrentUser"] + "'", con);
                    con.Open();
                    MySqlDataReader dr = cmd.ExecuteReader();
                    {
                        dr.Read();
                        txtname.Text = dr["student_name"].ToString();
                        txtfathername.Text = dr["father_name"].ToString();
                        txtmothername.Text = dr["mother_name"].ToString();
                        txtaddress.Text = dr["student_address"].ToString();
                        txtemail.Text = dr["student_email"].ToString();
                        txtsem.Text = dr["semester"].ToString();
                        txtdob.Text = dr["date_of_birth"].ToString();
                        txtmobile.Text = dr["mobile_number"].ToString();
                        txtqualification.Text = dr["qualification"].ToString();
                        txtadmission.Text = dr["admission_date"].ToString();
                        ddlcourse.SelectedIndex = ddlcourse.Items.IndexOf(ddlcourse.Items.FindByValue(dr["course_id"].ToString()));
                        ddlcategory.SelectedIndex = ddlcategory.Items.IndexOf(ddlcategory.Items.FindByText(dr["category"].ToString()));
                    }
                    con.Close();
                }
                catch (Exception ex)
                {

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
                    MySqlCommand cmd = new MySqlCommand("select * from student_registration where student_name='" + txtname.Text + "' ", con);
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    int i = ds.Tables[0].Rows.Count;
                    if (i > 0)
                    {
                        Session["course_id"] = ddlcourse.SelectedValue;
                        Session["semester"] = txtsem.Text;
                        MySqlCommand  cmd1 =new MySqlCommand("update student_registration set student_name='" + txtname.Text + "',father_name='" + txtfathername.Text + "',mother_name='" + txtmothername.Text + "',student_address='" + txtaddress.Text + "',student_email='" + txtemail.Text + "',semester='" + txtsem.Text + "',date_of_birth='"+txtdob.Text+"',mobile_number='" + txtmobile.Text + "',admission_date='" + txtadmission.Text + "',course_id='" + ddlcourse.SelectedValue + "',category='" + ddlcategory.SelectedItem + "',gender=@gender,qualification='" + txtqualification.Text + "' where student_name ='" + txtname.Text + "'", con);
                        if (chkmale.Checked == true)
                        {
                            cmd1.Parameters.AddWithValue("@gender", chkmale.Text);
                        }
                        else if (chkfemale.Checked == true)
                        {
                            cmd1.Parameters.AddWithValue("@gender", chkfemale.Text);
                        }
                        
                        else
                        {
                            cmd1.Parameters.Add("@gender", 0);
                        }
                        MySqlDataReader dr = cmd1.ExecuteReader();
                        feedid.Visible = true;
                        clear();
                        //ClientScript.RegisterStartupScript(GetType(), "Onload", "alert('Student name is Already Existed')", true);
                    }
                    else
                    {
                        Session["course_id"] = ddlcourse.SelectedValue;
                        Session["semester"] = txtsem.Text;
                        string sregid = getSID(5);
                        MySqlCommand  cmd2 = new MySqlCommand("insert into student_registration(registration_id,student_id,student_name,father_name,mother_name,student_address,student_email,course_id,semester,date_of_birth,mobile_number,qualification,admission_date,category,gender) values('"+sregid+"',(select student_id from student_login_detail where student_login_detail.student_name='"+txtname.Text+"'),'" + txtname.Text + "','" + txtfathername.Text + "','" + txtmothername.Text + "','" + txtaddress.Text + "','" + txtemail.Text + "','" + ddlcourse.SelectedValue + "','" + txtsem.Text + "','" + txtdob.Text + "','" + txtmobile.Text + "','" + txtqualification.Text + "','" + txtadmission.Text + "','" + ddlcategory.SelectedItem + "', @gender);", con);
                        cmd2.Parameters.AddWithValue("@student_name", txtname.Text);
                        cmd2.Parameters.AddWithValue("@father_name", txtfathername.Text);
                        cmd2.Parameters.AddWithValue("@mother_name", txtmothername.Text);
                        cmd2.Parameters.AddWithValue("@student_address", txtaddress.Text);
                        cmd2.Parameters.AddWithValue("@student_email", txtemail.Text);
                        cmd2.Parameters.AddWithValue("@course_id", ddlcourse.SelectedValue);
                        cmd2.Parameters.AddWithValue("@semester", txtsem.Text);
                        cmd2.Parameters.AddWithValue("@date_of_birth", txtdob.Text);
                        cmd2.Parameters.AddWithValue("@mobile_number", txtmobile.Text);
                        cmd2.Parameters.AddWithValue("@qualification", txtqualification.Text);
                        cmd2.Parameters.AddWithValue("@admission_date", txtadmission.Text);
                        cmd2.Parameters.AddWithValue("@category", ddlcategory.SelectedItem);
                       
                        if ( chkmale.Checked == true)
                        {
                            cmd2.Parameters.AddWithValue("@gender", chkmale.Text);
                        }
                        else if (chkfemale.Checked == true)
                        {
                            cmd2.Parameters.AddWithValue("@gender", chkfemale.Text);
                        }
                        else
                        {
                            cmd2.Parameters.Add("@gender", 0);
                        }
                        cmd2.ExecuteNonQuery();
                        feedid.Visible = true;
                        clear();
                        con.Close();
                    }
                   

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }

        protected static string[] chars = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9" };

        public static string getSID(int length)
        {
            Random rd = new Random();
            int charlength = chars.Length;
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < length; i++)
            {
                sb.Append(chars[rd.Next(charlength)]);
            }
            return sb.ToString();

        }


        void clear()
        {
            txtname.Text = string.Empty;
            txtfathername.Text = string.Empty;
            txtmothername.Text = string.Empty;
            txtaddress.Text = string.Empty;
            txtemail.Text = string.Empty;
            txtsem.Text = string.Empty;
            txtdob.Text = string.Empty;
            txtmobile.Text = string.Empty;
            txtqualification.Text = string.Empty;
            txtadmission.Text = string.Empty;
            chkmale.Checked = false;
            chkfemale.Checked = false;

        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentMaster.aspx",false);
        }

      
    }
}
