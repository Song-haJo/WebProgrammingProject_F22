using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProgrammingProject_F22.Board
{
    public partial class List : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected string ShowDepth(int depth)
        {
            string returnString = "";
            for (int i = 0; i < depth; i++)
            {
                returnString += "&nbsp;&nbsp;&nbsp;";
            }
            return returnString;
        }
        protected string ShowReplyIcon(int innerId)
        {
            string returnString = "";
            if(innerId != 0)
            {
                returnString += "<asp:Label ID='Label1' runat='server' Text='└> Re'></asp:Label>";
            }
            return returnString;
        }

        protected string ShowTitle(string serialNo, string title, string delFlag)
        {
            string returnString = "";
            if (delFlag == "N")
            {
                returnString += "<a href='Read.aspx?sn=" +serialNo;
                returnString += "' class='a01'>" +title +"</a>";
            }
            else
            {
                returnString += "삭제된 게시물입니다.";
            }
            return returnString;
        }
        protected string ShowDate(DateTime regDate)
        {
            return string.Format("{0:yyyy-MM-dd}", regDate);
        }

    }
}