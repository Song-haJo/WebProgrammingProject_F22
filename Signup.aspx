<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Login" %>

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
            margin: 170px auto;
            width: 450px;
            padding: 25px;
            height: 400px;
            background-color: aliceblue;
            border-radius: 25px;
        }

        td:first-child {
            text-align: right;
        }
        td {
            line-height: 1.5;
            font-family: NanumSquare_ac;
            font-size: 22px;
            height: 30px;
            width: 500px;
        }

        #CreateUserWizard1, table {
            border-radius: 25px;
        }
        .logo {
            margin: 150px auto -150px;
            width: 70px;
        }

        #Name, #Phone, #Email, #Pessword, #PesswordCheck, #Address {
            width: 180px;
            height: 25px;
            margin-left: 10px;
            font-size: 20px;
            font-family: NanumSquare_ac;
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
                <table style="width:100%;">
                <tr>
                    <td colspan="2" class="auto-style1">
                        <h1 style="text-align: center; line-height: 0; margin-bottom:40px;">회원가입</h1>          
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="성명:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="Name" runat="server" AutoPostBack="True" OnTextChanged="Name_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="연락처:"></asp:Label>
                    </td>
                    <td class="auto-style4" >
                        <asp:TextBox ID="Phone" runat="server" AutoPostBack="True" OnTextChanged="Name_TextChanged" TextMode="Phone"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="E-mail:"></asp:Label>
                    </td>
                    <td >
                        <asp:TextBox ID="Email" runat="server" AutoPostBack="True" OnTextChanged="Name_TextChanged" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="비밀번호:"></asp:Label>
                    </td>
                    <td >
                        <asp:TextBox ID="Pessword" runat="server" TextMode="Password" AutoPostBack="True" OnTextChanged="Name_TextChanged" OnPreRender="Pessword_PreRender" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="비밀번호 확인:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="PesswordCheck" runat="server" TextMode="Password" AutoPostBack="True" OnTextChanged="Name_TextChanged" OnPreRender="PesswordCheck_PreRender" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text="주소:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="Address" runat="server" OnTextChanged="Name_TextChanged" AutoPostBack="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="2" style="text-align: center;">
                        <asp:Label ID="announcement" runat="server" Text="성명을 입력해 주세요" style="color: dodgerblue;"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="4" style="color:Red; text-align: center;">
                        <asp:Label ID="ErrorMessage" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <center>
                        <asp:Button ID="btnSingup" runat="server" Text="회원가입" OnClick="btnSingup_Click" Visible="false" style="width: 100px; height: 35px; margin: 0px auto 20px auto; background-color: dodgerblue; border: solid dodgerblue 1px; border-radius: 8px; font-size: 20px; font-family: NanumSquare_ac; color: aliceblue;"/>
                            </center>
                    </td>
                </tr>
            </table>
            </div>
        </div>
    </form>
</body>
</html>
