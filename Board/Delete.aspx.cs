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
    public partial class Delete : System.Web.UI.Page
    {
        private string connectionString = @"Data Source=DESKTOP-KO6C2CA;" + "Initial Catalog=SNC;" + "User ID=sa;Password=1234"; //해당 db로 바꿀것
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connectionString);

            string selectRefId = "SELECT ref_id FROM board WHERE serial_no =" + Request["sn"];
            SqlCommand cmd = new SqlCommand(selectRefId, conn);
            conn.Open();
            string refString = cmd.ExecuteScalar().ToString();

            string selectString = "SELECT COUNT(*) FROM board WHERE ref_id=";
            selectString += refString;
            selectString += " AND del_flag <> 'Y'";
            SqlCommand cmd1 = new SqlCommand(selectString, conn);
            int count = (int)cmd1.ExecuteScalar();

            if(count > 1)
            {
                string updateString = "UPDATE board SET del_flag='Y' WHERE serial_no=";
                updateString += Request["sn"];
                SqlCommand cmd2 = new SqlCommand(updateString, conn);
                cmd2.ExecuteNonQuery();
            }
            else
            {
                string deketeString = "DELETE FROM board WHERE ref_id=" + refString;
                SqlCommand cmd3 = new SqlCommand(deketeString, conn);
                cmd3.ExecuteNonQuery();
            }
            conn.Close();
            Response.Redirect("~/Board/List.aspx?");

        }
    }
}