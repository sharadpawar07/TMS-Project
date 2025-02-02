﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TMS_Project.admin
{
    public partial class View_Contact : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin_username"] == null)
            {
                Response.Redirect("Admin_Login.aspx");
            }


            if (!IsPostBack)
            {
                BindGridView();
            }

        }

        void BindGridView()
        {
             SqlConnection con = new SqlConnection(cs);
            string query = "select * from contact_tbl ";
            SqlDataAdapter sda = new SqlDataAdapter(query,con);
            DataTable data = new DataTable();  //ha object data thevayla pn to empty ahe
            sda.Fill(data);                     // DataTable madhe ssda through data pathvla jato
            GridView1.DataSource = data;          //fill kelela data GridView1 assign(pathvla) ani GridView1 to data rows n column format madhe webpage vr show karanar
            GridView1.DataBind();                    // DataBind() GridView1 ani DB ch connection bind karun thevto
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row=GridView1.Rows[e.RowIndex];
            Label ItemId = (Label)row.FindControl("LabelID");
            string Id = ItemId.Text;
            SqlConnection con = new SqlConnection(cs);
            string query = "delete from contact_tbl where id=@id";
            SqlCommand cmd = new SqlCommand(query, con);    
            cmd.Parameters.AddWithValue("@id", Id);
            con.Open();
            int a=cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("<script>alert('Data has been Deleted Successfully')</script>"); 
                BindGridView();

            }
            con.Close();


        }
    }
}