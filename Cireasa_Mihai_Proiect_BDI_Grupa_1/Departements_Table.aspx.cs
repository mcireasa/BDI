using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cireasa_Mihai_Proiect_BDI_Grupa_1
{
    public partial class Materials_Table : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("/StartingPage.aspx");
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            
            SqlParameter p1 = new SqlParameter("@Nume_Departament", System.Data.SqlDbType.NVarChar);
            SqlParameter p2 = new SqlParameter("@Descriere", System.Data.SqlDbType.NVarChar);


            p1.Value = TbNume.Text;
            p2.Value = TbDescriere.Text;
           
            string strInsert = @"INSERT INTO [Departamente] ([Nume_Departament], [Descriere]) VALUES (@Nume_Departament, @Descriere)";
            




            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=Proiect_Productie;Integrated Security=True;Pooling=False");
            SqlCommand insertCommand = new SqlCommand(strInsert, conn);
          
            try
            {

                conn.Open();
                insertCommand.Parameters.Add(p1);
                insertCommand.Parameters.Add(p2);
                
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
    }
}