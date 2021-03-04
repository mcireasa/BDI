<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StartingPage.aspx.cs" Inherits="Cireasa_Mihai_Proiect_BDI_Grupa_1.StartingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image: url('/Warehouse.png')"> 
    <form id="form1" runat="server">
        <div align="center">
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="BtnProduse" runat="server" BackColor="#5291FF" BorderColor="White" Font-Bold="True" ForeColor="White" OnClick="BtnProduse_Click" Text="Products " Font-Names="Century Gothic" align="center"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;<asp:Button ID="BtnProduse0" runat="server" BackColor="#5291FF" BorderColor="White" Font-Bold="True" ForeColor="White" Text="Materials" Font-Names="Century Gothic" align="center" OnClick="BtnProduse0_Click"/>
        &nbsp;<asp:Button ID="BtnProduse1" runat="server" BackColor="#5291FF" BorderColor="White" Font-Bold="True" ForeColor="White" Text="Departments " Font-Names="Century Gothic" align="center" OnClick="BtnProduse1_Click"/>
        </div>
    </form>
</body>
</html>
