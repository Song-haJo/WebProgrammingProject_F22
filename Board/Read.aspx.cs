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
    public partial class Read : System.Web.UI.Page
    {
        private string connectionString = @"Data Source=DESKTOP-KO6C2CA;" + "Initial Catalog=SNC;" + "User ID=sa;Password=1234"; //해당 db로 바꿀것
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string updateString = "UPDATE board SET read_count=read_count+1 ";
                updateString += "WHERE serial_no=" + Request["sn"];

                string selectSQL = "SELECT * FROM board WHERE serial_no=" + Request["sn"];

                SqlConnection conn = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand(selectSQL, conn);
                SqlCommand cmd1 = new SqlCommand(updateString, conn);
                SqlDataReader rd;
                
                try
                {
                    conn.Open();
                    cmd1.ExecuteNonQuery();
                    rd = cmd.ExecuteReader();

                    if (rd.Read())
                    {

                        lblWriter.Text = rd["writer"].ToString();
                        lblRegDate.Text = string.Format("{0:yyyy-MM-dd}", (DateTime)rd["reg_date"]);
                        lblTitle.Text = rd["serial_no"].ToString();
                        lblTitle.Text += rd["title"].ToString();
                        lblTitle.Text += "(조회 : " + rd["read_count"].ToString() + ")";
                        TextMessage.Text = rd["message"].ToString();

                        btnEdit.PostBackUrl="~/Board/CheckPassword.aspx?mode=edit&sn=" +
                            rd["serial_no"].ToString();
                        btnReply.PostBackUrl = "~/Board/Reply.aspx?sn=" + rd["serial_no"].ToString();
                        btnDelete.PostBackUrl = "~/Board/CheckPassword.aspx?mode=del&sn=" +
                            rd["serial_no"].ToString();
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
}