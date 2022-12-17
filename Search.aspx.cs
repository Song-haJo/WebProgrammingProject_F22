using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack){
            regionTB.Text = Request.QueryString["region"];
            peopleDDL.Text = Request.QueryString["people"];
        }

    }

    protected void logInLnkBtn_Click(object sender, EventArgs e)
    {

    }

    protected void signUpLnkBtn_Click(object sender, EventArgs e)
    {

    }
}
