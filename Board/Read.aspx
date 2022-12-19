<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Read.aspx.cs" Inherits="WebProgrammingProject_F22.Board.Read" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2">글 읽기</td>
                    <td colspan="3">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2">작성자</td>
                    <td colspan="3">
                        <asp:Label ID="lblWriter" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2">작성 날짜</td>
                    <td colspan="3">
                        <asp:Label ID="lblRegDate" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2">제목</td>
                    <td colspan="3">
                        <asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2">내용</td>
                    <td colspan="3">
                        <asp:TextBox ID="TextMassage" runat="server" Text="" Width="400px" Height="200px" BorderStyle="Solid" BorderWidth="1px" ReadOnly="true" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">
                        <asp:LinkButton ID="btnEdit" runat="server">수정</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="btnReply" runat="server">답글</asp:LinkButton>
                    </td>
                    <td colspan="2">
                        <asp:LinkButton ID="btnDelete" runat="server">삭제</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="btnList" runat="server" PostBackUrl="~/Board/List.aspx">리스트</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
