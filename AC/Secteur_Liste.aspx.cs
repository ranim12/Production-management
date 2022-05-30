using System;

namespace WebApplication2
{
    public partial class Secteur_Liste : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //secteur D1
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Operatrices.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Operatrices_D2.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Operatrices_D3.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Operatrices_D4.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Operatrices_D5.aspx");
        }
    }
}
