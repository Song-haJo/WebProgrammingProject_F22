<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

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

        .wrap {
            margin: -90px auto 0px 480px;
            background-color: aliceblue;
            border-radius: 25px;
            width: 800px;
            height: 100px;
            vertical-align: middle;
            padding: 0px 20px;
        }

        #Button1 {
            width: 60px;
            height: 40px;
            font-family: NanumSquare_ac;
            font-size: 25px;
            position: absolute;
            margin: 30px 20px;
            vertical-align: middle;
            text-align: center;
        }

        #fromD, #toD, #peopleDDL, #regionTB {
            margin: 5px 15px auto;
            font-family: NanumSquare_ac;
            font-size: 20px;
            width: 150px;
            height: 30px;
        }

        .wrap div {
            display: inline-block;
        }

        .filter {
            margin: 40px 382px 0px;
            border: solid aliceblue 5px;
            border-radius: 25px;
            width: 300px;
            height: 500px;
            vertical-align: middle;
            padding: 0px 20px;
            color: aliceblue;
        }

        #MinPriceTB, #MaxPriceTB {
            border: dodgerblue;
            width: 100px;
            margin: 5px;
        }

        p {
            font-size: 20px;
        }

        .result {
            background-color: rgba(240, 248, 255, 0.5);
            width: 725px;
            height: 675px;
            float: right;
            margin-top: -520px;
            margin-right: 382px;
            padding-top: 25px;
            padding-left: 25px;
        }

        .info {
            width: 700px;
            float: right;
            margin-bottom: 5px;
            margin-right: 25px;
        }

        hr {
            border-color: aliceblue;
            border-style: solid;
        }

        .info table {
            width: 700px;
        }

            .info table td {
                width: 200px;
            }

                .info table td:nth-child(2) {
                    text-align: right;
                }

        #optionCBL {
            width: 300px;
            margin-right: 100px;
            font-size: 22px;
        }

        input {
            width: 20px;
            height: 20px;
            margin: 10px;
        }

        .logo {
            margin-top: 30px;
            margin-left: 390px;
            margin-bottom: 0px;
        }

        .sign {
            float: right;
            margin-top: -100px;
            margin-right: 400px;
        }
    </style>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="logo">
                <image src="logo.png" style="width: 70px;" />
            </div>
            <div class="wrap">
                <div>
                    <h4 style="font-size: 22px; margin: 0px 25px 0px; padding-top: 15px;">??????</h4>
                    <asp:TextBox ID="regionTB" runat="server"></asp:TextBox>
                </div>
                <div>
                    <h4 style="font-size: 22px; margin: 0px 25px 0px; padding-top: 15px;">??????</h4>
                    <input id="fromD" name="fromDate" type="date" runat="server" />
                </div>
                <div>
                    <h4 style="font-size: 22px; margin: 0px 25px 0px; padding-top: 15px;">??????</h4>
                    <input id="toD" name="toDate" type="date" runat="server" />
                </div>
                <div>
                    <h4 style="font-size: 22px; margin: 0px 25px 0px; padding-top: 15px;">??????</h4>
                    <asp:DropDownList ID="peopleDDL" runat="server" Style="width: 100px; height: 32px;">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                    </asp:DropDownList>
                    <!--????????????-->
                </div>
                <asp:Button ID="Button1" runat="server" Text="??????" OnClick="Button1_Click" />
            </div>
            <div class="sign">
                <asp:LoginView ID="LoginView1" runat="server">
                    <AnonymousTemplate>
                        <!-- ????????? ??? -->
                        <asp:LinkButton ID="logInLnkBtn" runat="server" CssClass="lnkBtn" OnClick="logInLnkBtn_Click">?????????</asp:LinkButton>
                        &nbsp;&nbsp;&nbsp;
              
                        <asp:LinkButton ID="signUpLnkBtn" runat="server" CssClass="lnkBtn" OnClick="signUpLnkBtn_Click">????????????</asp:LinkButton>
                    </AnonymousTemplate>
                    <LoggedInTemplate>
                        <!-- ????????? ??? -->
                        <asp:LinkButton ID="logOutLnkBtn" runat="server" CssClass="lnkBtn" OnClick="logOutLnkBtn_Click">????????????</asp:LinkButton>
                        &nbsp;&nbsp;&nbsp;
              
                        <asp:LinkButton ID="Mypage" runat="server" CssClass="lnkBtn" OnClick="Mypage_Click">???????????????</asp:LinkButton>
                    </LoggedInTemplate>
                </asp:LoginView>
            </div>
            <div class="filter">
                <h2 style="text-align: center;">??????</h2>
                <asp:CheckBoxList ID="optionCBL" runat="server" AutoPostBack="True" OnSelectedIndexChanged="optionCBL_SelectedIndexChanged">
                    <asp:ListItem Value="H">??????</asp:ListItem>
                    <asp:ListItem Value="M">??????</asp:ListItem>
                    <asp:ListItem Value="P">??????</asp:ListItem>
                    <asp:ListItem Value="G">????????? ?????????</asp:ListItem>
                </asp:CheckBoxList>
                <!--???????????? ??????-->
                <br />
                <br />
                <h4 style="font-size: 22px; margin: 0px 25px 0px; padding-top: 15px;">??? ????????? (?????? ~ ??????)</h4>
                <p>
                    <asp:TextBox ID="MinPriceTB" runat="server" OnTextChanged="MinPriceTB_TextChanged" AutoPostBack="true"></asp:TextBox>???
            &nbsp;~<asp:TextBox ID="MaxPriceTB" runat="server" OnTextChanged="MaxPriceTB_TextChanged" AutoPostBack="true"></asp:TextBox>???
                </p>
            </div>
            <div class="result">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SNC %>" SelectCommand="SELECT Accommodation_Name.A_Name, Accommodation_Name.A_Address, Accommodation_Info.Room_Numer, Accommodation_Info.Price, Accommodation_Info.Room_type, Accommodation_Name.A_Option FROM Accommodation_Name INNER JOIN Accommodation_Info ON Accommodation_Name.A_Address = Accommodation_Info.A_Address"></asp:SqlDataSource>
                <asp:DataList ID="dlist" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="dlist_ItemCommand">
                    <ItemTemplate>
                        <image><!--?????? ?????????--></image>
                        <div class="info">
                            <asp:LinkButton ID="Linkpage" CommandName="Select" runat="server" Text='<%# Eval("A_Name") %>' Font-Size="20px" Style="text-decoration: none; color: black; font-weight: bolder; line-height: 0; margin-top: 8px; margin-left: 3px; margin-bottom: 0px;"></asp:LinkButton>
                            &nbsp;<%# Eval("Room_type") %><br />
                            <table>
                                <tr>
                                    <td><%# Eval("A_Address") %></td>
                                    <td><%# Eval("Price") %>???/1???</td>
                                </tr>
                            </table>


                            <hr />
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </form>
</body>
</html>
