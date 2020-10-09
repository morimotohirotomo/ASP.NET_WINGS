<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPageSample.master" AutoEventWireup="true" CodeBehind="NestedContentPageSample.aspx.cs" Inherits="WebApplication1.NestedContentPageSample" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NestedContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="入れ子にされたマスターページを使ったコンテンツページ"></asp:Label>
</asp:Content>
