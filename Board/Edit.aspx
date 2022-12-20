<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="WebProgrammingProject_F22.Board.Edit" %>

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
                    <td>글쓰기</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>작성자</td>
                    <td colspan="2">
                        <asp:TextBox ID="TextWriter" runat="server" MaxLength="50" ReadOnly="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvWriter" runat="server" ErrorMessage="작성자는 필수 입력 항목입니다." Display="None" ControlToValidate="TextWriter"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>제목</td>
                    <td colspan="2">
                        <asp:TextBox ID="TextTitle" runat="server" MaxLength="250" Width="400px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTitle" runat="server" ErrorMessage="제목은 필수 입력 항목입니다." ControlToValidate="TextTitle" Display="None"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>내용</td>
                    <td colspan="2">
                        <asp:TextBox ID="TextMessage" runat="server" Height="200px" TextMode="MultiLine" Width="400px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="3">
                        <asp:ValidationSummary ID="vsWrite" runat="server" ShowMessageBox="true" ShowSummary="false" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:LinkButton ID="btnEdit" runat="server" OnClick="btnEdit_Click">[수정]</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="btnList" runat="server" PostBackUrl="~/Board/List.aspx" CausesValidation="false">[리스트]</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
