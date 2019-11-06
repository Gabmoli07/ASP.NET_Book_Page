<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Pages_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Admin
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
    <br />
<br />
<br />
<asp:Label ID="Label2" runat="server"></asp:Label>
<br />
<br />
<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Welcome to the Administrator Panel "></asp:Label>
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AccountConnectionString %>" DeleteCommand="DELETE FROM [Information] WHERE [First_Name] = @original_First_Name AND (([Last_Name] = @original_Last_Name) OR ([Last_Name] IS NULL AND @original_Last_Name IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([Confirm_Password] = @original_Confirm_Password) OR ([Confirm_Password] IS NULL AND @original_Confirm_Password IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Zip_Code] = @original_Zip_Code) OR ([Zip_Code] IS NULL AND @original_Zip_Code IS NULL)) AND (([Role] = @original_Role) OR ([Role] IS NULL AND @original_Role IS NULL))" InsertCommand="INSERT INTO [Information] ([First_Name], [Last_Name], [Email], [Gender], [Address], [Password], [Confirm_Password], [Phone], [Zip_Code], [Role]) VALUES (@First_Name, @Last_Name, @Email, @Gender, @Address, @Password, @Confirm_Password, @Phone, @Zip_Code, @Role)" SelectCommand="SELECT * FROM [Information]" UpdateCommand="UPDATE [Information] SET [Last_Name] = @Last_Name, [Email] = @Email, [Gender] = @Gender, [Address] = @Address, [Password] = @Password, [Confirm_Password] = @Confirm_Password, [Phone] = @Phone, [Zip_Code] = @Zip_Code, [Role] = @Role WHERE [First_Name] = @original_First_Name AND (([Last_Name] = @original_Last_Name) OR ([Last_Name] IS NULL AND @original_Last_Name IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([Confirm_Password] = @original_Confirm_Password) OR ([Confirm_Password] IS NULL AND @original_Confirm_Password IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Zip_Code] = @original_Zip_Code) OR ([Zip_Code] IS NULL AND @original_Zip_Code IS NULL)) AND (([Role] = @original_Role) OR ([Role] IS NULL AND @original_Role IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
        <DeleteParameters>
            <asp:Parameter Name="original_First_Name" Type="String" />
            <asp:Parameter Name="original_Last_Name" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_Gender" Type="String" />
            <asp:Parameter Name="original_Address" Type="String" />
            <asp:Parameter Name="original_Password" Type="String" />
            <asp:Parameter Name="original_Confirm_Password" Type="String" />
            <asp:Parameter Name="original_Phone" Type="String" />
            <asp:Parameter Name="original_Zip_Code" Type="String" />
            <asp:Parameter Name="original_Role" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="First_Name" Type="String" />
            <asp:Parameter Name="Last_Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Confirm_Password" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Zip_Code" Type="String" />
            <asp:Parameter Name="Role" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Last_Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Confirm_Password" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Zip_Code" Type="String" />
            <asp:Parameter Name="Role" Type="String" />
            <asp:Parameter Name="original_First_Name" Type="String" />
            <asp:Parameter Name="original_Last_Name" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_Gender" Type="String" />
            <asp:Parameter Name="original_Address" Type="String" />
            <asp:Parameter Name="original_Password" Type="String" />
            <asp:Parameter Name="original_Confirm_Password" Type="String" />
            <asp:Parameter Name="original_Phone" Type="String" />
            <asp:Parameter Name="original_Zip_Code" Type="String" />
            <asp:Parameter Name="original_Role" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="First_Name" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="First_Name" HeaderText="First_Name" ReadOnly="True" SortExpression="First_Name" />
            <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="Confirm_Password" HeaderText="Confirm_Password" SortExpression="Confirm_Password" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Zip_Code" HeaderText="Zip_Code" SortExpression="Zip_Code" />
            <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
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
</asp:Content>

