using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace TMS_Project
{
    public partial class Student_Signup : System.Web.UI.Page
    {
        String cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ResetControls();
                BindCountryDDL();

            }

        }

        void BindCountryDDL()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "Select * from country";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            CountryDropDownList.DataSource = data;
            CountryDropDownList.DataTextField = "country_name";
            CountryDropDownList.DataValueField = "country_id";
            CountryDropDownList.DataBind();

            ListItem SelectedItem = new ListItem("Select Country","Select Country");
            SelectedItem.Selected = true;
            CountryDropDownList.Items.Insert(0, SelectedItem);

            
        }

        void BindCityDDL(int country_id)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "Select * from city where c_id = @country_id";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            sda.SelectCommand.Parameters.AddWithValue("@country_id" , country_id );
            DataTable data = new DataTable();
            sda.Fill(data);
            CityDropDownList1.DataSource = data;
            CityDropDownList1.DataTextField = "city_name";  //dropdownlist madhe Display honare texts
            CityDropDownList1.DataValueField = "city_id";   // select kelyanantr save hotana ya value ne save honar
            CityDropDownList1.DataBind();

            ListItem SelectItem = new ListItem("Select City", "Select City");
            SelectItem.Selected = true;
            CityDropDownList1.Items.Insert(2, SelectItem);
        }
        void  ResetControls()
        {
            NameTextBox.Text = "";
            FatherNameTextBox.Text = "";
            SurnameTextBox.Text = "";
            GenderDropDownList.ClearSelection();
            AgeTextBox.Text = "";
            CountryDropDownList.ClearSelection();   
            CityDropDownList1.ClearSelection();
            AddressTextBox.Text = "";
            ClassTextBox.Text = "";
            GoingToDropDownList1.ClearSelection();
            SubjectTextBox.Text = "";
            ContactTextBox.Text = "";
            TutionTypeDropDownList1.ClearSelection();
            TutorPreferDropDownList1.ClearSelection();
            UsernameTextBox.Text = "";
            PasswordTextBox.Text = "";              

        }
        protected void StudentSignUpButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);

            try
            {

         

            // Explicitly define the column list, excluding the identity column (student_id)
            string query = "INSERT  INTO student_signup (name, father_name, surname, gender, age, country, city, address, standard, goingto, subject, contactno, tutiontype, tutorprefer, username, password) " +
                           "VALUES (@name, @father_name, @surname, @gender, @age, @country, @city, @address, @standard, @goingto, @subject, @contactno, @tutiontype, @tutorprefer, @username, @password)";
            SqlCommand cmd = new SqlCommand(query, con);

            // Add parameters for the columns with value from that textbox or dropdownlist (excluding student_id)
            cmd.Parameters.AddWithValue("@name", NameTextBox.Text);
            cmd.Parameters.AddWithValue("@father_name", FatherNameTextBox.Text);
            cmd.Parameters.AddWithValue("@surname", SurnameTextBox.Text);
            cmd.Parameters.AddWithValue("@gender", GenderDropDownList.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@age", Convert.ToInt32(AgeTextBox.Text));
            cmd.Parameters.AddWithValue("@country", CountryDropDownList.SelectedItem.ToString());   
            cmd.Parameters.AddWithValue("@city", CityDropDownList1.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@address", AddressTextBox.Text);
            cmd.Parameters.AddWithValue("@standard", ClassTextBox.Text);
            cmd.Parameters.AddWithValue("@goingto", GoingToDropDownList1.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@subject", SubjectTextBox.Text);
            cmd.Parameters.AddWithValue("@contactno", ContactTextBox.Text);
            cmd.Parameters.AddWithValue("@tutiontype", TutionTypeDropDownList1.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@tutorprefer", TutorPreferDropDownList1.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@username", UsernameTextBox.Text);
            cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);

            con.Open();

            int a = cmd.ExecuteNonQuery();

            if (a > 0)
            {
                //Response.Write("<script>alert('You have Registered Successfully')</script>");
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Success','You have Registered Successfully','success')", true);
                ResetControls();
            }
            else
            {
                //Response.Write("<script>alert('Registration Failed.... Try another Username')</script>");
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Registration Failed.... Try another Username','error')", true);

            }
        }

            catch(SqlException ex)
            {
                if(ex.Message.Contains("UNIQUE KEY constraint"))
                { 
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Registration Failed.. "+UsernameTextBox.Text+" already Exist ','error')", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Registration Failed..','error')", true);
                }
            }

            finally
            {
               
                con.Close();

            }
        }

        protected void CountryDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
            int country_id = Convert.ToInt32( CountryDropDownList.SelectedValue);
            BindCityDDL(country_id);
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('Country is Required')</script>");
            }

        }

      
    }
}
