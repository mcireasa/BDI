<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_Product.aspx.cs" Inherits="Cireasa_Mihai_Proiect_BDI_Grupa_1.Add_Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="Label1" runat="server" BorderStyle="None" Font-Bold="True" ForeColor="#5291FF" Text="Product Name:" Font-Names="Century Gothic"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TbNume" runat="server" Height="12px" Width="108px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" BorderStyle="None" Font-Bold="True" ForeColor="#5291FF" Text="Quantity:" Font-Names="Century Gothic"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TbCantitate" runat="server" Height="12px" Width="108px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" BorderStyle="None" Font-Bold="True" ForeColor="#5291FF" Text="Price:" Font-Names="Century Gothic"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TbPret" runat="server" Height="12px" Width="108px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" BorderStyle="None" Font-Bold="True" ForeColor="#5291FF" Text="Expiration Date:" Font-Names="Century Gothic"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TbData" runat="server" Height="12px"></asp:TextBox>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#5291FF" DataSourceID="SqlDataSource1" DataTextField="Nume_Departament" DataValueField="Nume_Departament" Font-Bold="True" ForeColor="White" Font-Names="Century Gothic">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Proiect_ProductieConnectionString %>" SelectCommand="SELECT [Nume_Departament] FROM [Departamente]"></asp:SqlDataSource>
            <br />
            <asp:Button ID="BtnBack" runat="server" BackColor="#5291FF" BorderColor="White" Font-Bold="True" ForeColor="White" OnClick="BtnBack_Click" Text="Back" Font-Names="Century Gothic" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnSave" runat="server" BackColor="#5291FF" BorderColor="White" Font-Bold="True" ForeColor="White" OnClick="BtnSave_Click" Text="Save" Font-Names="Century Gothic" />
&nbsp;
            <br />
            <br />
            <asp:Label ID="LblMesaj" runat="server" Font-Bold="True" ForeColor="#5291FF"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
