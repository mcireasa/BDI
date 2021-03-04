<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products_Table.aspx.cs" Inherits="Cireasa_Mihai_Proiect_BDI_Grupa_1.Products_Table" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div aria-disabled="False">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" DataKeyNames="Id_Produs" DataSourceID="Sql_Produse_Data_Source" Font-Bold="False" ForeColor="Black" Height="163px" Width="802px" Font-Names="Century Gothic">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="Id_Produs" HeaderText="Id_Produs" ReadOnly="True" SortExpression="Id_Produs" />
                    <asp:BoundField DataField="Nume_Produs" HeaderText="Nume_Produs" SortExpression="Nume_Produs" />
                    <asp:BoundField DataField="Cantitate" HeaderText="Cantitate" SortExpression="Cantitate" />
                    <asp:BoundField DataField="Pret" HeaderText="Pret" SortExpression="Pret" />
                    <asp:BoundField DataField="Data_Expirare" HeaderText="Data_Expirare" SortExpression="Data_Expirare" />
                    <asp:BoundField DataField="Id_Departament" HeaderText="Id_Departament" SortExpression="Id_Departament" />
                </Columns>
                <HeaderStyle BackColor="#5271FF" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="Sql_Produse_Data_Source" runat="server" ConnectionString="<%$ ConnectionStrings:Proiect_ProductieConnectionString %>" DeleteCommand="DELETE FROM [Produse] WHERE [Id_Produs] = @Id_Produs" InsertCommand="INSERT INTO [Produse] ([Nume_Produs], [Cantitate], [Pret], [Data_Expirare], [Id_Departament]) VALUES (@Nume_Produs, @Cantitate, @Pret, @Data_Expirare, @Id_Departament)" SelectCommand="SELECT * FROM [Produse]" UpdateCommand="UPDATE [Produse] SET [Nume_Produs] = @Nume_Produs, [Cantitate] = @Cantitate, [Pret] = @Pret, [Data_Expirare] = @Data_Expirare, [Id_Departament] = @Id_Departament WHERE [Id_Produs] = @Id_Produs">
                <DeleteParameters>
                    <asp:Parameter Name="Id_Produs" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Nume_Produs" Type="String" />
                    <asp:Parameter Name="Cantitate" Type="Int32" />
                    <asp:Parameter Name="Pret" Type="Double" />
                    <asp:Parameter Name="Data_Expirare" Type="DateTime" />
                    <asp:Parameter Name="Id_Departament" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nume_Produs" Type="String" />
                    <asp:Parameter Name="Cantitate" Type="Int32" />
                    <asp:Parameter Name="Pret" Type="Double" />
                    <asp:Parameter Name="Data_Expirare" Type="DateTime" />
                    <asp:Parameter Name="Id_Departament" Type="Int32" />
                    <asp:Parameter Name="Id_Produs" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="BtnAddProduct" runat="server" BackColor="#5271FF" BorderColor="White" Font-Bold="True" ForeColor="White" OnClick="BtnAddProduct_Click" Text="Add Product" Font-Names="Century Gothic" />
            <br />
            <br />
            <br />
            <asp:Button ID="BtnBackProduse" runat="server" BackColor="#5271FF" BorderColor="White" Font-Bold="True" ForeColor="White" Height="22px" OnClick="BtnBackProduse_Click" Text="Back" Width="65px" Font-Names="Century Gothic" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#5271FF" Font-Bold="True" ForeColor="White" Height="20px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="94px" Font-Names="Century Gothic">
                <asp:ListItem Value="Chart Type"></asp:ListItem>
                <asp:ListItem Value="Linie"></asp:ListItem>
                <asp:ListItem Value="Pie"></asp:ListItem>
                <asp:ListItem Value="Pie3D"></asp:ListItem>
                <asp:ListItem Value="Bare"></asp:ListItem>
                <asp:ListItem Value="Bare3D"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Century Gothic" ForeColor="#5291FF" Text="Nume: "></asp:Label>
&nbsp;
            <asp:TextBox ID="TbNume" runat="server" BackColor="#5291FF" Font-Bold="True" Font-Names="Century Gothic" ForeColor="White" Height="14px"></asp:TextBox>
&nbsp;
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Century Gothic" ForeColor="#5291FF" Text="Cantitate: "></asp:Label>
            <asp:TextBox ID="TbCantitate" runat="server" BackColor="#5291FF" Font-Bold="True" Font-Names="Century Gothic" ForeColor="White" Height="14px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnSearch" runat="server" BackColor="#5291FF" Font-Bold="True" Font-Names="Century Gothic" ForeColor="White" Text="Search" OnClick="BtnSearch_Click" />
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server" Font-Names="Century Gothic">
                <Columns>
                    <asp:BoundField DataField="Id_Produs" HeaderText="Id_Produs" ReadOnly="True" SortExpression="Id_Produs" />
                    <asp:BoundField DataField="Nume_Produs" HeaderText="Nume_Produs" SortExpression="Nume_Produs" />
                    <asp:BoundField DataField="Cantitate" HeaderText="Cantitate" SortExpression="Cantitate" />
                    <asp:BoundField DataField="Pret" HeaderText="Pret" SortExpression="Pret" />
                    <asp:BoundField DataField="Data_Expirare" HeaderText="Data_Expirare" SortExpression="Data_Expirare" />
                    <asp:BoundField DataField="Id_Departament" HeaderText="Id_Departament" SortExpression="Id_Departament" />
                </Columns>
                <HeaderStyle BackColor="#5291FF" Font-Bold="True" Font-Names="Century Gothic" ForeColor="White" />
            </asp:GridView>
            <br />
            <br />
            <br />
            <asp:Label ID="LblMesaj" runat="server" Font-Bold="True" Font-Names="Century Gothic" ForeColor="#5291FF"></asp:Label>
        </div>
    </form>
</body>
</html>
