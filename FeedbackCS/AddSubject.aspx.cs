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
    public partial class AddSubject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getSubject();

            }
            //string selectCommand = "select subject.subject_id AS ID , subject.subject_name AS Subject-Name from subject";
            //Subject.SelectCommand = selectCommand;
            //grdsubject.DataSource = Subject;
            //grdsubject.DataBind();
        }

        protected void getSubject()
        {
            dbconnection db = new dbconnection();
            using(MySqlConnection con=new MySqlConnection(db.connstr))
            {
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand("select subject.subject_id,subject.subject_name from subject", con);
                    DataSet ds = new DataSet();
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    grdsubject.DataSource = dt;
                    grdsubject.DataBind();
                    con.Close();
            }
        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            dbconnection db = new dbconnection();
            using(MySqlConnection con=new MySqlConnection(db.connstr))
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand("insert into subject(subject_id,subject_name)  values(@subject_id,@subject_name)", con);
                cmd.Parameters.AddWithValue("@subject_id", txtsubid.Text);
                cmd.Parameters.AddWithValue("@subject_name", txtsubname.Text);
                //cmd.Parameters.AddWithValue("@course_name", txtcourse.Text);
                //cmd.Parameters.AddWithValue("@semester", txtsem.Text);
                cmd.ExecuteNonQuery();
                getSubject();
                clear();
                con.Close();
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
                    if(txtsubid.Text!="" && txtsubname.Text!="")
                    {
                        MySqlCommand cmd = new MySqlCommand("update subject set subject_id=@subject_id, subject_name=@subject_name where subject_id='"+txtsubid.Text+"'", con);
                        cmd.Parameters.AddWithValue("@subject_id", txtsubid.Text);
                        cmd.Parameters.AddWithValue("@subject_name", txtsubname.Text);
                       // cmd.Parameters.AddWithValue("@course_name", txtcourse.Text);
                       // cmd.Parameters.AddWithValue("@semester", txtsem.Text);
                        cmd.ExecuteNonQuery();
                        getSubject();
                        clear();
                        con.Close();
                    }
                    else
                    {
                        MessageBox.Show("Please Select ID !!!!!!!!");
                    }
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
            using(MySqlConnection con =new MySqlConnection(db.connstr))
            {
                try
                {
                    con.Open();
                    if (txtsubid.Text != "" && txtsubname.Text != "")
                    {
                        MySqlCommand cmd = new MySqlCommand("delete from subject where subject_id='" + txtsubid.Text + "'", con);
                        cmd.ExecuteNonQuery();
                        getSubject();
                        clear();
                        con.Close();
                    }
                    else
                    {
                        MessageBox.Show("Please Select ID..........");
                    }
                }
                catch(Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }

        protected void grdsubject_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gvr = grdsubject.SelectedRow;
            txtsubid.Text = gvr.Cells[1].Text;
            txtsubname.Text = gvr.Cells[2].Text;
           
        }

        protected void clear()
        {
            txtsubid.Text = "";
            txtsubname.Text = "";
           
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            clear();
            Response.Redirect("Home.aspx", false);
        }

        //protected void btnsearch_click(object sender,EventArgs e)
        //{
        //    if(txtsearch.Text != "")
        //    {
        //        string search = txtsearch.Text;
        //        string selectCommand = "select subject.subject_id AS ID,subject.subject_name AS Subject-Name from subject where subject.subject_id  LIKE'%" + search + "%' OR " + "subject.subject_name  LIKE '%" + search + "%'";
        //        Subject.SelectCommand = selectCommand;
        //        grdsubject.DataSource = Subject;
        //        grdsubject.DataBind();

        //    }

        //}
    }
}