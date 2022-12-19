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
public partial class Login : System.Web.UI.Page
{
    private string connectionString = @"Data Source=LAPTOP-EAQ34G6M;" + "Initial Catalog=SNC;" + "User ID=sa;Password=3840"; //해당 db로 바꿀것
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSingup_Click(object sender, EventArgs e)
    {
        string insertSQL = "INSERT INTO Customer";
        insertSQL += "(Customer_Name, PhoneNumber, Customer_EMail, ";
        insertSQL += "Customer_Password, Customer_Address) VALUES ";

        insertSQL += "(@pname, @ppnum, @email, @pw, @ad)";

        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(insertSQL, conn);

        cmd.Parameters.AddWithValue("@pname", Name.Text);
        cmd.Parameters.AddWithValue("@ppnum", Phone.Text);
        cmd.Parameters.AddWithValue("@email", Email.Text);
        cmd.Parameters.AddWithValue("@pw", Pessword.Text);
        cmd.Parameters.AddWithValue("@ad", Address.Text);

        int inserted = 0;
        try
        {
            conn.Open();
            inserted = cmd.ExecuteNonQuery();
            //lblStatus.Text = inserted.ToString() + " 개의 레코드가 삽입되었습니다.";
        }
        catch (Exception error)
        {
            ErrorMessage.Text = "데이터베이스를 읽는 동안 오류가 발생했습니다.<br />";
            ErrorMessage.Text += error.Message;
        }
        finally
        {
            conn.Close();
        }

        Response.Redirect(string.Format("Login.aspx?"));
    }

    protected void Name_TextChanged(object sender, EventArgs e)
    {
        bool open = false;
        if (Name.Text == "")
        {
            announcement.Text = "성명을 입력해 주세요.";
        }
        else if (Phone.Text == "")
        {
            announcement.Text = "전화번호를 입력해 주세요.";
        }
        else if (Email.Text == "")
        {
            announcement.Text = "이메일을 입력해 주세요.";
        }
        else if (Pessword.Text == "")
        {
            announcement.Text = "비밀번호를 입력해 주세요.";
        }
        else if (PesswordCheck.Text == "")
        {
            announcement.Text = "비밀번호 확인을 입력해 주세요.";
        }
        else if (Address.Text == "")
        {
            announcement.Text = "주소 입력해 주세요.";
        }
        else
        {
            announcement.Text = "";
            open = true;
        }

        if (Pessword.Text != PesswordCheck.Text)
        {
            ErrorMessage.Text = "비밀번호가 일치하지 않습니다.";
        }
        else
        {
            ErrorMessage.Text = "";
            if (open == true)
            {
                btnSingup.Visible = true;
            }
        }
    }

    protected void PesswordCheck_PreRender(object sender, EventArgs e)
    {
        PesswordCheck.Attributes.Add("value", PesswordCheck.Text);
    }

    protected void Pessword_PreRender(object sender, EventArgs e)
    {
        Pessword.Attributes.Add("value", Pessword.Text);
    }
}
