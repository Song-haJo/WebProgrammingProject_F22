<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="WebProgrammingProject_F22.Board.List" %>

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
                    <td>글 목록</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:SqlDataSource ID="dSource" runat="server" ConnectionString="<%$ ConnectionStrings:SNCConnectionString %>" SelectCommand="SELECT [serial_no], [writer], [title], [ref_id], [inner_id], [depth], [read_count], [del_flag], [reg_date] FROM [board] ORDER BY [ref_id] DESC, [inner_id]"></asp:SqlDataSource>
                        <asp:GridView ID="gvList" runat="server" DataSourceID="dSource" AutoGenerateColumns="false" CellPadding="4" AllowPaging="true" GridLines="None" PageSize="10">

                            <EmptyDataTemplate>
                                등록된 게시물이 없습니다.
                            </EmptyDataTemplate>
                            <Columns>
                                <asp:BoundField DataField="serial_no" HeaderText="번호">
                                    <HeaderStyle Width="60px" />
                                    <ItemStyle HorizontalAlign ="Center" />
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="제목" HeaderStyle-Width="330px">
                                    <ItemTemplate>
                                        <%# ShowDepth((int)Eval("depth")) %>
                                        <%# ShowDepth((int)Eval("inner_id")) %>
                                        <%# ShowTitle(
                                            Eval("serial_no").ToString(),
                                            Eval("title").ToString(),
                                            Eval("del_flag").ToString()) %>
                                        
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="writer" HeaderText="이름" >
                                    <HeaderStyle Width="70px" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField >
                                <asp:TemplateField HeaderText="날짜" HeaderStyle-Width="70px">
                                    <ItemTemplate>
                                        <%# ShowDate((DateTime)Eval("reg_date")) %>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="read_count" HeaderText="조회" >
                                    <HeaderStyle Width="40px" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField >
                            </Columns>
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:LinkButton ID="btnWrite" runat="server" PostBackUrl="~/Board/Write.aspx">[글 쓰기]</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
