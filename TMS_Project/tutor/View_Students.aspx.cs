using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace TMS_Project.tutor
{
    public partial class View_Students : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tutor_username"] == null)
            {
                //Session.Abandon();  
                Response.Redirect("/Tutor_Login.aspx");

            }
            if (!IsPostBack) 
                {
                        BindRepeater();
                }
        }

        void BindRepeater()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from student_signup";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            Repeater1.DataSource = data;
            Repeater1.DataBind();

        }

        protected void SearchBtn_ServerClick(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(cs);
            string query = "select * from student_signup where([name] like('%" + SearchText.Text + "%') or age like('" + SearchText.Text + "')or father_name like('" + SearchText.Text + "') or surname like('" + SearchText.Text + "')  or gender like('%" + SearchText.Text + "%') or country like('" + SearchText.Text + "') or city like('" + SearchText.Text + "')  or standard like('" + SearchText.Text + "') or goingto like('" + SearchText.Text + "') or subject like('" + SearchText.Text + "') or tutiontype like('" + SearchText.Text + "')  )";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            if (data.Rows.Count > 0)
            {
                Repeater1.DataSource = data;
                Repeater1.DataBind();
            }
            else
            {
                Response.Write("<script> alert('No Records Found')</script>");
                Repeater1.DataSource = data;
                Repeater1.DataBind();
            }
        }
    }
}