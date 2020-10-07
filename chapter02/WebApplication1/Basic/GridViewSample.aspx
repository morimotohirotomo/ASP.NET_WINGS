<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewSample.aspx.cs" Inherits="WebApplication1.Basic.GridViewSample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="margin-bottom: 56px">
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EmployeeId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="4" OnRowCommand="GridView1_RowCommand1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="EmployeeId" HeaderText="社員" ReadOnly="True" SortExpression="EmployeeId" />
                    <asp:BoundField DataField="Name" HeaderText="氏名" SortExpression="Name" />
                    <asp:TemplateField HeaderText="課" SortExpression="DepartmentId">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="DepartmentId" SelectedValue='<%# Bind("DepartmentId") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Departments]"></asp:SqlDataSource>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("DepartmentName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="誕生日" SortExpression="Birthday">
                        <EditItemTemplate>
                            <asp:Calendar ID="Calendar1" runat="server" SelectedDate='<%# Bind("Birthday") %>' VisibleDate='<%# Eval("Birthday") %>'></asp:Calendar>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Birthday", "{0:yyyy/MM/dd}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="当期売上高" SortExpression="Sale">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Sale") %>'></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="当期売上高を入力してください" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="当期売上高は正の値を入力してください" Operator="GreaterThan" ValueToCompare="0" ForeColor="Red"></asp:CompareValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Sale", "{0:C}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="TelNo" HeaderText="電話番号" SortExpression="TelNo" />
                    <asp:TemplateField HeaderText="性別" SortExpression="Sex">
                        <EditItemTemplate>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" SelectedValue='<%# Bind("Sex") %>'>
                                <asp:ListItem Text="男性" Value="True" />
                                <asp:ListItem Text="女性" Value="False" />
                            </asp:RadioButtonList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# (bool)Eval("Sex")?"男性":"女性" %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:HyperLinkField DataNavigateUrlFields="EmployeeId" DataNavigateUrlFormatString="~/Basic/FormViewSample.aspx?EmployeeId={0}" Text="詳細" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" ShowSelectButton="True" />
                    <asp:ButtonField ButtonType="Button" CommandName="Custom" Text="カスタム" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Employees] WHERE [EmployeeId] = @EmployeeId" InsertCommand="INSERT INTO [Employees] ([EmployeeId], [Name], [DepartmentId], [Birthday], [Sale], [TelNo], [Sex]) VALUES (@EmployeeId, @Name, @DepartmentId, @Birthday, @Sale, @TelNo, @Sex)" SelectCommand="SELECT Departments.Name AS DepartmentName, Employees.* FROM Departments INNER JOIN Employees ON Departments.DepartmentId = Employees.DepartmentId" UpdateCommand="UPDATE [Employees] SET [Name] = @Name, [DepartmentId] = @DepartmentId, [Birthday] = @Birthday, [Sale] = @Sale, [TelNo] = @TelNo, [Sex] = @Sex WHERE [EmployeeId] = @EmployeeId" OnSelecting="SqlDataSource1_Selecting">
                <DeleteParameters>
                    <asp:Parameter Name="EmployeeId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EmployeeId" Type="Int32" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="DepartmentId" Type="Int32" />
                    <asp:Parameter Name="Birthday" Type="DateTime" />
                    <asp:Parameter Name="Sale" Type="Decimal" />
                    <asp:Parameter Name="TelNo" Type="String" />
                    <asp:Parameter Name="Sex" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="DepartmentId" Type="Int32" />
                    <asp:Parameter Name="Birthday" Type="DateTime" />
                    <asp:Parameter Name="Sale" Type="Decimal" />
                    <asp:Parameter Name="TelNo" Type="String" />
                    <asp:Parameter Name="Sex" Type="Boolean" />
                    <asp:Parameter Name="EmployeeId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2" DataKeyNames="EmployeeId" OnSelectedIndexChanged="ListView1_SelectedIndexChanged" GroupItemCount="3">

                <EmptyDataTemplate>
                    <span>データは返されませんでした。</span>
                </EmptyDataTemplate>

                <ItemTemplate>
                    <td>
                    <span style="">社員ID:
                    <asp:Label ID="EmployeeIdLabel" runat="server" Text='<%# Eval("EmployeeId") %>' />
                    <br />
                    名前:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    課:
                    <asp:Label ID="DepartmentIdLabel" runat="server" Text='<%# Eval("DepartmentId") %>' />
                    <br />
                    誕生日:
                    <asp:Label ID="BirthdayLabel" runat="server" Text='<%# Eval("Birthday") %>' />
                    <br />
                    当期売上高:
                    <asp:Label ID="SaleLabel" runat="server" Text='<%# Eval("Sale") %>' />
                    <br />
                    電話番号:
                    <asp:Label ID="TelNoLabel" runat="server" Text='<%# Eval("TelNo") %>' />
                    <br />
                    性別:
                    <asp:Label ID="SexLabel" runat="server" Text='<%# (bool)Eval("Sex")?"男性":"女性" %>'></asp:Label>
                    </span>
                    </td>
                </ItemTemplate>
                <GroupSeparatorTemplate>
                    <tr><td colspan="3">グループ区切り</td></tr>
                </GroupSeparatorTemplate>
                <GroupTemplate>
                    <tr>
                        <span runat="server" id="itemPlaceholder" />
                    </tr>
                </GroupTemplate>
                <EmptyDataTemplate>
                    <td>表示するレコードなし</td>
                </EmptyDataTemplate>
                <LayoutTemplate>
                    <table border="1">
                        <span runat="server" id="groupPlaceholder"></span>
                    </table>
                    <div>
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM Employees WHERE (EmployeeId = @EmployeeId)" InsertCommand="INSERT INTO Employees(Name, DepartmentId, Birthday, Sale, TelNo, Sex) VALUES (@Name, @DepartmentId, @Birthday, @Sale, @TelNo, @Sex)" SelectCommand="SELECT Employees.*, Departments.Name AS DepartmentName FROM Departments INNER JOIN Employees ON Departments.DepartmentId = Employees.DepartmentId" UpdateCommand="UPDATE Employees SET Name = @Name, DepartmentId = @DepartmentId, Birthday = @Birthday, Sale = @Sale, TelNo = @TelNo, Sex = @Sex WHERE (EmployeeId = @EmployeeId)">
                <DeleteParameters>
                    <asp:Parameter Name="EmployeeId" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" />
                    <asp:Parameter Name="DepartmentId" />
                    <asp:Parameter Name="Birthday" />
                    <asp:Parameter Name="Sale" />
                    <asp:Parameter Name="TelNo" />
                    <asp:Parameter Name="Sex" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" />
                    <asp:Parameter Name="DepartmentId" />
                    <asp:Parameter Name="Birthday" />
                    <asp:Parameter Name="Sale" />
                    <asp:Parameter Name="TelNo" />
                    <asp:Parameter Name="Sex" />
                    <asp:Parameter Name="EmployeeId" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
