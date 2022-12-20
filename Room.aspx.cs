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

namespace WebProgrammingProject_F22
{
    public partial class Room : System.Web.UI.Page
    {
        private string connectionString = @"Data Source=DESKTOP-KO6C2CA;" + "Initial Catalog=SNC;" + "User ID=sa;Password=1234"; //해당 db로 바꿀것
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.User.Identity.IsAuthenticated)
                Response.Redirect("~/Login.aspx");

            if (!IsPostBack)
            {
                r_name.Text = Request.QueryString["Room"];
                r_type.Text = Request.QueryString["R_Type"];
                r_address.Text = Request.QueryString["R_Address"];
                date.Text = Request.QueryString["s_date"] +"~"+ Request.QueryString["e_date"];
                vnum.Text = Request.QueryString["vnum"];
                price.Text = Request.QueryString["price"];
                snum.Text = Request.QueryString["snum"];

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
                string d_name = dr["Customer_Name"].ToString();
                string d_phone = dr["PhoneNumber"].ToString();
                string d_num = dr["Customer_Number"].ToString();

                dnum.Text = d_num;
                name.Text = d_name;
                phone.Text = d_phone;
                
            }
        }

        protected void Reservation_Click(object sender, EventArgs e)
        {
            string insertSQL = "INSERT INTO Reservation (Serial_Number, Customer_Number, R_Start_date, R_End_date, Visitor_Number) ";
            insertSQL += "VALUES(@snum, @cnum, @sdate, @edate, @vnum)";
            
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(insertSQL, conn);

            cmd.Parameters.AddWithValue("@snum", snum.Text);
            cmd.Parameters.AddWithValue("@cnum", dnum.Text);
            cmd.Parameters.AddWithValue("@sdate", Request.QueryString["s_date"]);
            cmd.Parameters.AddWithValue("@edate", Request.QueryString["e_date"]);
            cmd.Parameters.AddWithValue("@vnum", vnum.Text);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception error)
            {
                Reservation.Text = error.ToString();
            }
            finally
            {
                conn.Close();
            }
            Response.Redirect("~/My.aspx?");
        }
    }
}