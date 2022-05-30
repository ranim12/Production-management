using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AC
{
    public partial class Password : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["PECACConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlDataAdapter sda = new SqlDataAdapter("select Mot_De_Passe from Chef_Equipe_tbl where Mot_De_Passe ='" + AncienPass.Text + "' ", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count.ToString() == "1")
            {
                if (NouveauPass.Text == ConfirmerPass.Text)
                {
                 
                    SqlCommand cmd = new SqlCommand("Update Chef_Equipe_tbl set Mot_De_Passe='" + ConfirmerPass.Text + "' where Mot_De_Passe='" + AncienPass.Text + "' ", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Label1.Text = "Votre mot de passe à été changé avec Succès";
                    Label1.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    Label1.Text = "Le Nouveau Mot de passe et le Mot de Passe de Confirmation doivent étre Les memes";
                }

            }
            else
            {
                Label1.Text = "S'il Vous Plait Entrer votre Ancien Mot de Passe";
            }
        }
    }

}
    
