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

public partial class Login : System.Web.UI.Page
{
    private string connectionString = @"Data Source=DESKTOP-KO6C2CA;" + "Initial Catalog=SNC;" + "User ID=sa;Password=1234"; //해당 db로 바꿀것
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void singin_Click(object sender, EventArgs e)
        {
            string email = Email.Text;
            string passward = pass.Text;

            string selectSQL = "SELECT * FROM Customer WHERE Customer_EMail='"+email+"' AND Customer_Password='" + passward + "'";
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(selectSQL, conn);
            
            SqlDataReader rd;
            try
            {
                conn.Open();
                rd = cmd.ExecuteReader();
                if (rd.Read())
                {

                    FormsAuthentication.RedirectFromLoginPage(email, false);
                    Message.Text = "환영합니다.";
                    Response.Redirect(string.Format("Main.aspx?"));
                }
                else if((email == "Admin") && (passward == "Admin")){
                    FormsAuthentication.SetAuthCookie(email, false);
                    Response.Redirect(string.Format("~/Admin/Admin.aspx?"));
                }
                else
                {
                    Message.Text = "등록되지 않은 이메일이거나 비밀번호가 일치하지 않습니다.";
                    Email.Text = "";
                    pass.Text = "";
                }
                rd.Close();
            }
            catch (Exception error)
            {
                Message.Text = "데이터베이스를 읽는 동안 오류가 발생했습니다.<br />";
                Message.Text += error.Message;
            }
            finally
            {
                conn.Close();
            }

            
        }
}
