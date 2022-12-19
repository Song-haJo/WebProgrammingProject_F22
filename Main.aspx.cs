using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void logInLnkBtn_Click(object sender, EventArgs e)
    {

    }

    protected void signUpLnkBtn_Click(object sender, EventArgs e)
    {

    }
    
    protected void searchBtn_Click(object sender, EventArgs e)
    {//날짜 전송 추가
        string queryString = "region=" + region.Text;
        queryString += "&";
        queryString += "people=" + people.Text;
        queryString += "&";
        queryString += "dateFrom=" + CalendarFrom.SelectedDate.ToString("yyyy-MM-dd");
        queryString += "&";
        queryString += "dateTo=" + CalendarTo.SelectedDate.Date.ToString("yyyy-MM-dd");
        Response.Redirect(string.Format("Search.aspx?"+ queryString));
    }
    
}
