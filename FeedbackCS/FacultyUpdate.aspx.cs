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
    public partial class FacultyUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetData();
            }
        }
        private int idstaff
        {
            get
            {
                return Convert.ToInt32(Request.QueryString["ID"]);
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
                    MySqlCommand cmd =new MySqlCommand("select * from staff_registration where id_staff='"+ idstaff +"'",con);
                    DataTable dt = new DataTable();
                    using(MySqlDataAdapter da=new MySqlDataAdapter(cmd))
                    {
                        da.Fill(dt);
                        txtid.Text = dt.Rows[0]["id_staff"].ToString();
                        txtstaffname.Text = dt.Rows[0]["staff_name"].ToString();
                        txtstaffaddress.Text = dt.Rows[0]["staff_address"].ToString();
                        txtstaffemail.Text = dt.Rows[0]["staff_email"].ToString();
                        txtstaffdesignation.Text = dt.Rows[0]["designation"].ToString();
                        ddlstafftype.SelectedIndex = ddlstafftype.Items.IndexOf(ddlstafftype.Items.FindByText(dt.Rows[0]["staff_type"].ToString()));
                        txtstaffmobile.Text = dt.Rows[0]["mobile_number"].ToString();
                        txtdofb.Text = dt.Rows[0]["dateofbirth"].ToString();
                        txtstaffqua.Text = dt.Rows[0]["qualification"].ToString();
                        txtstaffjoin.Text = dt.Rows[0]["date_of_joining"].ToString();
                    }
                }
                catch(Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            } 
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            dbconnection db = new dbconnection();
            using(MySqlConnection con=new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("update staff_registration set staff_name='" + txtstaffname.Text + "',staff_address='" + txtstaffaddress.Text + "',staff_email='" + txtstaffemail.Text + "',designation='" + txtstaffdesignation.Text + "',staff_type='" + ddlstafftype.SelectedItem + "',mobile_number='" + txtstaffmobile.Text + "',dateofbirth='"+txtdofb.Text+ "',qualification='" + txtstaffqua.Text + "',joining_date='"+txtstaffjoin.Text+"',gender=@gender where idstaff='" + txtid.Text+ "'", con);            
                    if (checkfemale.Checked == true)
                    {
                        cmd.Parameters.AddWithValue("@gender", checkfemale.Text);
                    }
                    else if (checkmale.Checked == true)
                    {
                        cmd.Parameters.AddWithValue("@gender", checkmale.Text);
                    }
                    else
                    {
                        cmd.Parameters.Add("@gender",0);
                    }
                    MySqlDataReader dr = cmd.ExecuteReader();
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
            Response.Redirect("facultydetail.aspx", false);
        }
    }
    
}