<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Materials_Table.aspx.cs" Inherits="Cireasa_Mihai_Proiect_BDI_Grupa_1.Materials_Table1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image: url('/Materiale.png')">
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Material" DataSourceID="SqlDataSource1" Font-Names="Century Gothic">
                <Columns>
                    <asp:BoundField DataField="Id_Material" HeaderText="Id_Material" InsertVisible="False" ReadOnly="True" SortExpression="Id_Material" />
                    <asp:BoundField DataField="Denumire_Material" HeaderText="Denumire_Material" SortExpression="Denumire_Material" />
                    <asp:BoundField DataField="Cantitate" HeaderText="Cantitate" SortExpression="Cantitate" />
                    <asp:BoundField DataField="Pret" HeaderText="Pret" SortExpression="Pret" />
                    <asp:BoundField DataField="Id_Produs" HeaderText="Id_Produs" SortExpression="Id_Produs" />
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                <HeaderStyle BackColor="#5291FF" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Proiect_ProductieConnectionString %>" SelectCommand="SELECT * FROM [Materiale]" DeleteCommand="DELETE FROM [Materiale] WHERE [Id_Material] = @Id_Material" InsertCommand="INSERT INTO [Materiale] ([Denumire_Material], [Cantitate], [Pret], [Id_Produs]) VALUES (@Denumire_Material, @Cantitate, @Pret, @Id_Produs)" UpdateCommand="UPDATE [Materiale] SET [Denumire_Material] = @Denumire_Material, [Cantitate] = @Cantitate, [Pret] = @Pret, [Id_Produs] = @Id_Produs WHERE [Id_Material] = @Id_Material">
                <DeleteParameters>
                    <asp:Parameter Name="Id_Material" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Denumire_Material" Type="String" />
                    <asp:Parameter Name="Cantitate" Type="Int32" />
                    <asp:Parameter Name="Pret" Type="Double" />
                    <asp:Parameter Name="Id_Produs" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Denumire_Material" Type="String" />
                    <asp:Parameter Name="Cantitate" Type="Int32" />
                    <asp:Parameter Name="Pret" Type="Double" />
                    <asp:Parameter Name="Id_Produs" Type="Int32" />
                    <asp:Parameter Name="Id_Material" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Century Gothic" ForeColor="#5291FF" Text="Denumire:"></asp:Label>
&nbsp;<asp:TextBox ID="TbDenumire" runat="server" BackColor="#5291FF" Font-Bold="True" Font-Names="Century Gothic" ForeColor="White"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Century Gothic" ForeColor="#5291FF" Text="Cantitate"></asp:Label>
&nbsp;
            <asp:TextBox ID="TbCantitate" runat="server" BackColor="#5291FF" Font-Bold="True" Font-Names="Century Gothic" ForeColor="White"></asp:TextBox>
&nbsp;
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Century Gothic" ForeColor="#5291FF" Text="Pret"></asp:Label>
&nbsp;
            <asp:TextBox ID="TbPret" runat="server" BackColor="#5291FF" Font-Bold="True" Font-Names="Century Gothic" ForeColor="White"></asp:TextBox>
&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Century Gothic" ForeColor="#5291FF" Text="Produs:"></asp:Label>
            &nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#5291FF" DataSourceID="SqlDataSource2" DataTextField="Nume_Produs" DataValueField="Nume_Produs" Font-Bold="True" Font-Names="Century Gothic" ForeColor="White">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Proiect_ProductieConnectionString %>" SelectCommand="SELECT [Nume_Produs] FROM [Produse]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnSave" runat="server" BackColor="#5291FF" Font-Bold="True" Font-Names="Century Gothic" ForeColor="White" Text="Save" OnClick="BtnSave_Click" />
            <br />
            <br />
            <asp:Button ID="BtnBack" runat="server" BackColor="#5291FF" Font-Bold="True" Font-Names="Century Gothic" ForeColor="White" Text="Back" OnClick="BtnBack_Click" />
            <br />
            <br />
            <br />
            <asp:Label ID="LblMesaj" runat="server" Font-Bold="True" Font-Names="Century Gothic" ForeColor="#5291FF"></asp:Label>
        </div>
    </form>
</body>
</html>
