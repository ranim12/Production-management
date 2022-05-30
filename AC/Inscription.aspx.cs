using System;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class Inscription : System.Web.UI.Page
    {
        /*  string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;*/
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-118JHS5S\MONTASSAR;Initial Catalog=PECAC;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();

                }
                con.Open();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        //button d'inscription event
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkUserExists())
            {
                Response.Write("<script>alert('Désolé,Membre déja existant avec cette ID');</script>");
            }
            else
            {
                inscription();
            }

        }

        void inscription()
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO Chef_Equipe_tbl (Chef_Equipe_ID, Nom_Prenom,Nom_Utilisateur,Mot_De_Passe,Date_De_Naissance) values (@Chef_Equipe_ID,@Nom_Prenom,@Nom_Utilisateur,@Mot_De_Passe,@Date_De_Naissance)", con);
            cmd.Parameters.AddWithValue("@Chef_Equipe_ID", TextBox5.Text.Trim());
            cmd.Parameters.AddWithValue("@Nom_Prenom", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@Date_De_Naissance", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@Nom_Utilisateur", TextBox3.Text.Trim());
            cmd.Parameters.AddWithValue("@Mot_De_Passe", TextBox4.Text.Trim());

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Bienvenue,Inscription validée');</script>");
        }
        //Methode qui verifie l'existance d'un id unique dans la base 
        bool checkUserExists()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM Chef_Equipe_tbl where Chef_Equipe_ID='" + TextBox5.Text.Trim() + "' ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                return true;
            }
            else
            {
                return false;
            }



        }

    }

    /* public void disp_data()
     {
         SqlCommand cmd = con.CreateCommand();
         cmd.CommandType = CommandType.Text;
         cmd.CommandText = "select * from Chef_Equipe_tbl";
         cmd.ExecuteNonQuery();
         DataTable dt = new DataTable();
         SqlDataAdapter da = new SqlDataAdapter(cmd);
         da.Fill(dt);
         GridView1.DataSource = dt;
         GridView1.DataBind();


     }*/
}

