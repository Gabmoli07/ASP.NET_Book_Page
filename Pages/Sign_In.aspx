<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page/MasterPage.master" AutoEventWireup="true" CodeFile="Sign_In.aspx.cs" Inherits="Pages_Sing_In" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Sign In
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style9 {
        width: 100%;
        height: 195px;
    }
    .auto-style10 {
        text-align: center;
        height: 25px;
    }
    .auto-style11 {
        width: 153px;
    }
    .auto-style12 {
        width: 153px;
        height: 23px;
    }
    .auto-style13 {
        height: 23px;
    }
    .auto-style14 {
        text-align: center;
        height: 293px;
        width: 519px;
        position: absolute;
        top: 48px;
        left: 296px;
        z-index: 1;
    }
        .auto-style15 {
            text-align: left;


        }
        .auto-style16 {
            height: 23px;
            text-align: left;
        }
        .auto-style17 {
            width: 153px;
            height: 26px;
        }
        .auto-style18 {
            text-align: left;
            height: 26px;
        }
        .auto-style19 {
            height: 26px;
        }
        .auto-style20 {
            width: 153px;
            height: 30px;
        }
        .auto-style21 {
            text-align: left;
            height: 30px;
        }
        .auto-style22 {
            height: 30px;
        }
        .auto-style23 {
            width: 153px;
            height: 40px;
        }
        .auto-style24 {
            text-align: left;
            height: 40px;
        }
        .auto-style25 {
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style14">
    <table class="auto-style9">
        <tr>
            <td class="auto-style10" colspan="3">Create Your Account</td>
        </tr>
        <tr>
            <td class="auto-style12">First Name</td>
            <td class="auto-style16">
                <asp:TextBox ID="TextBox1" runat="server" Width="163px"></asp:TextBox>
            </td>
            <td class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Last Name</td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox2" runat="server" Width="163px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">Email</td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBox3" runat="server" Width="161px"></asp:TextBox>
            </td>
            <td class="auto-style25">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter a valid email*" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">Gender</td>
            <td class="auto-style18">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="61px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style19">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">Address</td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBox4" runat="server" Width="159px"></asp:TextBox>
            </td>
            <td class="auto-style19">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Password</td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox5" runat="server" Width="159px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">Confirm Password</td>
            <td class="auto-style21">
                <asp:TextBox ID="TextBox6" runat="server" Width="157px"></asp:TextBox>
            </td>
            <td class="auto-style22">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage="Password doesn't match" ForeColor="Red"></asp:CompareValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="Required*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Phone</td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox8" runat="server" Width="157px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox8" ErrorMessage="Please Enter a valid Phone*" ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="Required*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Zip Code</td>
            <td class="auto-style16">
                <asp:TextBox ID="TextBox7" runat="server" Width="157px"></asp:TextBox>
            </td>
            <td class="auto-style13">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox7" ErrorMessage="Please enter 4 to 5 Digits" ForeColor="Red" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox7" ErrorMessage="Required*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Role</td>
            <td class="auto-style16">
                <asp:DropDownList ID="DropDownList2" runat="server">
                   
                     <asp:ListItem>Professor</asp:ListItem>
                    <asp:ListItem>Student</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style15">
                <asp:Button ID="CreateBtn" runat="server" Text="Create New Account" Width="145px" OnClick="CreateBtn_Click" />
                <br />
            </td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />

    </asp:Panel>
</asp:Content>

