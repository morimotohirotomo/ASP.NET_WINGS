<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Chapter03-06.ascx.cs" Inherits="WebApplication1.Chapter03_06" %>

<asp:TextBox ID="HourTextBox" runat="server" Columns="4" MaxLength="2"></asp:TextBox>時
<asp:TextBox ID="MinuteTextBox" runat="server" Columns="4" MaxLength="2"></asp:TextBox>分

<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="HourTextBox" ErrorMessage="時間は0-23の値で入力してください" MaximumValue="23" MinimumValue="0" Type="Integer" Text="*" Display="Dynamic"></asp:RangeValidator>
<asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="MinuteTextBox" ErrorMessage="分は0-59の値で入力してください" MaximumValue="59" MinimumValue="0" Type="Integer" Text="*" Display="Dynamic"></asp:RangeValidator>