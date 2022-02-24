using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.Windows.Forms;
using System.Configuration;


namespace FeedbackCS
{
    public partial class StudentloginDetail : System.Web.UI.Page
    {
        string Email,Id, Password;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getstudentdetail();
            }
        }
        public void getstudentdetail()
        {
            dbconnection db = new dbconnection();
            using (MySqlConnection con = new MySqlConnection(db.connstr))
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand("select student_login_detail.id , student_login_detail.student_name,student_login_detail.student_email,student_login_detail.semester,student_login_detail.date,course.course_name  from student_login_detail,course where student_login_detail.course_id=course.course_id", con);
                DataSet ds = new DataSet();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                rptstudlogindetail.DataSource = dt;
                rptstudlogindetail.DataBind();

            }
        }

        protected void getdata()
        {
            dbconnection db = new dbconnection();
            using (MySqlConnection con = new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    Id = hidfield.Value;
                    MySqlCommand cmd = new MySqlCommand("select student_login_detail.student_email,password from student_login_detail where id='" + Id + "'", con);
                    DataTable dt = new DataTable();
                    using (MySqlDataAdapter da = new MySqlDataAdapter(cmd))
                    {
                        da.Fill(dt);
                        Email = dt.Rows[0]["student_email"].ToString();
                        Password = dt.Rows[0]["password"].ToString();
                    }
                    con.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            
        }

        protected void btnapprove_Click(object sender, EventArgs e)
        {
            try
            {
                getdata();
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("bhumikabisen96@gmail.com", "7kxqp9988qwe");
                smtp.EnableSsl = true;
                MailMessage message = new MailMessage();
                message.From = new MailAddress("bhumikabisen96@gmail.com");
                string toaddress = Email;
                message.To.Add(toaddress);
                message.Subject = "ptrsu";
                message.Body = "Your Password is='"+Password+"'";
                smtp.Send(message);
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }


        }
        protected void btnreject_Click(object sender, EventArgs e)
        {

        }
    }
}