<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListViewCommandSample.aspx.cs" Inherits="WebApplication1.ListViewCommandSample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="EmployeeId" DataSourceID="SqlDataSource1" GroupItemCount="3" InsertItemPosition="LastItem" style="margin-top: 116px">

                <EditItemTemplate>
                    <td runat="server" style="">
                    社員ID:
                    <asp:Label ID="EmployeeIdLabel1" runat="server" Text='<%# Eval("EmployeeId") %>' />
                    <br />
                    名前:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    課:
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="DepartmentId" SelectedValue='<%# Bind("DepartmentId") %>'></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Departments]"></asp:SqlDataSource>
                    <br />
                    誕生日:
                    <asp:TextBox ID="BirthdayTextBox" runat="server" Text='<%# Bind("Birthday") %>' />
                    <br />
                    当期売上高:
                    <asp:TextBox ID="SaleTextBox" runat="server" Text='<%# Bind("Sale") %>' />
                    <br />
                    電話番号:
                    <asp:TextBox ID="TelNoTextBox" runat="server" Text='<%# Bind("TelNo") %>' />
                    <br />
                    性別:
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" SelectedValue='<%# Bind("Sex") %>'>
                        <asp:ListItem Text="男性" Value="True" />
                        <asp:ListItem Text="女性" Value="False" />
                    </asp:RadioButtonList>
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="キャンセル" />
                    <br /></td>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>データは返されませんでした。</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td runat="server"></td>
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr ID="itemPlaceholderContainer" runat="server">
                        <td ID="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <InsertItemTemplate>
                    <td runat="server" style="">
                    社員ID:
                    <asp:TextBox ID="EmployeeIdTextBox" runat="server" Text='<%# Bind("EmployeeId") %>' />
                    <br />
                    名前:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    課:
                    <asp:TextBox ID="DepartmentIdTextBox" runat="server" Text='<%# Bind("DepartmentId") %>' />
                    <br />
                    誕生日:
                    <asp:TextBox ID="BirthdayTextBox" runat="server" Text='<%# Bind("Birthday") %>' />
                    <br />
                    当期売上高:
                    <asp:TextBox ID="SaleTextBox" runat="server" Text='<%# Bind("Sale") %>' />
                    <br />
                    電話番号:
                    <asp:TextBox ID="TelNoTextBox" runat="server" Text='<%# Bind("TelNo") %>' />
                    <br />
                    性別:
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" SelectedValue='<%# Bind("Sex") %>'>
                        <asp:ListItem Text="男性" Value="True" />
                        <asp:ListItem Text="女性" Value="False" />
                    </asp:RadioButtonList>
                    <br /></td>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span style="">EmployeeId:
                    <asp:Label ID="EmployeeIdLabel" runat="server" Text='<%# Eval("EmployeeId") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    DepartmentId:
                    <asp:Label ID="DepartmentIdLabel" runat="server" Text='<%# Eval("DepartmentId") %>' />
                    <br />
                    Birthday:
                    <asp:Label ID="BirthdayLabel" runat="server" Text='<%# Eval("Birthday") %>' />
                    <br />
                    Sale:
                    <asp:Label ID="SaleLabel" runat="server" Text='<%# Eval("Sale") %>' />
                    <br />
                    TelNo:
                    <asp:Label ID="TelNoLabel" runat="server" Text='<%# Eval("TelNo") %>' />
                    <br />
                    <asp:CheckBox ID="SexCheckBox" runat="server" Checked='<%# Eval("Sex") %>' Enabled="false" Text="Sex" />
                    <br />
                    DepartmentName:
                    <asp:Label ID="DepartmentNameLabel" runat="server" Text='<%# Eval("DepartmentName") %>' />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編集" />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="削除" />
<br /><br /></span>
                </ItemTemplate>
                <LayoutTemplate>
                    <table border="1">
                        <span runat="server" id="groupPlaceholder"></span>
                    </table>
                    <div>
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <span style="">EmployeeId:
                    <asp:Label ID="EmployeeIdLabel" runat="server" Text='<%# Eval("EmployeeId") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    DepartmentId:
                    <asp:Label ID="DepartmentIdLabel" runat="server" Text='<%# Eval("DepartmentId") %>' />
                    <br />
                    Birthday:
                    <asp:Label ID="BirthdayLabel" runat="server" Text='<%# Eval("Birthday") %>' />
                    <br />
                    Sale:
                    <asp:Label ID="SaleLabel" runat="server" Text='<%# Eval("Sale") %>' />
                    <br />
                    TelNo:
                    <asp:Label ID="TelNoLabel" runat="server" Text='<%# Eval("TelNo") %>' />
                    <br />
                    <asp:CheckBox ID="SexCheckBox" runat="server" Checked='<%# Eval("Sex") %>' Enabled="false" Text="Sex" />
                    <br />
                    DepartmentName:
                    <asp:Label ID="DepartmentNameLabel" runat="server" Text='<%# Eval("DepartmentName") %>' />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編集" />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="削除" />
<br /><br /></span>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM Employees WHERE (EmployeeId = @EmployeeId)" InsertCommand="INSERT INTO Employees(Name, DepartmentId, Birthday, Sale, TelNo, Sex) VALUES (@Name, @DepartmentId, @Birthday, @Sale, @TelNo, @Sex)DELETE FROM Employees WHERE (EmployeeId = @EmployeeId)" SelectCommand="SELECT Employees.*, Departments.Name AS DepartmentName FROM Departments INNER JOIN Employees ON Departments.DepartmentId = Employees.DepartmentId" UpdateCommand="UPDATE Employees SET Name = @Name, DepartmentId = @DepartmentId, Birthday = @Birthday, Sale = @Sale, TelNo = @TelNo, Sex = @Sex WHERE (EmployeeId = @EmployeeId)">
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
                    <asp:Parameter Name="EmployeeId" />
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
