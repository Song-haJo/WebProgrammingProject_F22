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
    {
        string queryString = "region=" + region.Text;
        queryString += "&";
        queryString += "people=" + people.Text;
        Response.Redirect(string.Format("Search.aspx?"+ queryString));
    }
    
}
