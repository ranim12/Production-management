using System;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class UserLogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-118JHS5S\MONTASSAR;Initial Catalog=PECAC;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();

            }
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                SqlCommand cmd = new SqlCommand("select * from Administrateur_Login where Nom_Utilisateur='" + TextBox1.Text.Trim() + "' AND Mot_De_Passe='" + TextBox2.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        //  Response.Write("<script>alert('" + dr.GetValue(0).ToString() + "');</script>");
                        Session["Nom_Utilisateur"] = dr.GetValue(0).ToString();
                        Session["Nom_Prenom"] = dr.GetValue(2).ToString();
                        Session["role"] = "admin";
                    }
                    Response.Redirect("homepage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Erreur de saisi,Donées Erronées');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}