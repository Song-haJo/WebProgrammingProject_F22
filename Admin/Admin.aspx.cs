using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProgrammingProject_F22.Admin
{
    public partial class Admin : System.Web.UI.Page
    {
        private string connectionString = @"Data Source=DESKTOP-KO6C2CA;" + "Initial Catalog=SNC;" + "User ID=sa;Password=1234";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataList1.DataSource = SqlDataSource1;
                DataList1.DataBind();

                DataList2.DataSource = SqlDataSource2;
                DataList2.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect(string.Format("~/Main.aspx?"));
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            DataList1.SelectedIndex = e.Item.ItemIndex;
            DataList1.DataSource = SqlDataSource1;
            DataList1.DataBind();
        }

        protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
        {
            DataList1.EditItemIndex = e.Item.ItemIndex;
            DataList1.DataSource = SqlDataSource1;
            DataList1.DataBind();
        }

        protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            string updateSQL = "DELETE FROM Customer WHERE Customer_Number=@cnum";
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(updateSQL, conn);

            Label CNum = (Label)e.Item.FindControl("CNum");
            cmd.Parameters.AddWithValue("@cnum", CNum.Text);

            int deleted = 0;
            try
            {
                conn.Open();
                deleted = cmd.ExecuteNonQuery();

            }
            finally
            {
                conn.Close();
            }
            if (deleted > 0)
            {
                DataList1.DataSource = SqlDataSource1;
                DataList1.DataBind();
            }
        }

        protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
        {
            string updateSQL = "UPDATE  Customer SET ";
            updateSQL += "Customer_Name=@pname, PhoneNumber=@Phone, Customer_EMail=@mail, Customer_Password=@pass, Customer_Address=@address WHERE Customer_Number=@num";

            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(updateSQL, conn);

            TextBox txtNum = (TextBox)e.Item.FindControl("CNum");
            TextBox txtName = (TextBox)e.Item.FindControl("CName");
            TextBox txtPhone = (TextBox)e.Item.FindControl("CPhone");
            TextBox txtMail = (TextBox)e.Item.FindControl("CMail");
            TextBox txtPass = (TextBox)e.Item.FindControl("CPass");
            TextBox txtAddress = (TextBox)e.Item.FindControl("CAddress");

            cmd.Parameters.AddWithValue("@num", txtNum.Text);
            cmd.Parameters.AddWithValue("@pname", txtName.Text);
            cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);
            cmd.Parameters.AddWithValue("@mail", txtMail.Text);
            cmd.Parameters.AddWithValue("@pass", txtPass.Text);
            cmd.Parameters.AddWithValue("@address", txtAddress.Text);


            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
            }
            DataList1.EditItemIndex = -1;
            DataList1.DataSource = SqlDataSource1;
            DataList1.DataBind();
        }
        protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
        {
            DataList1.EditItemIndex = -1;
            DataList1.DataSource = SqlDataSource1;
            DataList1.DataBind();
        }

        protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
        {
            DataList2.SelectedIndex = e.Item.ItemIndex;
            DataList2.DataSource = SqlDataSource2;
            DataList2.DataBind();
        }

        protected void DataList2_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            string updateSQL = "DELETE FROM Reservation WHERE R_Number=@rnum";
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(updateSQL, conn);

            Label RNum = (Label)e.Item.FindControl("RNum");
            cmd.Parameters.AddWithValue("@rnum", RNum.Text);

            int deleted = 0;
            try
            {
                conn.Open();
                deleted = cmd.ExecuteNonQuery();

            }
            finally
            {
                conn.Close();
            }
            if (deleted > 0)
            {
                DataList2.DataSource = SqlDataSource2;
                DataList2.DataBind();
            }
        }
    }
}
