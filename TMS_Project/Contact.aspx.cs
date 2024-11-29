using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TMS_Project
{
    public partial class Contact : System.Web.UI.Page
    {
       readonly string cs= ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;   /*<!-- this line get the connection from webconfig file and store here in cs variable-->*/
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void ResetContact()
        {
            NameTextBox.Text = "";
            EmailTextBox.Text = "";
            SubjectDropDownList.ClearSelection();
            MessageTextBox.Text = "";

        }
        protected void SubmitButton_Click(object sender, EventArgs e) //method is called when submit button is clicked
        {

            SqlConnection con = new SqlConnection(cs);  /*SqlConnection con will create new connection to database & cs has info needed to connect DB */
            //string sp = "spContact_Insert"; // Name of the stored procedure that will be executed in the database.
            //Execute sp "Name"
            SqlCommand cmd = new SqlCommand("spContact_Insert", con); // Creates a command to run the stored procedure using the database connection.
            cmd.CommandType = CommandType.StoredProcedure; // Specifies that the command is a stored procedure.
            cmd.Parameters.AddWithValue("@name", NameTextBox.Text);
            cmd.Parameters.AddWithValue("@email", EmailTextBox.Text);
            cmd.Parameters.AddWithValue("@subject", SubjectDropDownList.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@message", MessageTextBox.Text);
            con.Open();
            int a = cmd.ExecuteNonQuery(); //insert ahe mhnun ExecuteNonQuery use kel & row insert zali ki to 1 or 0 return karnar tyala a variable madhe store karne
            if(a>0)
            {
                //Response.Write("<script>alert('Form has been submitted successfully.')</script>");  //this is normal popup
                //Response.Write("<script> SuccessContact(); </script>");  // we cannot show popup by using response.write method for sweetalert2 their is different way below
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "SuccessContact();", true);
                ResetContact();
            }
            else
            {
                //Response.Write("<script>alert('Insertion is failed')</script>");
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "ErrorContact();", true);
            }
            con.Close();  

        }

        protected void EmailTextBox_TextChanged(object sender, EventArgs e)
        {

        }

    }
}