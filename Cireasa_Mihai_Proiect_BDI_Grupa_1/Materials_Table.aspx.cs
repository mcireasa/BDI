using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cireasa_Mihai_Proiect_BDI_Grupa_1
{
    public partial class Materials_Table1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            SqlParameter p1 = new SqlParameter("@Denumire_Material", System.Data.SqlDbType.NVarChar);
            SqlParameter p2 = new SqlParameter("@Cantitate", System.Data.SqlDbType.Int);
            SqlParameter p3 = new SqlParameter("@Pret", System.Data.SqlDbType.Float);
            SqlParameter p4 = new SqlParameter("@Id_Produs", System.Data.SqlDbType.Int);

            p1.Value = TbDenumire.Text;
            p2.Value = int.Parse(TbCantitate.Text);
            p3.Value = double.Parse(TbPret.Text);
           



            string nume_produs = DropDownList1.SelectedItem.Text;
            string strInsert = @"INSERT INTO [Materiale] ([Denumire_Material], [Cantitate], [Pret],  [Id_Produs]) VALUES (@Denumire_Material, @Cantitate, @Pret, @Id_Produs)";
            string strSelectIdDepart = @"SELECT Id_Departament FROM Produse WHERE Nume_Produs='" + nume_produs + "'";




            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=Proiect_Productie;Integrated Security=True;Pooling=False");
            SqlCommand insertCommand = new SqlCommand(strInsert, conn);
            SqlCommand selectIdDepartament = new SqlCommand(strSelectIdDepart, conn);

            try
            {

                conn.Open();



                p4.Value = Convert.ToInt32(selectIdDepartament.ExecuteScalar());

                insertCommand.Parameters.Add(p1);
                insertCommand.Parameters.Add(p2);
                insertCommand.Parameters.Add(p3);
                insertCommand.Parameters.Add(p4);
                

                insertCommand.ExecuteNonQuery();

                LblMesaj.Text += "\r\nInsert was successful!";
            }
            catch (Exception ex)
            {
                LblMesaj.Text += "\r\nInsert failed!" + ex.Message;
            }
            finally
            {
                conn.Close();
                GridView1.DataBind();
                LblMesaj.Text += "";
            }
        }
    

        protected void BtnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("/StartingPage.aspx");
        }
    }
}