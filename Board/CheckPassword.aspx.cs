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
    public partial class CheckPassword : System.Web.UI.Page
    {
        private string connectionString = @"Data Source=DESKTOP-KO6C2CA;" + "Initial Catalog=SNC;" + "User ID=sa;Password=1234"; //해당 db로 바꿀것
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request["mode"] == "edit")
            {
                btnEditOrDelete_Click.Text = "수정";
            }
            else
            {
                btnEditOrDelete_Click.Text = "삭제";
            }

        }

        protected void btnEditOrDelete_Click_Click(object sender, EventArgs e)
        {
            string email = Page.User.Identity.Name;
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

            string selectString = "SELECT * FROM board WHERE serial_no =";
            selectString += Request["sn"] + " AND password='" + pass +"'";

            SqlCommand cmd1 = new SqlCommand(selectString, conn);
            SqlDataReader rd;

            try
            {
                conn.Open();
                rd = cmd1.ExecuteReader();

                if (rd.Read())
                {
                    if (Request["mode"] == "edit")
                    {
                        Response.Redirect("~/Board/Edit.aspx?sn=" + Request["sn"]);
                    }
                    else
                    {
                        Response.Redirect("~/Board/Delete.aspx?sn=" + Request["sn"]);
                    }
                }
                else
                {
                    lblErrorMessage.Text = "비밀번호가 일치하지 않습니다. 다시 한 번 입력해주세요.";
                }

                rd.Close();
            }
            catch (Exception error)
            {
                Response.Write(error.ToString());
            }
            finally
            {
                conn.Close();
            }

        }
    }
}