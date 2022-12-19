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
            fromD.Value = Request.QueryString["dateFrom"];
            toD.Value = Request.QueryString["dateTo"];
                

            string selectSQL = "SELECT Accommodation_Name.A_Name, Accommodation_Name.A_Address, Accommodation_Info.Room_Numer, " +
            "Accommodation_Info.Price, Accommodation_Info.Room_type, Accommodation_Name.A_Option FROM Accommodation_Name " +
            "INNER JOIN Accommodation_Info ON Accommodation_Name.A_Address = Accommodation_Info.A_Address";
            selectSQL += " WHERE (Accommodation_Name.A_Address LIKE '%" + regionTB.Text;
            selectSQL += "%' ";
            selectSQL += "OR A_Name LIKE '%" + regionTB.Text;
            selectSQL += "%') ";
            selectSQL += "AND Room_Numer >= " + peopleDDL.Text;
            SqlDataSource1.SelectCommand = selectSQL;
        }

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {    
        string queryString = "region=" + regionTB.Text;
        queryString += "&";
        queryString += "people=" + peopleDDL.Text;
        queryString += "&";
        queryString += "dateFrom=" + fromD.Value;
        queryString += "&";
        queryString += "dateTo=" + toD.Value;
        Response.Redirect(string.Format("Search.aspx?" + queryString));

    }

    protected void logInLnkBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect(string.Format("Login.aspx?"));
    }

    protected void signUpLnkBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect(string.Format("Singup.aspx?"));
    }
    
     protected void optionCBL_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectSQL ="SELECT Accommodation_Name.A_Name, Accommodation_Name.A_Address, Accommodation_Info.Room_Numer, " +
                "Accommodation_Info.Price, Accommodation_Info.Room_type, Accommodation_Name.A_Option FROM Accommodation_Name " +
                "INNER JOIN Accommodation_Info ON Accommodation_Name.A_Address = Accommodation_Info.A_Address";
            selectSQL += " WHERE (Accommodation_Name.A_Address LIKE '%" + Request.QueryString["region"];
            selectSQL += "%' ";
            selectSQL += "OR A_Name LIKE '%" + Request.QueryString["region"];
            selectSQL += "%') ";
            selectSQL += "AND Room_Numer >= " + Request.QueryString["people"];
            

            string str = "";
            foreach (ListItem item in optionCBL.Items)
            {
                if (item.Selected)
                {
                    if (str == "")
                    {
                        str += "'" + item.Value.ToString() + "'";
                        selectSQL += " AND A_Option IN ('" + item.Value.ToString() +"'";
                    }
                    else {
                        str += "," + "'" + item.Value.ToString() + "'";
                        selectSQL += ",'" + item.Value.ToString() + "'";
                    }  
                }   
            }

            if(optionCBL.SelectedItem != null)
            {
                selectSQL += ")";
            }

            if(MinPriceTB.Text != "")
            {
                selectSQL += " AND Price >= " + MinPriceTB.Text;
            }
            if (MaxPriceTB.Text != "")
            {
                selectSQL += " AND Price <= " + MaxPriceTB.Text;
            }
            SqlDataSource1.SelectCommand = selectSQL;
        }

        protected void MinPriceTB_TextChanged(object sender, EventArgs e)
        {
            string selectSQL = "SELECT Accommodation_Name.A_Name, Accommodation_Name.A_Address, Accommodation_Info.Room_Numer, " +
                "Accommodation_Info.Price, Accommodation_Info.Room_type, Accommodation_Name.A_Option FROM Accommodation_Name " +
                "INNER JOIN Accommodation_Info ON Accommodation_Name.A_Address = Accommodation_Info.A_Address";
            selectSQL += " WHERE (Accommodation_Name.A_Address LIKE '%" + Request.QueryString["region"];
            selectSQL += "%' ";
            selectSQL += "OR A_Name LIKE '%" + Request.QueryString["region"];
            selectSQL += "%') ";
            selectSQL += "AND Room_Numer >= " + Request.QueryString["people"];


            string str = "";
            foreach (ListItem item in optionCBL.Items)
            {
                if (item.Selected)
                {
                    if (str == "")
                    {
                        str += "'" + item.Value.ToString() + "'";
                        selectSQL += " AND A_Option IN ('" + item.Value.ToString() + "'";
                    }
                    else
                    {
                        str += "," + "'" + item.Value.ToString() + "'";
                        selectSQL += ",'" + item.Value.ToString() + "'";
                    }
                }
            }

            if (optionCBL.SelectedItem != null)
            {
                selectSQL += ")";
            }

            if (MinPriceTB.Text != "")
            {
                selectSQL += " AND Price >= " + MinPriceTB.Text;
            }
            if (MaxPriceTB.Text != "")
            {
                selectSQL += " AND Price <= " + MaxPriceTB.Text;
            }
            SqlDataSource1.SelectCommand = selectSQL;
        }

        protected void MaxPriceTB_TextChanged(object sender, EventArgs e)
        {
            string selectSQL = "SELECT Accommodation_Name.A_Name, Accommodation_Name.A_Address, Accommodation_Info.Room_Numer, " +
                "Accommodation_Info.Price, Accommodation_Info.Room_type, Accommodation_Name.A_Option FROM Accommodation_Name " +
                "INNER JOIN Accommodation_Info ON Accommodation_Name.A_Address = Accommodation_Info.A_Address";
            selectSQL += " WHERE (Accommodation_Name.A_Address LIKE '%" + Request.QueryString["region"];
            selectSQL += "%' ";
            selectSQL += "OR A_Name LIKE '%" + Request.QueryString["region"];
            selectSQL += "%') ";
            selectSQL += "AND Room_Numer >= " + Request.QueryString["people"];


            string str = "";
            foreach (ListItem item in optionCBL.Items)
            {
                if (item.Selected)
                {
                    if (str == "")
                    {
                        str += "'" + item.Value.ToString() + "'";
                        selectSQL += " AND A_Option IN ('" + item.Value.ToString() + "'";
                    }
                    else
                    {
                        str += "," + "'" + item.Value.ToString() + "'";
                        selectSQL += ",'" + item.Value.ToString() + "'";
                    }
                }
            }

            if (optionCBL.SelectedItem != null)
            {
                selectSQL += ")";
            }

            if (MinPriceTB.Text != "")
            {
                selectSQL += " AND Price >= " + MinPriceTB.Text;
            }
            if (MaxPriceTB.Text != "")
            {
                selectSQL += " AND Price <= " + MaxPriceTB.Text;
            }
            SqlDataSource1.SelectCommand = selectSQL;
        }
    }
}
