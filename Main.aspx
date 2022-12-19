<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        html {
            /*background-color: dodgerblue;*/
            background-image: url('utah-56413209.jpg');
            background-size: cover;
            height: 100%;
            font-family: NanumSquare_ac;
        }

        .makeAReservation, .checkAReservation {
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
            margin-right: 80px;
        }
    </style>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="sign" style="float: right;">
            <asp:LoginView id="LoginView1" runat="server">
            <AnonymousTemplate>
                <!-- 로그인 전 -->
               <asp:LinkButton ID="logInLnkBtn" runat="server" CssClass="lnkBtn" OnClick="logInLnkBtn_Click">로그인</asp:LinkButton>
               &nbsp;&nbsp;&nbsp;
               <asp:LinkButton ID="signUpLnkBtn" runat="server" CssClass="lnkBtn" OnClick="signUpLnkBtn_Click">회원가입</asp:LinkButton>
            </AnonymousTemplate>
            <LoggedInTemplate>
               <!-- 로그인 후 -->
               <asp:LinkButton ID="logOutLnkBtn" runat="server" CssClass="lnkBtn" OnClick="logOutLnkBtn_Click">로그아웃</asp:LinkButton>
               &nbsp;&nbsp;&nbsp;
               <asp:LinkButton ID="Mypage" runat="server" CssClass="lnkBtn" OnClick="Mypage_Click">마이페이지</asp:LinkButton>
            </LoggedInTemplate>
            </asp:LoginView>
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
                        <TitleStyle Font-Bold="True" ForeColor="dodgerblue" CssClass="calendar" BackColor="aliceblue" />
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
                    <h3 class="font" style="font-size: 25px">인원</h3>
                    <asp:DropDownList ID="people" runat="server" CssClass="font" style="width: 220px; height: 32px;">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                </asp:DropDownList> <!--텍스트 박스에서 드롭다운으로 변경-->
                </div>
                <asp:Button ID="searchBtn" runat="server" Text="검색" CssClass="btn" OnClick="searchBtn_Click" />
            </div>
        </div>
        <!--div class="wrap">
            <h2>예약 확인</h2>
            <div class="checkAReservation">
                <div class="float" style="vertical-align: middle; float: left">
                    <div>
                        <h3 class="font" style="font-size: 25px">지역</h3>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="font"></asp:TextBox>
                    </div>
                    <div>
                        <h3 class="font" style="font-size: 25px">인원</h3>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="font"></asp:TextBox>
                    </div>
                </div>
                <asp:Button ID="Button1" runat="server" Text="검색" CssClass="btn" />
            </div>
        </div-->
    </form>
</body>
</html>
