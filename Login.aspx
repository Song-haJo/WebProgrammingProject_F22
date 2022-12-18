<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style>
        html {
            /*background-color: dodgerblue;*/
            background-image: url('utah-56413209.jpg');
            background-size: cover;
            height: 100%;
            font-family: NanumSquare_ac;
        }
        .wrap {
            margin: 200px auto;
            width: 500px;
            height: 370px;
        }
        td {
            font-family: NanumSquare_ac;
            font-size: 20px;
            height: 30px;
            width: 500px;
        }
        table {
            border-radius: 25px;
            background-color: aliceblue;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="logo">
            <image src="logo.png" style="width: 70px;" />
        </div>
        <div class="wrap">
        <asp:LoginView ID="LoginView1" runat="server">
            <AnonymousTemplate>
                <asp:Login ID="Login1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="NanumSquare_ac" ForeColor="#333333">
                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                    <LayoutTemplate>
                        <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                            <tr>
                                <td>
                                    <table cellpadding="0">
                                        <tr>
                                            <td align="center" colspan="2" style="height: 50px;"><h1>로그인</h1></td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="EmaileRequired" runat="server" ControlToValidate="E-mail" ErrorMessage="필수 항목입니다." ValidationGroup="ctl00$Login1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">비밀번호:</asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="필수 항목입니다." ValidationGroup="ctl00$Login1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <asp:CheckBox ID="RememberMe" runat="server" Text="로그인 정보 기억하기" style="margin-left: 210px;"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2" style="color:Red;">
                                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" colspan="2">
                                                <asp:LinkButton ID="registerLB" runat="server" style="font-size: 20px; font-family: NanumSquare_ac; margin: 10px 30px; display: block; width: 100px; text-align: center; height: 20px; text-decoration: none; color: dodgerblue;" >회원가입</asp:LinkButton>&nbsp;
                                                <!--<asp:LinkButton ID="pwRecoveryLB" runat="server" Style="font-size: 20px; font-family: NanumSquare_ac; position: absolute; margin-top: -30px; margin-left: -296px; text-decoration: none; color: dodgerblue;">암호 찾기</asp:LinkButton>-->
                                                <asp:Button ID="LoginButton" runat="server" CommandName="Login" Style="font-size: 20px; font-family: NanumSquare_ac; position: absolute; margin-top: -35px; margin-left: -115px;" Text="로그인" ValidationGroup="ctl00$Login1" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="NanumSquare_ac" ForeColor="#284E98" />
                    <TextBoxStyle />
                    <TitleTextStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                </asp:Login>
            </AnonymousTemplate>
            <LoggedInTemplate>
                <p style="text-align: center; height: 50px; margin-top: 20px;"><asp:LoginName ID="LoginName" runat="server" />님 반갑습니다.</p><br />
                <asp:LinkButton ID="changePwLB" runat="server" style="font-size: 20px; font-family: NanumSquare_ac; margin-top: -20px; margin-left: 125px; margin-bottom: 10px; display: block; width: 100px; text-align: center; height: 20px; text-decoration: none; color: dodgerblue;">암호 변경</asp:LinkButton>
                <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutText="로그아웃" style="font-size: 20px; font-family: NanumSquare_ac; margin-top: -30px; margin-left: 275px; display: block; width: 100px; text-align: center; height: 20px; text-decoration: none; color: dodgerblue;" />
            </LoggedInTemplate>
        </asp:LoginView>
            </div>
    </div>
    </form>
</body>
</html>
