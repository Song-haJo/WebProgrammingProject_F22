using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Security;

 public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logInLnkBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect(string.Format("Login.aspx?"));
        }

        protected void signUpLnkBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect(string.Format("Singup.aspx?"));
        }

        protected void searchBtn_Click(object sender, EventArgs e)
        {
            string queryString = "region=" + region.Text;
            queryString += "&";
            queryString += "people=" + people.Text;
            queryString += "&";
            queryString += "dateFrom=" + CalendarFrom.SelectedDate.ToString("yyyy-MM-dd");
            queryString += "&";
            queryString += "dateTo=" + CalendarTo.SelectedDate.Date.ToString("yyyy-MM-dd");
            Response.Redirect(string.Format("Search.aspx?"+ queryString));
        }

        protected void logOutLnkBtn_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect(string.Format("Main.aspx?"));
        }

        protected void Mypage_Click(object sender, EventArgs e)
        {
            Response.Redirect(string.Format("My.aspx?"));
        }
    }
