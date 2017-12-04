using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace SNS
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
            con.Open();
            string query = "SELECT count (*) FROM dbo.Login WHERE LoginUsername='" + txtuser.Text + "' and LoginPasswordHash='" +
                           txtpass.Text + "' ";

            SqlCommand cmd = new SqlCommand(query, con);
            string output = cmd.ExecuteScalar().ToString();

            if (output == "1")
            {
                //now we create a session
                Session["user"] = txtuser.Text;
                Response.Redirect("~/Default.aspx");
            }

            else
            {
                Response.Write("Login Failed");
            }
        }
    }
}