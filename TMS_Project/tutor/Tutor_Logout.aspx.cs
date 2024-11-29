using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TMS_Project.tutor
{
    public partial class Tutor_Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tutor_username"]!= null)
                Session["student_username"] = null;
            {
                Session["tutor_username"]=null;
                Session.Clear();
                Session.Abandon();
                Response.Redirect("../Tutor_Login.aspx");
            //C: \Users\Sharad Ajinath Pawar\source\repos\TMS_Project\TMS_Project\Tutor_Login.aspx
            }

        }
    }
}