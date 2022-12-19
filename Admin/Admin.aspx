<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="WebProgrammingProject_F22.Admin.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>관리자 전용 페이지</title>
    <style type="text/css">
        .auto-style1 {
            height: 48px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>관리자 전용 페이지</h1>
            <h2>관리자명 : <asp:LoginName ID="LoginName1" runat="server" /></h2>
            <p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="나가기" />
            </p>
        </div>
        <table style="width:100%;">
            <tr>
                <td>사용자</td>
                <td>예약</td>
            </tr>
            <tr>
                <td class="auto-style1">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SNCConnectionString %>" SelectCommand="SELECT Customer_Number, Customer_Name, PhoneNumber, Customer_EMail, Customer_Password, Customer_Address FROM Customer"></asp:SqlDataSource>
                <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" OnCancelCommand="DataList1_CancelCommand" OnEditCommand="DataList1_EditCommand" OnUpdateCommand="DataList1_UpdateCommand" OnDeleteCommand="DataList1_DeleteCommand">
            <ItemTemplate >
                <%# Eval("Customer_Number") %><!--사용자번호-->:
                <%# Eval("Customer_Name") %><!--사용자명-->
                <asp:LinkButton ID="lbtnView1" runat="server" CommandName="Select">[자세히]</asp:LinkButton><!--상세보기 버튼-->
            </ItemTemplate>            
            <SelectedItemTemplate>
                <asp:Label ID="CNum" runat="server" Text='<%# Eval("Customer_Number") %>'></asp:Label>><!--사용자번호--><br />
                이름 :<%# Eval("Customer_Name") %><!--사용자명--><br />연락처 :<%# Eval("PhoneNumber") %><!--사용자연락처--><br />E-Mail :<%# Eval("Customer_EMail") %><!--사용자메일--><br />비밀번호 :<%# Eval("Customer_Password") %><!--사용자비밀번호--><br />주소 :<%# Eval("Customer_Address") %><!--사용자주소--><br /><asp:LinkButton ID="lbtnEdit" runat="server" CommandName="Edit">[수정]</asp:LinkButton><!--수정버튼-->
                <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Delete">[삭제]</asp:LinkButton><!--삭제버튼-->
            </SelectedItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="CNum" runat="server" Text='<%# Eval("Customer_Number") %>' ReadOnly="true" ></asp:TextBox><!--사용자번호--><br />
                이름 :<asp:TextBox ID="CName" runat="server" Text='<%# Eval("Customer_Name") %>'></asp:TextBox><!--사용자명--><br />
                연락처 :<asp:TextBox ID="CPhone" runat="server" Text='<%# Eval("PhoneNumber") %>'></asp:TextBox><!--사용자연락처--><br />
                E-Mail :<asp:TextBox ID="CMail" runat="server" Text='<%# Eval("Customer_EMail") %>'></asp:TextBox><!--사용자메일--><br />
                비밀번호 :<asp:TextBox ID="CPass" runat="server" Text='<%# Eval("Customer_Password") %>'></asp:TextBox><!--사용자비밀번호--><br />
                주소 :<asp:TextBox ID="CAddress" runat="server" Text='<%# Eval("Customer_Address") %>'></asp:TextBox><!--사용자주소--><br />
                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Update">[확인]</asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Cancel">[취소]</asp:LinkButton>
            </EditItemTemplate>
            <SeparatorTemplate><hr /></SeparatorTemplate>
        </asp:DataList></td>
                <td class="auto-style1">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SNCConnectionString %>" SelectCommand="SELECT Customer.Customer_Number AS Expr1, Customer.Customer_Name, Customer.Customer_EMail, Accommodation_Info.A_Number, Accommodation_Info.A_Address, Accommodation_Name.A_Address AS Expr2, Accommodation_Name.A_Name, Accommodation_Info.Room_type, Accommodation_Info.Price, Reservation.* FROM Reservation INNER JOIN Customer ON Reservation.Customer_Number = Customer.Customer_Number INNER JOIN Accommodation_Info ON Reservation.Serial_Number = Accommodation_Info.A_Number INNER JOIN Accommodation_Name ON Accommodation_Info.A_Address = Accommodation_Name.A_Address"></asp:SqlDataSource>
                    <asp:DataList ID="DataList2" runat="server" OnDeleteCommand="DataList2_DeleteCommand" OnItemCommand="DataList2_ItemCommand">
                        <ItemTemplate>
                            <div class="info">
                                <strong>
                                    <%# Eval("R_Number") %><br /><!--예약번호-->
                                    <%# Eval("A_Name") %>&nbsp;<%# Eval("Room_type") %></strong><br /><!--숙소이름, 방타입--><%# Eval("Customer_Number") %><br /><!--예약자이름--><asp:LinkButton ID="lbtnView2" runat="server" CommandName="Select">[상세보기]</asp:LinkButton><!--예약한 숙소 정보 보기 버튼-->
                            </div>
                        </ItemTemplate>
                        <SelectedItemTemplate>
                            <asp:Label ID="RNum" runat="server" Text='<%# Eval("R_Number") %>'></asp:Label><br /><!--예약번호-->
                            숙소 :<%# Eval("A_Name") %>&nbsp;<%# Eval("Room_type") %><!--숙소이름, 방타입--><br />숙소 주소:<%# Eval("A_Address") %><!--숙소주소--><br />예약자 :<%# Eval("Customer_Number") %><!--예약자이름--><br />예약자 E-Mail :<%# Eval("Customer_EMail") %><!--예약자 메일--><br />예약일시 : <%# Eval("R_Start_date", "{0:yyyy-MM-dd}") %>~ <%# Eval("R_End_date", "{0:yyyy-MM-dd}") %><!--예약일시--><br />
                            예약인원 :<%# Eval("Visitor_Number") %><!--예약인원--><br />가격 :<%# Eval("Price") %><!--가격--><br /><asp:LinkButton ID="LinkButton3" runat="server" CommandName="Delete">[삭제]</asp:LinkButton>
                        </SelectedItemTemplate>
                        <SeparatorTemplate>
                            <hr />
                        </SeparatorTemplate>
                    </asp:DataList>
                </td>

            </tr>
            </table>
        <br />
        
    </form>
</body>
</html>
