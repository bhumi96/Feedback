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
    public partial class facultyOvarallrating : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                    int year = DateTime.Now.Year;
                    for (int i = year - 10; i <= year + 10; i++)
                    {
                        ListItem li = new ListItem(i.ToString());
                        ddlyear.Items.Add(li);
                        ddlistyear.Items.Add(li);
                    }
                    ddlyear.Items.FindByText(year.ToString()).Selected = true;
                   ddlistyear.Items.FindByText(year.ToString()).Selected = true;

                getfacultyname();
                getCoursename();
                shortname();
                course();
            }
           
        }
        protected void getfacultyname()
        {
            dbconnection db = new dbconnection();
            using (MySqlConnection con = new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("select faculty_id,faculty_name from faculty_registration where faculty_type='Teaching-Faculty'", con);
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    ddlfname.DataSource = cmd.ExecuteReader();
                    ddlfname.DataTextField = "faculty_name";
                    ddlfname.DataValueField = "faculty_id";
                    ddlfname.DataBind();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }

        protected void shortname()
        {
            dbconnection db = new dbconnection();
            using (MySqlConnection con = new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("select faculty_id,short_name from faculty_registration where faculty_type='Teaching-Faculty'", con);
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    ddlshort.DataSource = cmd.ExecuteReader();
                    ddlshort.DataTextField = "short_name";
                    ddlshort.DataValueField = "faculty_id";
                    ddlshort.DataBind();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }

        protected void getCoursename()
        {
            dbconnection db = new dbconnection();
            using (MySqlConnection con = new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("select course_id,course_name from course", con);
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);

                    ddlcouname.DataSource = cmd.ExecuteReader();
                    ddlcouname.DataTextField = "course_name";
                    ddlcouname.DataValueField = "course_id";
                    ddlcouname.DataBind();
                    con.Close();
                }
                catch (Exception ex)
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

        protected void btnok_Click(object sender, EventArgs e)
        {
            dbconnection db = new dbconnection();
            using(MySqlConnection con=new MySqlConnection(db.connstr))
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand("select SUM(mean_score)/COUNT(mean_score) as overallrating from faculty_mean_score where faculty_id='" + ddlfname.SelectedValue + "' AND  course_id='" + ddlcouname.SelectedValue + "'", con);
                MySqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    txttotal.Text= (dr[("overallrating")].ToString());
                    txttotal.Text = Math.Round(double.Parse(txttotal.Text), 3).ToString();
                }
                decimal total = Convert.ToDecimal(txttotal.Text);
                dr.Close();
                MySqlCommand cmd1 = new MySqlCommand("insert into overall_faculty_feedback (faculty_id,short_name,course_id,year,total) values(@faculty_id,@short_name,@course_id,@year,@total)", con);
                cmd1.Parameters.AddWithValue("@faculty_id", ddlfname.SelectedValue);
                cmd1.Parameters.AddWithValue("@short_name", ddlshort.SelectedItem);
                cmd1.Parameters.AddWithValue("@course_id", ddlcouname.SelectedValue);
                cmd1.Parameters.AddWithValue("@year", ddlyear.SelectedItem);
                cmd1.Parameters.AddWithValue("@total",total);
                cmd1.ExecuteNonQuery();
                con.Close();
            }
        }

       

        protected void btnshow_Click(object sender, EventArgs e)
        {
            dbconnection db = new dbconnection();
            using (MySqlConnection con = new MySqlConnection(db.connstr))
            {
                try
                {
                   
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("select total,short_name from overall_faculty_feedback where year='" + ddlistyear.SelectedItem+"' AND course_id='"+ddlcourse.SelectedValue+"'", con);
                    MySqlDataAdapter da = new MySqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    DataTable dt = new DataTable();
                    da.Fill(ds);
                    dt = ds.Tables[0];
                    decimal[] Total = new decimal[dt.Rows.Count];
                    String Faculty = "";
                    for(int i = 0; i < dt.Rows.Count; i++)
                    {
                        Faculty = Faculty + "," + dt.Rows[i]["short_name"].ToString();
                        Total[i] = Convert.ToDecimal(dt.Rows[i]["total"]);

                    }
                    BarChart1.CategoriesAxis = Faculty.Remove(0, 1);


                    con.Close();
                    BarChart1.Series.Add(new AjaxControlToolkit.BarChartSeries { Data = Total , BarColor="#2fd1f9",Name= "Faculty"});
                    BarChart1.ChartWidth = (Faculty.Length * 25).ToString();
                    BarChart1.Visible = ddlistyear.SelectedValue != "";

                }
                catch (Exception ex)
                {

                }
            }
        }

       
    }
}