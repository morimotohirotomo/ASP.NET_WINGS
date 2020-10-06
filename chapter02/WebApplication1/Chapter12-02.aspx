<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chapter12-02.aspx.cs" Inherits="WebApplication1.Chapter12_02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:Label ID="Label1" runat="server" Text="更新"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="更新" />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    UpdatePanelの中<br />
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    <asp:Button ID="Button2" runat="server" Text="更新" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
