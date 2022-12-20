<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckPassword.aspx.cs" Inherits="WebProgrammingProject_F22.Board.CheckPassword" %>

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
                    <td>비밀번호확인</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>※자신의 비밀번호를 입력하세요.</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>글 비밀번호</td>
                    <td>
                        <asp:TextBox ID="TextPassword" runat="server" TextMode="Password" MaxLength="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="비밀번호를 넣어 확인해야 합니다." ControlToValidate="TextPassword" Display="None"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:ValidationSummary ID="vsWrite" runat="server" ShowMessageBox="true" ShowSummary="false" />
                        <asp:Label ID="lblErrorMessage" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnEditOrDelete_Click" runat="server" Text="수정/삭제" OnClick="btnEditOrDelete_Click_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnList" runat="server" Text="리스트" PostBackUrl="~/Board/List.aspx" CausesValidation="false" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
