using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TMS_Project.admin
{
    public partial class Admin_Login : System.Web.UI.Page
    {
         string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from admin_login where username =@username and [password] =@password";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username",UsernameTxt.Text); 
            cmd.Parameters.AddWithValue("@password",PasswordTxt.Text); 
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();  // select query mul executereader and cmd la row milali tr ti dr madhe janar
            if (dr.HasRows == true)
            {
                //Response.Write("<script>alert('Login Successfull'); </script>");
                Session["admin_username"] = UsernameTxt.Text;
                Response.Redirect("Admin_Index.aspx");
            }
            else
            {
                            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Username or Password is Incorrect','error')", true);
                //Response.Write("<script>alert('Username or Password is incorrect'); </script> ");  this code is for normal popup
            }
            con.Close();


        }
    }
}