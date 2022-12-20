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
    public partial class Edit : System.Web.UI.Page
    {
        private string connectionString = @"Data Source=DESKTOP-KO6C2CA;" + "Initial Catalog=SNC;" + "User ID=sa;Password=1234"; //해당 db로 바꿀것
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string selectString = "SELECT * FROM board WHERE serial_no =" + Request["sn"];

                SqlConnection conn = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand(selectString, conn);
                SqlDataReader rd;
                conn.Open();
                rd = cmd.ExecuteReader();

                if (rd.Read())
                {
                    TextWriter.Text = rd["writer"].ToString();
                    TextTitle.Text = rd["title"].ToString();
                    TextMessage.Text = rd["message"].ToString();
                }
                rd.Close();
                conn.Close();
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            string updateSQL = "UPDATE board SET writer=@writer, password=@password, " +
                "title=@title, message=@message ";
            updateSQL += "WHERE serial_no=" + Request["sn"];
            
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(updateSQL, conn);

            cmd.Parameters.AddWithValue("@writer", TextWriter.Text);
            cmd.Parameters.AddWithValue("@title", TextTitle.Text);
            cmd.Parameters.AddWithValue("@message", TextMessage.Text);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
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
    }
}