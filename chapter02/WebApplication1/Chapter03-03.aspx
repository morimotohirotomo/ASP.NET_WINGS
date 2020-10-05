<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chapter03-03.aspx.cs" Inherits="WebApplication1.Chapter03_03" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
            <asp:TextBox ID="TextBox1" runat="server" Columns="30" MaxLength="30" AutoPostBack="true" OnTextChanged="TextBox1_TextChanged">テキストを入力してください</asp:TextBox><br />
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Rows="8" OnTextChanged="TextBox2_TextChanged"></asp:TextBox><br />
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Columns="8" MaxLength="8"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
