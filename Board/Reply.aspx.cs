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
    public partial class Reply : System.Web.UI.Page
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

        protected void btnReply_Click(object sender, EventArgs e)
        {
            string selectString = "SELECT ref_id, depth FROM board WHERE serial_no =" + Request["sn"];

            int refId = 0;
            int innerId = 0;
            int depth = 0;

            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(selectString, conn);

            SqlDataReader rd;
            try
            {
                conn.Open();
                rd = cmd.ExecuteReader();

                if (rd.Read())
                {
                    refId = (int)rd["ref_id"];
                    innerId = (int)rd["inner_id"];
                    depth = (int)rd["depth"];
                }
            }
            catch (Exception error)
            {
                Response.Write(error.ToString());
            }
            finally
            {
                conn.Close();
            }

            string updateString = "UPDATE board SET inner_id=inner_id+1 WHERE ";
            updateString += "ref_id = " + refId.ToString();
            updateString += " AND inner_id > " + innerId.ToString();

            SqlCommand cmd1 = new SqlCommand(updateString, conn);
            try
            {
                conn.Open();
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

            string insertSQL = "INSERT INTO board (writer, password, title, message, ";
            insertSQL += "ref_id, inner_id, depth, read_count, del_flag, reg_date) ";
            insertSQL += "VALUES(@writer, @password, @title, @message, @ref_id, @inner_id, @depth, 0, ";
            insertSQL += "'N', GETDATE())";

            SqlCommand cmd2 = new SqlCommand(insertSQL, conn);

            cmd2.Parameters.AddWithValue("@writer", TextWriter.Text);
            cmd2.Parameters.AddWithValue("@password", TextPassword.Text);
            cmd2.Parameters.AddWithValue("@title", TextTitle.Text);
            cmd2.Parameters.AddWithValue("@message", TextMessage.Text);
            cmd2.Parameters.AddWithValue("@ref_id", refId);
            cmd2.Parameters.AddWithValue("@inner_id", ++innerId);
            cmd2.Parameters.AddWithValue("@depth", ++depth);

            try
            {
                conn.Open();
                cmd2.ExecuteNonQuery();
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