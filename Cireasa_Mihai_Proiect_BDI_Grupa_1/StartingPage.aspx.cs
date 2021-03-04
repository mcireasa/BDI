using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cireasa_Mihai_Proiect_BDI_Grupa_1
{
    public partial class StartingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnProduse_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Products_Table.aspx");
        }

        protected void BtnProduse1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Departements_Table.aspx");
        }

        protected void BtnProduse0_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Materials_Table.aspx");
        }
    }
}