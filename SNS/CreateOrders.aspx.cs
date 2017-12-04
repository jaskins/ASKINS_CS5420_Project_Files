using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace SNS
{
    public partial class CreateOrders : System.Web.UI.Page
    {
        private int empno = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            string test = Request.QueryString["CustomerID"].ToString();

//            empno = Convert.ToInt32(test);
//            if (!IsPostBack)
//            {
//                BindTextBoxvalues();
//            }
        }

        private void BindTextBoxvalues()
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("select * from Customer where CustomerID=" + empno, con);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            txtCustomerID.Text = dt.Rows[0][0].ToString();
            txtFirstName.Text = dt.Rows[0][1].ToString();
            txtMiddleInitial.Text = dt.Rows[0][2].ToString();
            txtLastName.Text = dt.Rows[0][2].ToString();
            txtAddress.Text = dt.Rows[0][2].ToString();
            txtCity.Text = dt.Rows[0][2].ToString();
            txtState.Text = dt.Rows[0][2].ToString();
            txtZip.Text = dt.Rows[0][2].ToString();
            txtPhoneExt.Text = dt.Rows[0][2].ToString();
            txtPhoneNumberSeven.Text = dt.Rows[0][2].ToString();
        }
    }
}