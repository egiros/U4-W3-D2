<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="U4_W3_D2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <div Class="text-center my-5" >
            <h2>Pagina di Login</h2>
            <asp:TextBox ID="Username" runat="server" placeholder="Username" CssClass="mt-3 mb-2"></asp:TextBox>
            <br />
            <asp:TextBox ID="Password" runat="server" TextMode="Password" placeholder="Password" CssClass="mb-3"></asp:TextBox>
            <br />
            <asp:Button ID="BtnLogin" runat="server" Text="Entra" Class="btn btn-dark" OnClick="BtnLogin_Click"/>
       </div>
    </main>

</asp:Content>
