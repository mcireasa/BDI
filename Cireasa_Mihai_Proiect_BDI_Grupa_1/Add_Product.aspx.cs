using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cireasa_Mihai_Proiect_BDI_Grupa_1
{
    public partial class Add_Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BtnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Products_Table.aspx");
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            SqlParameter p1 = new SqlParameter("@Nume_Produs", System.Data.SqlDbType.NVarChar);
            SqlParameter p2 = new SqlParameter("@Cantitate", System.Data.SqlDbType.Int);
            SqlParameter p3 = new SqlParameter("@Pret", System.Data.SqlDbType.Float);
            SqlParameter p4 = new SqlParameter("@Data", System.Data.SqlDbType.DateTime);
            SqlParameter p5 = new SqlParameter("@Id_Departament", System.Data.SqlDbType.Int);

            p1.Value = TbNume.Text;
            p2.Value = int.Parse(TbCantitate.Text);
            p3.Value = double.Parse(TbPret.Text);
            p4.Value = DateTime.Parse(TbData.Text);
            


            string nume_departament = DropDownList1.SelectedItem.Text;
            string strInsert = @"INSERT INTO [Produse] ([Nume_Produs], [Cantitate], [Pret], [Data_Expirare], [Id_Departament]) VALUES (@Nume_Produs, @Cantitate, @Pret, @Data, @Id_Departament)";
            string strSelectIdDepart = @"SELECT Id_Departament FROM Departamente WHERE Nume_Departament='" + nume_departament + "'";


          

            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=Proiect_Productie;Integrated Security=True;Pooling=False");
            SqlCommand insertCommand = new SqlCommand(strInsert, conn);
            SqlCommand selectIdDepartament = new SqlCommand(strSelectIdDepart, conn);

            


            

            try
            {
                
                conn.Open();
                
                

                p5.Value = Convert.ToInt32(selectIdDepartament.ExecuteScalar());
                
                insertCommand.Parameters.Add(p1);
                insertCommand.Parameters.Add(p2); 
                insertCommand.Parameters.Add(p3);
                insertCommand.Parameters.Add(p4);
                insertCommand.Parameters.Add(p5);

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
                LblMesaj.Text += "";
            }
        }

       
    }
}