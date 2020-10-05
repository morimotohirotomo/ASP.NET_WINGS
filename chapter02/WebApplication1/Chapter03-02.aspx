<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chapter03-02.aspx.cs" Inherits="WebApplication1.Chapter03" %>

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
            <asp:Literal ID="Literal1" runat="server" Text="Literal"></asp:Literal><br />
            <asp:Image ID="Image1" runat="server" ImageUrl="http://www.wings.msn.to/image/wings.jpg"/><br />
            <asp:HyperLink ID="HyperLink1" runat="server"　NavigateUrl="https://www.yahoo.co.jp/">テキストによるリンク</asp:HyperLink><br />
            <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="http://www.wings.msn.to/image/wings.jpg"　NavigateUrl="https://www.yahoo.co.jp/">HyperLink</asp:HyperLink>
        </div>
    </form>
</body>
</html>
