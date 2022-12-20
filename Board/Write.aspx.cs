using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

namespace WebProgrammingProject_F22.Board
{
    public partial class Write : System.Web.UI.Page
    {
        private string connectionString = @"Data Source=DESKTOP-KO6C2CA;" + "Initial Catalog=SNC;" + "User ID=sa;Password=1234"; //해당 db로 바꿀것
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = Page.User.Identity.Name;
            string[] word = email.Split('@');
            string writer = word[0];

            string selectSQL = "SELECT Customer.*FROM Customer";
            selectSQL += " WHERE Customer_EMail='" + email + "'";
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(selectSQL, conn);

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;

            DataSet ds = new DataSet();
            da.Fill(ds, "Writer");

            DataTable dt = ds.Tables["Writer"];
            DataRow dr = dt.Rows[0];
            string pass = dr["Customer_Password"].ToString();

            TextWriter.Text = writer;
            TextPassword.Text = pass;
        }

        protected void btnWrite_Click(object sender, EventArgs e)
        {
            string insertSQL = "INSERT INTO board (writer, password, title, message, ";
            insertSQL += "ref_id, inner_id, depth, read_count, del_flag, reg_date) ";
            insertSQL += "VALUES(@writer, @password, @title, @message, 0, 0, 0, 0, ";
            insertSQL += "'N', GETDATE())";

            string updateString = "UPDATE board SET ref_id = serial_no WHERE ref_id =0";




            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(insertSQL, conn);
            SqlCommand cmd1 = new SqlCommand(updateString, conn);

            cmd.Parameters.AddWithValue("@writer", TextWriter.Text);
            cmd.Parameters.AddWithValue("@password", TextPassword.Text);
            cmd.Parameters.AddWithValue("@title", TextTitle.Text);
            cmd.Parameters.AddWithValue("@message", TextMessage.Text);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                cmd1.ExecuteNonQuery();
            }
            catch (Exception error)
            {
                Response.Write(error.ToString());
            }
            finally
            {
                conn.Close();
            }
            Response.Redirect("~/Board/List.aspx?");
        }

        protected void TextPassword_PreRender(object sender, EventArgs e)
        {
            TextPassword.Attributes.Add("value", TextPassword.Text);
        }
    }
}