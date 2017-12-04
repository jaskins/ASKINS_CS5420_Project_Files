using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace SNS
{
    public partial class CustomerInfo1 : System.Web.UI.Page
    {
        private string connectionString =
            @"Data Source = MASTER; Initial Catalog = Nutrition; Integrated Security = True";
        SqlConnection vid =
            new SqlConnection("Data Source = MASTER; Initial Catalog = Nutrition; Integrated Security = True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Clear();
            }
        }

        protected void btnAddCustomer_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand("InsertCustomerIntoCustomerInfo", sqlCon);
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@FName", txtFirstName.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@MName", txtMiddleInitial.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@LName", txtLastName.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@CustomerEmail", txtEmail.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Address", txtAddress.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@City", txtCity.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@State", txtState.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Zip", txtZip.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@PhoneNumberExt", txtPhoneExt.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@PhoneNumberSeven", txtPhoneNumber.Text.Trim());
                sqlCmd.ExecuteNonQuery();
                Clear();
                lblSuccessMessage.Text = "Submitted Successfully";
            }
        }

        void Clear()
        {
            txtFirstName.Text = txtMiddleInitial.Text = txtMiddleInitial.Text = txtLastName.Text =
                txtEmail.Text = txtAddress.Text =
                    txtCity.Text = txtState.Text = txtZip.Text = txtPhoneExt.Text = txtPhoneNumber.Text = "";
        }

        protected void btnSearch_OnClick(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                String str = "SELECT Customer.FName, Customer.MName, Customer.LName, " +
                             "CustomerAddress.Address, " +
                             "CustomerAddress.City, CustomerAddress.State, CustomerAddress.Zip, " +
                             "CustomerPhoneNumber.PhoneNumberExt, CustomerPhoneNumber.PhonenumberSeven " +
                             "FROM CustomerInfo " +
                             "join Customer " +
                             "on CustomerInfo.CustomerID=Customer.CustomerID " +
                             "join CustomerAddress " +
                             "on CustomerInfo.CustomerAddressId=CustomerAddress.AddressId " +
                             "join CustomerPhoneNumber " +
                             "on CustomerInfo.CustomerPhoneNumberId=CustomerPhoneNumber.PhoneNumberID " +
                             "where (LName like '%' + @search + '%')";
                SqlCommand xp = new SqlCommand(str, vid);
                xp.Parameters.Add("@search", SqlDbType.NVarChar).Value = TextBox1.Text;


                vid.Open();
                xp.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = xp;
                DataSet ds = new DataSet();
                da.Fill(ds, "LName");
                GridView1.DataSource = ds;
                GridView1.DataBind();
                vid.Close();
            }
        }
    }
}