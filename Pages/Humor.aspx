﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page/MasterPage.master" AutoEventWireup="true" CodeFile="Humor.aspx.cs" Inherits="Pages_Humor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Humor
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <br />
<br />
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Book_Name" DataValueField="ID_Book" AppendDataBoundItems="True">
        <asp:ListItem Text="Please Select the Book" value=""/>
    </asp:DropDownList>
<br />

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AccountConnectionString %>" SelectCommand="SELECT [ID_Book], [Book_Name] FROM [Humor]" OnSelecting="SqlDataSource1_Selecting">

</asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Read" />
    <br />
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AccountConnectionString %>" SelectCommand="SELECT [Book_Name], [Pages], [URL] FROM [Humor] WHERE ([ID_Book] = @ID_Book)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="ID_Book" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Book_Name" HeaderText="Book_Name" SortExpression="Book_Name" />
            <asp:BoundField DataField="Pages" HeaderText="Pages" SortExpression="Pages" />
            <asp:BoundField DataField="URL" HeaderText="URL" SortExpression="URL" />
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
    <br />
</asp:Content>

