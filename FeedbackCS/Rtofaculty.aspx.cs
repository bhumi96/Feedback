using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Windows.Forms;
using System.Configuration;
using System.Web.UI.DataVisualization.Charting;
using System.Text;
using System.Web.Script.Services;
using System.Web.Services;

namespace FeedbackCS
{
    public partial class Rtofaculty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int year = DateTime.Now.Year;
                for (int i = year - 10; i <= year + 10; i++)
                {
                    ListItem li = new ListItem(i.ToString());
                    ddlistyear.Items.Add(li);
                }
                ddlistyear.Items.FindByText(year.ToString()).Selected = true;

                faculty();
                course();
                getshortname();
            }

        }


        protected void faculty()
        {
            dbconnection db = new dbconnection();
            using (MySqlConnection con = new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("select faculty_id,faculty_name from faculty_registration where faculty_type='Teaching-Faculty'", con);
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    ddlfacultyname.DataSource = cmd.ExecuteReader();
                    ddlfacultyname.DataTextField = "faculty_name";
                    ddlfacultyname.DataValueField = "faculty_id";
                    ddlfacultyname.DataBind();
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

                    ddlcoursen.DataSource = cmd.ExecuteReader();
                    ddlcoursen.DataTextField = "course_name";
                    ddlcoursen.DataValueField = "course_id";
                    ddlcoursen.DataBind();
                    con.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }

            }
        }

        protected void getshortname()
        {
            dbconnection db = new dbconnection();
            using (MySqlConnection con = new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("select faculty_id,short_name from faculty_registration where faculty_type='Teaching-Faculty'", con);
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    ddlfshort.DataSource = cmd.ExecuteReader();
                    ddlfshort.DataTextField = "short_name";
                    ddlfshort.DataValueField = "faculty_id";
                    ddlfshort.DataBind();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            dbconnection db = new dbconnection();
            using (MySqlConnection con = new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("select (sum(vgood)/sum(total))*100 as responsevgood ,(sum(good)/sum(total))*100 as responsegood,(sum(satish)/sum(total))*100 as responsestish,(sum(unsatish)/sum(total))*100 as responseunstish from faculty_rating_count where faculty_id='" + ddlfacultyname.SelectedValue + "' and course_id = '" + ddlcoursen.SelectedValue + "' and semester = '" + ddlsemester.SelectedItem + "'", con);
                    MySqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        txtresponsevgood.Text = (dr["responsevgood"].ToString());
                        txtresponsevgood.Text = Math.Round(double.Parse(txtresponsevgood.Text), 3).ToString();

                        txtresponsegood.Text = (dr["responsegood"].ToString());
                        txtresponsegood.Text = Math.Round(double.Parse(txtresponsegood.Text), 3).ToString();

                        txtresponsesatish.Text = (dr["responsestish"].ToString());
                        txtresponsesatish.Text = Math.Round(double.Parse(txtresponsesatish.Text), 3).ToString();

                        txtresponseunsatish.Text = (dr["responseunstish"].ToString());
                        txtresponseunsatish.Text = Math.Round(double.Parse(txtresponseunsatish.Text), 3).ToString();
                    }

                    double vgood = Convert.ToDouble(txtresponsevgood.Text);
                    double good = Convert.ToDouble(txtresponsegood.Text);
                    double satish = Convert.ToDouble(txtresponsesatish.Text);
                    double unsatish = Convert.ToDouble(txtresponseunsatish.Text);
                    dr.Close();

                    MySqlCommand cmd1 = new MySqlCommand("insert into response_to_faculty (faculty_id,short_name,course_id,semester,response_vgood,response_good,response_satish,response_unsatish,year) values(@faculty_id,@short_name,@course_id,@semester,@response_vgood,@response_good,@response_satish,@response_unsatish,@year)", con);
                    cmd1.Parameters.AddWithValue("faculty_id", ddlfacultyname.SelectedValue);
                    cmd1.Parameters.AddWithValue("short_name", ddlfshort.SelectedItem);
                    cmd1.Parameters.AddWithValue("course_id", ddlcoursen.SelectedValue);
                    cmd1.Parameters.AddWithValue("semester", ddlsemester.SelectedItem);
                    cmd1.Parameters.AddWithValue("response_vgood", vgood);
                    cmd1.Parameters.AddWithValue("response_good", good);
                    cmd1.Parameters.AddWithValue("response_satish", satish);
                    cmd1.Parameters.AddWithValue("response_unsatish", unsatish);
                    cmd1.Parameters.AddWithValue("year", ddlistyear.SelectedItem);
                    cmd1.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }

            }
        }


        protected void btnresult_Click(object sender, EventArgs e)
        {
            dbconnection db = new dbconnection();
            using(MySqlConnection con =new MySqlConnection(db.connstr))
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand("select faculty_id,short_name,response_vgood,response_good,response_satish,response_unsatish from response_to_faculty where course_id='" + ddlcoursen.SelectedValue + "' AND semester='" + ddlsemester.SelectedItem + "' AND year='"+ddlistyear.SelectedItem+"'", con);
                DataTable dt = new DataTable();
                MySqlDataAdapter da = new MySqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                dt = ds.Tables[0];
                decimal[] vgood = new decimal[dt.Rows.Count];
                decimal[] good = new decimal[dt.Rows.Count];
                decimal[] stish = new decimal[dt.Rows.Count];
                decimal[] unstish = new decimal[dt.Rows.Count];
                String name = "";
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    name = name + "," + dt.Rows[i]["short_name"].ToString();
                    vgood[i] = Convert.ToDecimal(dt.Rows[i]["response_vgood"]);
                    good[i] = Convert.ToDecimal(dt.Rows[i]["response_good"]);
                    stish[i] = Convert.ToDecimal(dt.Rows[i]["response_satish"]);
                    unstish[i] = Convert.ToDecimal(dt.Rows[i]["response_unsatish"]);

                }
                
                BarChart1.CategoriesAxis = name.Remove(0, 1);
                //con.Close();
                BarChart1.Series.Add(new AjaxControlToolkit.BarChartSeries { Data = vgood, Name = "Vgood" , BarColor="blue"});
                BarChart1.Series.Add(new AjaxControlToolkit.BarChartSeries { Data = good, Name = "Good",BarColor="red" });
                BarChart1.Series.Add(new AjaxControlToolkit.BarChartSeries { Data = stish, Name = "Stish", BarColor="orange" });
                BarChart1.Series.Add(new AjaxControlToolkit.BarChartSeries { Data = unstish, Name = "Unstish", BarColor="yellow" });

                BarChart1.ChartWidth = (name.Length * 35).ToString();
                
               if(ddlsemester.SelectedItem.Text=="1" && ddlcoursen.SelectedValue == "405")
                {
                    BarChart1.ChartTitle = "M.Sc(It)-1";
                }
               else if(ddlsemester.SelectedItem.Text=="3" && ddlcoursen.SelectedValue == "405")
                {
                    BarChart1.ChartTitle = "M.Sc(It)-3";
                }
               else if(ddlsemester.SelectedItem.Text=="1" && ddlcoursen.SelectedValue == "203")
                {
                    BarChart1.ChartTitle = "MCA-1";
                }
               else if(ddlsemester.SelectedItem.Text=="3" && ddlcoursen.SelectedValue == "203")
                {
                    BarChart1.ChartTitle = "MCA-3";
                }
               else if(ddlsemester.SelectedItem.Text=="5" && ddlcoursen.SelectedValue == "203")
                {
                    BarChart1.ChartTitle = "MCA-5";
                }
               else if (ddlcoursen.SelectedValue == "103")
                {
                    BarChart1.ChartTitle = "M.Phil";
                }
               else
                {

                }
               
            }



        }

        
    }

}


