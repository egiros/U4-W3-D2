<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Second.aspx.cs" Inherits="U4_W3_D2.Second" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>

        <form runat="server">
                 <h2>BENVENUTO NELLA TUA AREA RISERVATA</h2>
                   <asp:Label ID="DatiUsername" runat="server"></asp:Label>
                        <br />
                        <br />
                        <br />
                    <asp:Button ID="BtnLogout" runat="server" Text="Logout" OnClick="BtnLogout_Click"/>
           
        </form>

</body>
</html>
