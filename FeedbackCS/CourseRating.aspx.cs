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
    public partial class CourseRating : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getCoursen();
                getCourseselect();
            }
        }

        protected void getCourseselect()
        {
            dbconnection db = new dbconnection();
            using(MySqlConnection con=new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("select course_id,course_name from course", con);
                    MySqlDataAdapter dadp = new MySqlDataAdapter(cmd);

                    ddlcourseselect.DataSource = cmd.ExecuteReader();
                    ddlcourseselect.DataTextField = "course_name";
                    ddlcourseselect.DataValueField = "course_id";
                    ddlcourseselect.DataBind();
                    con.Close();
                }
                catch(Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }


        protected void getCoursen()
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

        protected void btncalculate_Click(object sender, EventArgs e)
        {
            dbconnection db = new dbconnection();
            using (MySqlConnection con = new MySqlConnection(db.connstr))
            {
                  try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("insert into course_rating(cquestion_id,course_id,semester,cvgood,cgood,csatish,cunsatish,ctotal) select cquestion_id,course_id,semester,sum(if(course_answer=4,1,0)) as cvgood,sum(if(course_answer=3,1,0)) as cgood,sum(if(course_answer=2,1,0)) as csatis,sum(if(course_answer=1,1,0)) as cunsatis,count(student) ctotal from course_feedback  where  course_id='" + ddlcourse.SelectedValue + "' and semester='" + ddlsemester.SelectedItem + "' group by cquestion_id ", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }

        protected void btnresponse_Click(object sender, EventArgs e)
        {
             dbconnection db = new dbconnection();
             using (MySqlConnection con = new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("select (sum(cvgood)/sum(ctotal))*100 as responsecvgood ,(sum(cgood)/sum(ctotal))*100 as responsecgood,(sum(csatish)/sum(ctotal))*100 as responsecstish,(sum(cunsatish)/sum(ctotal))*100 as responsecunstish from course_rating where course_id='" + ddlcourse.SelectedValue + "' and semester = '" + ddlsemester.SelectedItem + "'", con);
                    MySqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                   {
                     txtrvgood.Text = (dr["responsecvgood"].ToString());
                     txtrvgood.Text = Math.Round(double.Parse(txtrvgood.Text), 3).ToString();

                        txtrgood.Text = (dr["responsecgood"].ToString());
                        txtrgood.Text = Math.Round(double.Parse(txtrgood.Text), 3).ToString();

                        txtrstish.Text = (dr["responsecsatish"].ToString());
                        txtrstish.Text = Math.Round(double.Parse(txtrstish.Text), 3).ToString();

                        txtrunstish.Text = (dr["responsecunsatish"].ToString());
                        txtrunstish.Text = Math.Round(double.Parse(txtrunstish.Text), 3).ToString();
                    }

                    double vgood = Convert.ToDouble(txtrvgood.Text);
                    double good = Convert.ToDouble(txtrgood.Text);
                    double satish = Convert.ToDouble(txtrstish.Text);
                    double unsatish = Convert.ToDouble(txtrunstish.Text);
                    dr.Close();

                    MySqlCommand cmd1 = new MySqlCommand("insert into course_response (course_id,semester,response_cvgood,response_cgood,response_csatish,response_cunsatish) values(@course_id,@semester,@response_cvgood,@response_cgood,@response_csatish,@response_cunsatish)", con);
                    cmd1.Parameters.AddWithValue("course_id", ddlcourse.SelectedValue);
                    cmd1.Parameters.AddWithValue("semester", ddlsemester.SelectedItem);
                    cmd1.Parameters.AddWithValue("response_cvgood", vgood);
                    cmd1.Parameters.AddWithValue("response_cgood", good);
                    cmd1.Parameters.AddWithValue("response_csatish", satish);
                    cmd1.Parameters.AddWithValue("response_cunsatish", unsatish);
                    cmd1.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }

            }
        }

        protected void btncncel_Click(object sender, EventArgs e)
        {

        }

        protected void btnshow_Click(object sender, EventArgs e)
        {
            dbconnection db = new dbconnection();
            using (MySqlConnection con = new MySqlConnection(db.connstr))
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand("select course_id,semester,response_cvgood,response_cgood,response_csatish,response_cunsatish from course_response where course_id='" + ddlcourseselect.SelectedValue + "'", con);
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
                String cname = "";
                String sem = "";
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    cname = cname + "," + dt.Rows[i]["course_id"].ToString();
                    sem = sem + "," + dt.Rows[i]["semester"].ToString();
                    vgood[i] = Convert.ToDecimal(dt.Rows[i]["response_cvgood"]);
                    good[i] = Convert.ToDecimal(dt.Rows[i]["response_cgood"]);
                    stish[i] = Convert.ToDecimal(dt.Rows[i]["response_csatish"]);
                    unstish[i] = Convert.ToDecimal(dt.Rows[i]["response_cunsatish"]);

                }
                con.Close();
                CourseChart.CategoriesAxis = cname.Remove(0, 1);
                CourseChart.CategoriesAxis = sem.Remove(0, 1);
                CourseChart.Series.Add(new AjaxControlToolkit.BarChartSeries { Data = vgood, Name = "Vgood", BarColor = "blue" });
                CourseChart.Series.Add(new AjaxControlToolkit.BarChartSeries { Data = good, Name = "Good", BarColor = "red" });
                CourseChart.Series.Add(new AjaxControlToolkit.BarChartSeries { Data = stish, Name = "Stish", BarColor = "orange" });
                CourseChart.Series.Add(new AjaxControlToolkit.BarChartSeries { Data = unstish, Name = "Unstish", BarColor = "yellow" });

                CourseChart.ChartWidth = (cname.Length * 35).ToString();
            }
        }
    }
}