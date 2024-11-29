using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TMS_Project
{
    public partial class Tutor_Signup : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
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

            ListItem SelectedItem = new ListItem("Select Country", "Select Country");
            SelectedItem.Selected = true;
            CountryDropDownList.Items.Insert(0, SelectedItem);


        }

        void BindCityDDL(int country_id)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "Select * from city where c_id = @country_id";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            sda.SelectCommand.Parameters.AddWithValue("@country_id", country_id);
            DataTable data = new DataTable();
            sda.Fill(data);
            CityDropDownList.DataSource = data;
            CityDropDownList.DataTextField = "city_name";  //dropdownlist madhe Display honare texts
            CityDropDownList.DataValueField = "city_id";   // select kelyanantr save hotana ya value ne save honar
            CityDropDownList.DataBind();

            ListItem SelectItem = new ListItem("Select City", "Select City");
            SelectItem.Selected = true;
            CityDropDownList.Items.Insert(2, SelectItem);
        }


        void ResetControls()
        {
            NameTextBox.Text = "";
            SurnameTextBox.Text = "";
            GenderDropDownList.ClearSelection();
            AgeTextBox.Text = "";
            EmailTextBox.Text = "";
            MaritalStatusDropDownList.ClearSelection();
            CountryDropDownList.ClearSelection();
            CityDropDownList.ClearSelection();
            AddressTextBox.Text = "";
            QualificationDropDownList.ClearSelection();
            DegreeTextBox.Text = "";
            ExperienceDropDownList.ClearSelection();
            ContactTextBox.Text = "";
            UsernameTextBox.Text = "";
            PasswordTextBox.Text = "";

        }

        protected void TutorSignUpButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);

            try
            {

                string query = "INSERT INTO tutor_signup(name, surname, gender, age, email, marital_status, country, city, address, qualification, degree, experience, contactno, username, password) VALUES(@name, @surname, @gender, @age, @email, @marital_status, @country, @city, @address, @qualification, @degree, @experience, @contactno, @username, @password)";
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@name", NameTextBox.Text);
                cmd.Parameters.AddWithValue("@surname", SurnameTextBox.Text);
                cmd.Parameters.AddWithValue("@gender", GenderDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@age", Convert.ToInt32(AgeTextBox.Text) );
                cmd.Parameters.AddWithValue("@email", EmailTextBox.Text);
                cmd.Parameters.AddWithValue("marital_status", MaritalStatusDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@country", CountryDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@city", CityDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@address", AddressTextBox.Text);
                cmd.Parameters.AddWithValue("@qualification", QualificationDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@degree", DegreeTextBox.Text);
                cmd.Parameters.AddWithValue("@experience", ExperienceDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@contactno", ContactTextBox.Text);
                cmd.Parameters.AddWithValue("@username", UsernameTextBox.Text);
                 cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);

                con.Open();

                int a =  cmd.ExecuteNonQuery();

                if(a>0)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Success','You have Registered Successfully','success')", true);
                    ResetControls();
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Registration is failed','error')", true);
                    ResetControls();
                }


            }


            catch (SqlException ex)
            {
                if (ex.Message.Contains("UNIQUE KEY constraint"))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Registration Failed.. " + UsernameTextBox.Text + " already Exist ','error')", true);
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
            int country_id= Convert.ToInt32( CountryDropDownList.SelectedValue);
            BindCityDDL(country_id);
            }
            catch(Exception ex)
            {
                Response.Write("<script> alert('Country is Required')</script>");
            }
        }
    }
}