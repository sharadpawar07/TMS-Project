using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TMS_Project
{
    public partial class Tutor_Login : System.Web.UI.Page
    {

        String cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Tutor_LoginBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from tutor_signup where username= @username and [password]=@password";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("username", UsernameTxt.Text);
            cmd.Parameters.AddWithValue("@password", PasswordTxt.Text); 
            con.Open();
            
            SqlDataReader dr= cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                Session["tutor_username"] = UsernameTxt.Text;
                Response.Redirect("/tutor/Tutor_Index.aspx");

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Username or Password is Incorrect','error')", true);
            }



        }
    }
}