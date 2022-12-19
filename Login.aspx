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
            margin: 250px auto;
            width: 500px;
            height: 100px;
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

        .logo {
            margin: 210px auto -210px;
            width: 70px;
        }

        #Email, #pass {
            font-size: 20px;
            height: 25px;
            width: 180px;
            margin-left: 10px;
            font-family: NanumSquare_ac;
            line-height: 2;
        }
        td {
            height: 35px;
        }
        .auto-style1 {
            text-align: center;
        }

        .auto-style2 {
            width: 865px;
        }

        .auto-style3 {
            width: 865px;
            text-align: right;
        }

        .auto-style4 {
            text-align: right;
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
                <table style="width: 100%;">
                    <tr>
                        <td colspan="3">
                            <h1 class="auto-style1">로그인</h1>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">E-mail:</td>
                        <td colspan="2">
                            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label2" runat="server" Text="비밀번호:"></asp:Label>
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="pass" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" class="auto-style1" style="color: Red">
                            <asp:Label ID="Message" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Button ID="singup" runat="server" Text="회원가입" OnClick="singup_Click" Style="width: 100px; height: 35px; margin-left: 30px; margin-bottom: 20px; margin-right: -50px; background-color: dodgerblue; border: solid dodgerblue 1px; border-radius: 8px; font-size: 20px; font-family: NanumSquare_ac; color: aliceblue;"/>
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style4">
                            <asp:Button ID="singin" runat="server" Text="로그인" OnClick="singin_Click" Style="width: 100px; height: 35px; margin-right: 30px; margin-bottom: 20px; margin-left: -30px; background-color: dodgerblue; border: solid dodgerblue 1px; border-radius: 8px; font-size: 20px; font-family: NanumSquare_ac; color: aliceblue;"/>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
