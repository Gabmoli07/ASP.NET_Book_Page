<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page/MasterPage.master" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Pages_Student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Student
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            position: absolute;
            top: 91px;
            left: 43px;
            z-index: 1;
            height: 22px;
            width: 896px;
        }
        .auto-style9 {
            width: 415px;
            height: 217px;
            position: absolute;
            top: 167px;
            left: 286px;
            z-index: 1;
        }
         body 
        {
            margin: 0;
            padding: 0;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">

    <img alt="a" class="auto-style9" longdesc="a" src="../Images/A.jpg" /><asp:Label ID="Label1" runat="server" Text="Welcome to the Student Account, please enjoy our books in this Website Thank you for being a member!" CssClass="auto-style8" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:Label>

    <br />
    <br />

</asp:Content>

