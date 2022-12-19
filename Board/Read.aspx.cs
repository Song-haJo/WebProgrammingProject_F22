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
                SqlCommand cmd1 = new SqlCommand(updateString, conn);
                /*
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
                }*/
                // 수정중
            }
        }
    }
}