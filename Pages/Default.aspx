<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 99px;
            height: 92px;
            justify-content:center;
            align-content:center;
            position: absolute;
            top: 179px;
            left: 1095px;
            z-index: 1;
        }
        .auto-style9 {
             width: 99px;
            height: 92px;
            justify-content:center;
            align-content:center;
            position: absolute;
            top: 179px;
            left: 1206px;
            z-index: 1;
        }
        .auto-style10 {
             width: 99px;
            height: 92px;
            justify-content:center;
            align-content:center;
            position: absolute;
            top: 284px;
            left: 1095px;
            z-index: 1;
        }
        .auto-style11 {
             width: 99px;
            height: 92px;
            justify-content:center;
            align-content:center;
            position: absolute;
            top: 284px;
            left: 1206px;
            z-index: 1;
        }
        .auto-style12 {
             width: 99px;
            height: 92px;
            justify-content:center;
            align-content:center;
            position: absolute;
            top: 179px;
            left: 983px;
            z-index: 1;
        }
        .auto-style13 {
            width: 99px;
            height: 92px;
            justify-content:center;
            align-content:center;
            position: absolute;
            top: 285px;
            left: 983px;
            z-index: 1;
        }
        /*body
        {
            width:100vw;
            height:100vh;
            display:flex;
            justify-content:center;
            align-content:center;
        }*/
        .auto-style14 {
            position: absolute;
            top: 339px;
            left: 96px;
            z-index: 1;
            height: 18px;
        }
        .auto-style22 {
            position: absolute;
            top: 298px;
            left: 145px;
            z-index: 1;
            width: 88px;
        }
        .auto-style23 {
            position: absolute;
            top: 209px;
            left: 46px;
            z-index: 1;
            height: 18px;
        }
        .auto-style24 {
            position: absolute;
            top: 250px;
            left: 117px;
            z-index: 1;
            width: 108px;
        }
        .auto-style25 {
            position: absolute;
            top: 249px;
            left: 45px;
            z-index: 1;
            width: 57px;
            height: 19px;
        }
        .auto-style26 {
            position: absolute;
            top: 206px;
            left: 117px;
            z-index: 1;
            width: 107px;
        }
        .auto-style27 {
            position: absolute;
            top: 167px;
            left: 42px;
            z-index: 1;
            height: 20px;
        }
        .auto-style28 {
            position: absolute;
            top: 383px;
            left: 101px;
            z-index: 1;
            width: 141px;
        }
        body 
        {
            margin: 0;
            padding: 0;
            text-align: center;
        }
        .auto-style29 {
            position: absolute;
            top: 165px;
            left: 261px;
            z-index: 1;
            width: 368px;
            height: 311px;
        }
        .auto-style30 {
            position: absolute;
            top: 169px;
            left: 656px;
            z-index: 1;
            height: 19px;
        }
        .auto-style31 {
            position: absolute;
            top: 221px;
            left: 673px;
            z-index: 1;
            width: 285px;
        }
        .auto-style32 {
            width: 251px;
            height: 118px;
            position: absolute;
            top: 318px;
            left: 694px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">

 <%--    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style1">--%>
           <%-- <asp:Label ID="LogInLb" runat="server" Text="Log in" CssClass="auto-style16"></asp:Label>
            <asp:Button ID="SingBtn" runat="server" CssClass="auto-style17" Text="Start Session" />
            <asp:TextBox ID="LogInTxt" runat="server" CssClass="auto-style20"></asp:TextBox>
            <asp:TextBox ID="PassTxt" runat="server" CssClass="auto-style18"></asp:TextBox>
            <asp:Label ID="PassLb" runat="server" CssClass="auto-style19" Text="Password"></asp:Label>--%>
            <asp:Label ID="SingIn" runat="server" CssClass="auto-style14" Text="Create a new account"><a href="Sign_In.aspx">Create a New Account</a></asp:Label>
            <%--<asp:Login ID="Login1" runat="server" BackColor="#333333" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style21" Font-Names="Arial" Font-Size="Medium" ForeColor="White" TextLayout="TextOnTop" OnAuthenticate="Login1_Authenticate">
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                <LoginButtonStyle BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Names="Arial Black" Font-Size="0.8em" ForeColor="Black" />
                <TextBoxStyle Font-Size="0.8em" />
                <TitleTextStyle BackColor="#4CAF50" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
           </asp:Login>--%>
            <asp:Button ID="LogInBtn" runat="server" CssClass="auto-style22" OnClick="LogInBtn_Click" Text="Enter" />
           <asp:Label ID="UserLb" runat="server" CssClass="auto-style23" Text="Email" Font-Bold="True"></asp:Label>
           <asp:Label ID="PassLb" runat="server" CssClass="auto-style25" Text="Password" Font-Bold="True"></asp:Label>
           <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style24" TextMode="Password"></asp:TextBox>
           <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style26"></asp:TextBox>
           <asp:Label ID="LogInLb" runat="server" CssClass="auto-style27" Text="Log In" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:Label>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style28"></asp:Label>
           <%-- </asp:Panel>--%>

     <%--   <asp:Panel ID="Panel2" runat="server" CssClass="auto-style2">--%>
            
            <br />
            <br />
            
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">

                <ContentTemplate>
                     <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick"></asp:Timer>
                  
                     <br />
                     <br />
                  
            <asp:Image ID="Image1" runat="server" CssClass="auto-style29" />
                </ContentTemplate>

            </asp:UpdatePanel>
           
       <asp:Label ID="Label2" runat="server" CssClass="auto-style30" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="Black" Text="Welcome to FreeReading.com "></asp:Label>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style31" Font-Bold="True" Font-Size="X-Large" Text="Please enjoy yourself reading the free books that we offer in our Webpage"></asp:Label>
        <%--</asp:Panel>--%>

       <%-- <asp:Panel ID="Panel3" runat="server" CssClass="auto-style3">--%>
            <br />
            <img alt="100" class="auto-style8" src="../Images/Book/100-Dates-and-a-Wedding_image.jpg" />
            <img alt="psyco" class="auto-style9" src="../Images/Book/a_psychoanalytic_process_from_beginning_to_-_vamik_d__volkan_image.png" />
            <img alt="cover" class="auto-style10" src="../Images/Book/coverss.png" />
            <img alt="murder" class="auto-style11" src="../Images/Book/Muder-By-Suicide_image.jpg" />
            <img alt="sexual" class="auto-style12" src="../Images/Book/sexualdisordercover2016.png" />
            <img alt="theself" class="auto-style13" src="../Images/Book/theselfandtherapy_image.png" />
   <%--  </asp:Panel>--%>

    <img alt="CAT" class="auto-style32" longdesc="cat" src="../Images/cat.gif" />

    </asp:Content>

