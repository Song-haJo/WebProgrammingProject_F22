<%@ Page Language="C#" AutoEventWireup="true" CodeFile="My.aspx.cs" Inherits="My" %>

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

        .body {
            width: 1000px;
            margin: 0 auto;
        }

        h1 {
            color: aliceblue;
        }

        .reservationInfo {
            margin: 20px auto;
            width: 960px;
            height: 180px;
            padding: 10px 20px;
            background-color: aliceblue;
            border-radius: 25px;
        }

        .articles {
            margin: 20px auto;
            width: 960px;
            height: 480px;
            padding: 10px 20px;
            background-color: aliceblue;
            border-radius: 25px;
        }

        h2 {
            line-height: 0;
        }

        td {
            font-family: NanumSquare_ac;
            font-size: 20px;
            height: 30px;
            width: 500px;
        }

        .logo {
            margin-top: 30px;
            margin-left: 450px;
            margin-bottom: 0px;
        }

        #CreateUserWizard1, table {
            border-radius: 25px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="logo">
                <image src="logo.png" style="width: 70px;" />
            </div>
            <asp:LinkButton ID="logOutLB" runat="server" CssClass="lnkBtn" OnClick="logOutLB_Click" style="margin-left: 1360px; margin-top: -70px; position: absolute;">로그아웃</asp:LinkButton>
            <div class="body">
                <h1>마이 페이지</h1>
                <div class="reservationInfo">
                    <h2>예약 정보</h2>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <div class="info">
                                <strong>
                                    <!--예약 번호-->
                                    <!--숙소명-->
                                </strong>
                                <!--주소-->
                                <!--날짜-->
                            </div>
                        </ItemTemplate>
                        <SeparatorTemplate>
                            <hr />
                        </SeparatorTemplate>
                    </asp:Repeater>
                    <asp:LinkButton ID="MoreReservationLB" runat="server" OnClick="MoreReservationLB_Click" style="margin-left: 880px; margin-top: 100px; position: absolute; color: dodgerblue; text-decoration: none; font-size: 20px;">더보기</asp:LinkButton>
                </div>

                <div class="articles">
                    <h2>내가 쓴 글</h2>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <div class="info">
                                <strong>
                                    <!--글 제목 __________ 작성 날짜-->
                                </strong>
                            </div>
                        </ItemTemplate>
                        <SeparatorTemplate>
                            <hr />
                        </SeparatorTemplate>
                    </asp:Repeater>
                    <asp:LinkButton ID="MoreArticlesLB" runat="server" OnClick="MoreArticlesLB_Click" style="margin-left: 880px; margin-top: 400px; position: absolute; color: dodgerblue; text-decoration: none; font-size: 20px;">더보기</asp:LinkButton>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
