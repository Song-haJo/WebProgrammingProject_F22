<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        html {
            background-color: dodgerblue;
            height: 100%;
            font-family: NanumSquare_ac;
        }

        .makeAReservation {
            background-color: aliceblue;
            width: 1000px;
            height: 350px;
            border-radius: 25px;
            padding: 20px;
        }

        h2 {
            font-size: 35px;
            color: aliceblue;
        }

        h3 {
            font-size: 25px;
            line-height: 1;
        }

        .wrap {
            margin: 150px auto 80px;
            width: 1000px;
            height: 380px;

        }

        .sign {
            margin-top: -100px;
        }
    </style>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="sign" style="float: right;">
            <asp:LinkButton ID="logInLnkBtn" runat="server" CssClass="lnkBtn" OnClick="logInLnkBtn_Click">로그인</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="signUpLnkBtn" runat="server" CssClass="lnkBtn" OnClick="signUpLnkBtn_Click">회원가입</asp:LinkButton>
        </div>
        <div class="wrap">
        <h2>예약</h2>
        <div class="makeAReservation">
            <div class="float">
                <h3>입실</h3>
                <asp:Calendar ID="CalendarFrom" runat="server" BorderWidth="0px" ForeColor="Black" Height="190px" NextPrevFormat="ShortMonth" Width="300px" CssClass="font">
                    <DayHeaderStyle Font-Bold="True" CssClass="font" />
                    <NextPrevStyle Font-Bold="True" ForeColor="#333333" VerticalAlign="Bottom" CssClass="font" />
                    <OtherMonthDayStyle ForeColor="#999999" CssClass="font" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" CssClass="font" />
                    <TitleStyle Font-Bold="True" ForeColor="dodgerblue" CssClass="calendar" BackColor="aliceblue"/>
                    <TodayDayStyle BackColor="Lavender" CssClass="font" />
                </asp:Calendar>
            </div>
            <div class="float">
                <h3>퇴실</h3>
                <asp:Calendar ID="CalendarTo" runat="server" BorderWidth="0px" ForeColor="Black" Height="190px" NextPrevFormat="ShortMonth" Width="300px" CssClass="font">
                    <DayHeaderStyle Font-Bold="True" CssClass="font" />
                    <NextPrevStyle Font-Bold="True" ForeColor="#333333" VerticalAlign="Bottom" CssClass="font" />
                    <OtherMonthDayStyle ForeColor="#999999" CssClass="font" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" CssClass="font" />
                    <TitleStyle Font-Bold="True" ForeColor="dodgerblue" CssClass="calendar" BackColor="aliceblue" />
                    <TodayDayStyle BackColor="Lavender" CssClass="font" />
                </asp:Calendar>
            </div>
            <div class="float" style="vertical-align: middle;">
                <h3 class="font" style="font-size: 25px">지역</h3>
                <asp:TextBox ID="region" runat="server" CssClass="font"></asp:TextBox>
                <br />
                <br />
                <br />
                <br />
                <h3 class="font"  style="font-size: 25px">인원</h3>
                <asp:TextBox ID="people" runat="server" CssClass="font"></asp:TextBox>
            </div>
            <asp:Button ID="searchBtn" runat="server" Text="검색" CssClass="btn" />
        </div>
        </div>
    </form>
</body>
</html>