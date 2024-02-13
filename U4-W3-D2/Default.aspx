<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="U4_W3_D2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
            <h2>Login</h2>
            <asp:TextBox ID="Username" runat="server" placeholder="Username"></asp:TextBox>
            <br />
            <asp:TextBox ID="Password" runat="server" placeholder="Password"></asp:TextBox>
            <br />
            <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click"/>
    </main>

</asp:Content>
