using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace FeedbackCS
{
    public partial class AddQuestion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    getQuestion();

            //}
        }

        //protected void getQuestion()
        //{
        //    dbconnection db = new dbconnection();
        //    using(MySqlConnection con=new MySqlConnection(db.connstr))
        //    {
        //        con.Open();
        //        MySqlCommand cmd = new MySqlCommand("select * from faculty_question", con);
        //        DataSet ds = new DataSet();
        //        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        //        DataTable dt = new DataTable();
        //        da.Fill(dt);
        //        gridaddquestion.DataSource = dt;
        //        gridaddquestion.DataBind();
        //        con.Close();
        //    }
        //}

    //    protected void btnadd_Click(object sender, EventArgs e)
    //    {
    //        dbconnection db = new dbconnection();
    //        using (MySqlConnection con = new MySqlConnection(db.connstr))
    //        {
    //            con.Open();
    //            MySqlCommand cmd = new MySqlCommand("insert into faculty_question(question_id,question_name) values(@question_id,@question_name)", con);
    //            cmd.Parameters.AddWithValue("@question_id", txtqueid.Text);
    //            cmd.Parameters.AddWithValue("@question_name", txtquename.InnerText);
    //            cmd.ExecuteNonQuery();
    //            clear();
    //            getQuestion();
    //            con.Close();
    //        }
    //    }

    //    protected void btndelete_Click(object sender, EventArgs e)
    //    {
    //        dbconnection db = new dbconnection();
    //        using (MySqlConnection con = new MySqlConnection(db.connstr))
    //        {
    //            con.Open();
    //            MySqlCommand cmd = new MySqlCommand("delete from faculty_question where question_id='" + txtqueid.Text + "'", con);
    //            cmd.ExecuteNonQuery();
    //            clear();
    //            getQuestion();
    //            con.Close();
    //        }
    //    }

    //    protected void gridaddquestion_SelectedIndexChanged(object sender, EventArgs e)
    //    {
    //        GridViewRow gvr = gridaddquestion.SelectedRow;
    //        txtqueid.Text = gvr.Cells[1].Text;
    //        txtquename.InnerText = gvr.Cells[2].Text;
    //    }

    //    protected void btnUpdate_Click(object sender, EventArgs e)
    //    {
    //        dbconnection db = new dbconnection();
    //        using (MySqlConnection con = new MySqlConnection(db.connstr))
    //        {
    //            con.Open();
    //            if(txtqueid.Text!="" && txtquename.InnerText != "")
    //            {
    //                MySqlCommand cmd = new MySqlCommand("update faculty_question set question_id=@question_id,question_name=@question_name where idQuestion='" + txtqueid.Text + "'", con);
    //                cmd.Parameters.AddWithValue("@question_id", txtqueid.Text);
    //                cmd.Parameters.AddWithValue("@question_name", txtquename.InnerText);
    //                cmd.ExecuteNonQuery();
    //                clear();
    //                getQuestion();
    //                con.Close();
    //            }

    //        }

    //    }

    //    protected void btncancel_Click(object sender, EventArgs e)
    //    {
    //        clear();
    //        Response.Redirect("AdminMaster.aspx", false);
    //    }

    //    protected void clear()
    //    {
    //        txtqueid.Text = "";
    //        txtquename.InnerText = "";
    //    }
    }
}