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
    public partial class facultyregistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getStaffData();
            }
        }
        private void getStaffData()
        {
            dbconnection db = new dbconnection();
            using(MySqlConnection con=new MySqlConnection(db.connstr))
            {
                try
                {
                    MySqlCommand cmd = new MySqlCommand("select * from faculty_registration where faculty_email='" + Session["User"] + "'", con);
                    con.Open();
                    MySqlDataReader dr = cmd.ExecuteReader();
                    if(dr.HasRows)
                    {
                        dr.Read();
                        txtname.Text = dr["faculty_name"].ToString();
                        txtshort.Text = dr["short_name"].ToString();
                        txtaddress.Text = dr["faculty_address"].ToString();
                        txtmail.Text = dr["faculty_email"].ToString();
                        txtdesig.Text = dr["designation"].ToString();
                        ddlstype.SelectedIndex = ddlstype.Items.IndexOf(ddlstype.Items.FindByValue(dr["faculty_type"].ToString()));
                        txtnumber.Text = dr["mobile_number"].ToString();
                        txtjoining.Text = dr["date_of_joining"].ToString();
                        txtqualification.Text = dr["qualification"].ToString();
                        txtdob.Text = dr["date_of_birth"].ToString();
                    }
                    con.Close();
                }
                catch(Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
                
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
           
                dbconnection db = new dbconnection();
                using (MySqlConnection con = new MySqlConnection(db.connstr))
                {
                   try
                   {
                      con.Open();
                      MySqlCommand cmd1 = new MySqlCommand("select * from faculty_registration where faculty_name='" + txtname.Text + "'", con);
                      MySqlDataAdapter sda = new MySqlDataAdapter(cmd1);
                      DataSet ds = new DataSet();
                      sda.Fill(ds);
                      int i = ds.Tables[0].Rows.Count;
                      if (i > 0)
                      {
                        MySqlCommand cmd2 = new MySqlCommand("update faculty_registration set faculty_name='" + txtname.Text + "' ,short_name='"+txtshort.Text+ "', faculty_address='" + txtaddress.Text + "',faculty_email='" + txtmail.Text + "',designation='" + txtdesig.Text + "',faculty_type='" + ddlstype.SelectedItem + "',mobile_number='" + txtnumber.Text + "',date_of_joining='" + txtjoining.Text + "',qualification='" + txtqualification.Text + "',date_of_birth='" + txtdob.Text + "',gender=@gender where faculty_name='" + txtname.Text+"'", con);
                        if (chkfemale.Checked==true)
                        {
                            cmd2.Parameters.AddWithValue("@gender", chkfemale.Text);
                        }
                        else if(chkmale.Checked==true)
                        {
                            cmd2.Parameters.AddWithValue("@gender", chkmale.Text);
                        }
                        else
                        {
                            cmd2.Parameters.AddWithValue("@gender", 0);
                        }
                        MySqlDataReader dr = cmd2.ExecuteReader();
                        clear();
                      }
                      else
                      {
                        string regid = getID(5);
                        string str = "insert into faculty_registration(registration_id,faculty_id,faculty_name,short_name,faculty_address,faculty_email,designation,faculty_type,mobile_number,date_of_joining,qualification,date_of_birth,gender) values('"+regid+"',(select faculty_id from faculty_login_detail where faculty_login_detail.faculty_name='"+txtname.Text+"'), '" + txtname.Text + "','"+txtshort.Text+"','" + txtaddress.Text + "','" + txtmail.Text + "','" + txtdesig.Text + "','" + ddlstype.SelectedItem + "','" + txtnumber.Text + "','" + txtjoining.Text + "','" + txtqualification.Text + "','" + txtdob.Text + "',@gender)";
                        MySqlCommand cmd = new MySqlCommand(str, con);
                        cmd.Parameters.AddWithValue("@registration_id", regid);
                        cmd.Parameters.AddWithValue("@faculty_name", txtname.Text);
                        cmd.Parameters.AddWithValue("@short_name", txtshort.Text);
                        cmd.Parameters.AddWithValue("@faculty_address", txtaddress.Text);
                        cmd.Parameters.AddWithValue("@faculty_email", txtmail.Text);
                        cmd.Parameters.AddWithValue("@designation", txtdesig.Text);
                        cmd.Parameters.AddWithValue("@faculty_type", ddlstype.SelectedItem);
                        cmd.Parameters.AddWithValue("@mobile_number", txtnumber.Text);
                        cmd.Parameters.AddWithValue("@date_of_joining", txtjoining.Text);
                        cmd.Parameters.AddWithValue("@qualification", txtqualification.Text);
                        cmd.Parameters.AddWithValue("@date_of_birth", txtdob.Text);
                        if (chkmale.Checked == true)
                        {
                            cmd.Parameters.AddWithValue("@gender", chkmale.Text);
                        }
                        else if (chkfemale.Checked == true)
                        {
                            cmd.Parameters.AddWithValue("@gender", chkfemale.Text);
                        }
                        else
                        {
                            cmd.Parameters.AddWithValue("@gender", 0);
                        }
                        cmd.ExecuteNonQuery();
                    }
                      
                  }
                  catch (Exception ex)
                  {
                     MessageBox.Show(ex.Message);
                  }
                clear();
              }  
        }

        protected static string[] chars = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"};

        public static string getID(int length)
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
            txtshort.Text = string.Empty;
            txtaddress.Text = string.Empty;
            txtmail.Text = string.Empty;
            txtdesig.Text = string.Empty;
            txtnumber.Text = string.Empty;
            txtjoining.Text = string.Empty;
            txtqualification.Text = string.Empty;
            txtdob.Text = string.Empty;
            chkfemale.Checked = false;
            chkmale.Checked = false;

        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("FacultyLogin.aspx", false);
        }
    }
}