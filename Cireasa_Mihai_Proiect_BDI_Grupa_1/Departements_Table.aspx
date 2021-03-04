<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Departements_Table.aspx.cs" Inherits="Cireasa_Mihai_Proiect_BDI_Grupa_1.Materials_Table" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image: url('/Departament.png')">
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Departament" DataSourceID="SqlDataSource1" Font-Names="Century Gothic" Width="573px">
                <Columns>
                    <asp:BoundField DataField="Id_Departament" HeaderText="Id_Departament" InsertVisible="False" ReadOnly="True" SortExpression="Id_Departament" />
                    <asp:BoundField DataField="Nume_Departament" HeaderText="Nume_Departament" SortExpression="Nume_Departament" />
                    <asp:BoundField DataField="Descriere" HeaderText="Descriere" SortExpression="Descriere" />
                    <asp:CommandField ShowEditButton="True" InsertImageUrl="Edit.png"  />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                <HeaderStyle BackColor="#5291FF" Font-Bold="True" Font-Names="Century Gothic" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Proiect_ProductieConnectionString %>" DeleteCommand="DELETE FROM [Departamente] WHERE [Id_Departament] = @Id_Departament" InsertCommand="INSERT INTO [Departamente] ([Nume_Departament], [Descriere]) VALUES (@Nume_Departament, @Descriere)" SelectCommand="SELECT * FROM [Departamente]" UpdateCommand="UPDATE [Departamente] SET [Nume_Departament] = @Nume_Departament, [Descriere] = @Descriere WHERE [Id_Departament] = @Id_Departament">
                <DeleteParameters>
                    <asp:Parameter Name="Id_Departament" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Nume_Departament" Type="String" />
                    <asp:Parameter Name="Descriere" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nume_Departament" Type="String" />
                    <asp:Parameter Name="Descriere" Type="String" />
                    <asp:Parameter Name="Id_Departament" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Century Gothic" Text="Departament:"></asp:Label>
&nbsp;<asp:TextBox ID="TbNume" runat="server" Font-Bold="True" Font-Names="Century Gothic" Height="14px"></asp:TextBox>
&nbsp;
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Century Gothic" Text="Descriere:"></asp:Label>
&nbsp;
            <asp:TextBox ID="TbDescriere" runat="server" AutoPostBack="True" Font-Bold="True" Font-Names="Century Gothic" Height="14px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="LblMesaj" runat="server" Font-Bold="True" Font-Names="Century Gothic"></asp:Label>
            <br />
            <br />
            <asp:Button ID="BtnBack" runat="server" BackColor="#5291FF" Font-Bold="True" Font-Names="Century Gothic" ForeColor="White" OnClick="BtnBack_Click" Text="Back" />
&nbsp;&nbsp;
            <asp:Button ID="BtnSave" runat="server" BackColor="#5291FF" Font-Bold="True" Font-Names="Century Gothic" ForeColor="White" OnClick="BtnSave_Click" Text="Save" />
        </div>
    </form>
</body>
</html>
