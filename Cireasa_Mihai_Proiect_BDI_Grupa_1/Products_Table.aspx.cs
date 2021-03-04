using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace Cireasa_Mihai_Proiect_BDI_Grupa_1
{
    public partial class Products_Table : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
            

        }

        protected void BtnBackProduse_Click(object sender, EventArgs e)
        {
            Response.Redirect("/StartingPage.aspx");
        }


        

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                
            DataSourceSelectArguments args = new DataSourceSelectArguments();
            DataView dv = (DataView)Sql_Produse_Data_Source.Select(args);
            DataTable dt = dv.ToTable();
            DataSet ds = new DataSet();
            ds.Tables.Add(dt);
            Cache["CacheProduse"] = ds;
                
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Console.WriteLine("A intrat");
            DataSourceSelectArguments args = new DataSourceSelectArguments();
            //incarcam args din select
            DataView dv = (DataView)Sql_Produse_Data_Source.Select(args);
            DataTable dt = dv.ToTable();
            DataSet ds = new DataSet();
            ds.Tables.Add(dt);
            Cache["CacheProduse"] = ds;
            Console.WriteLine(DropDownList1.SelectedItem.Text);
            Response.Redirect("/Products_Graph.aspx?tip=" + DropDownList1.SelectedItem.Text);
            DropDownList1.SelectedIndex = 0;

           

        }

        protected void BtnAddProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Add_Product.aspx");
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=Proiect_Productie;Integrated Security=True;Pooling=False");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "searchProduct";
            cmd.CommandType = CommandType.StoredProcedure;
            
            

            try
            {
                SqlParameter nume_produs = new SqlParameter("@Nume_Produs", TbNume.Text);
                SqlParameter cantitate = new SqlParameter("@Cantiate", Convert.ToInt32(TbCantitate.Text));
                cmd.Parameters.Add(nume_produs);
                cmd.Parameters.Add(cantitate);

                conn.Open();

                SqlDataReader reader = cmd.ExecuteReader();
                GridView2.DataSource = reader;
                GridView2.DataBind();
                LblMesaj.Text = "";

            }
            catch(Exception ex)
            {
                LblMesaj.Text = "";
                LblMesaj.Text = ex.ToString();


            } 
            finally
            {
                conn.Close();
            }

        }

        
    }
}