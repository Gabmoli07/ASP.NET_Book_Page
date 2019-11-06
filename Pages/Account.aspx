<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page/MasterPage.master" AutoEventWireup="true" CodeFile="Account.aspx.cs" Inherits="Pages_Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Account
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <style>
         body 
        {
            margin: 0;
            padding: 0;
            text-align: center;
        }
    </style>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AccountConnectionString %>" SelectCommand="SELECT [First_Name], [Last_Name], [Email] FROM [Information]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
<asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" Font-Bold="False" Font-Italic="True" Font-Names="Lucida Sans Unicode" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Green" BorderColor="Green" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Width="292px">
    <AlternatingItemStyle BackColor="White" />
    <FooterStyle BackColor="Green" Font-Bold="True" ForeColor="White" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"/>
    <HeaderStyle BackColor="Green" Font-Bold="True" ForeColor="White" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
    <ItemStyle BackColor="#4CAF50" ForeColor="#333333" />
    <ItemTemplate>
        First_Name:
        <asp:Label ID="First_NameLabel" runat="server" Text='<%# Eval("First_Name") %>' />
        <br />
        Last_Name:
        <asp:Label ID="Last_NameLabel" runat="server" Text='<%# Eval("Last_Name") %>' />
        <br />
        Email:
        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
        <br />
<br />
    </ItemTemplate>
    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
</asp:DataList>
</asp:Content>

