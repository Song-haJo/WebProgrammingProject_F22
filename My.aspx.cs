using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Security;

public partial class My : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.User.Identity.IsAuthenticated) //로그인이 안되어있으면
                Response.Redirect("Login.aspx"); //로그인 페이지로

            if (!Page.IsPostBack)
            {
                string email = Page.User.Identity.Name;
                string selectSQL = "SELECT Customer.Customer_Number AS Expr1, Customer.Customer_Name, Customer.Customer_EMail, Accommodation_Info.A_Number, " +
                    "Accommodation_Info.A_Address, Accommodation_Name.A_Address AS Expr2, Accommodation_Name.A_Name, Accommodation_Info.Room_type, Accommodation_Info.Price, " +
                    "Reservation.* FROM Reservation INNER JOIN Customer ON Reservation.Customer_Number = Customer.Customer_Number " +
                    "INNER JOIN Accommodation_Info ON Reservation.Serial_Number = Accommodation_Info.A_Number INNER JOIN Accommodation_Name ON " +
                    "Accommodation_Info.A_Address = Accommodation_Name.A_Address";
                selectSQL += " WHERE Customer_EMail='" + email + "'";


                SqlDataSource1.SelectCommand = selectSQL;


            }
               
            
        }

        protected void logOutLB_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect(string.Format("Main.aspx?"));
        }

        protected void MoreReservationLB_Click(object sender, EventArgs e)
        {

        }

        protected void MoreArticlesLB_Click(object sender, EventArgs e)
        {

        }
}
