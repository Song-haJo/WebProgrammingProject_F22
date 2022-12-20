<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Room.aspx.cs" Inherits="WebProgrammingProject_F22.Room" %>

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
                    <td>예약자 정보</td>
                    <td>방 정보</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>예약자 이름 :
                        <asp:Label ID="name" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        숙소이름 :
                        <asp:Label ID="r_name" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>예약자 연락처 :<asp:Label ID="phone" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        방 이름 :
                        <asp:Label ID="r_type" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>예약 날짜 :<asp:Label ID="date" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        숙소 주소 :
                        <asp:Label ID="r_address" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>예약 인원 :<asp:Label ID="vnum" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        가격:<asp:Label ID="price" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="snum" runat="server" Text="" Visible="false"></asp:Label>
                        <asp:Label ID="dnum" runat="server" Text="" Visible="false"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="Reservation" runat="server" Text="예약하기" OnClick="Reservation_Click"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
