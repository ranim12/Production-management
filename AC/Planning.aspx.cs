using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class Planning : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["PECACConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView2.DataBind();


        }
        //Bouton ajout
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkPublisherExists())
            {
                Response.Write("<script>alert('Event avec cette ID n'existe pas.');</script>");
            }
            else
            {
                ajouter();
            }
        }
        public void ajouter()
        {
            // Response.Write("<script>alert('erreurrr');</script>");

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Planning (Article,Qté_Lancement,Date_Debut,Date_Fin,Description) values(@Article,@Qté_Lancement,@Date_Debut,@Date_Fin,@Description)", con);
                cmd.Parameters.AddWithValue("@Article", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Qté_Lancement", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Date_Debut", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Date_Fin", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Description", TextBox5.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Ajout avec succée');</script>");
                GridView2.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }



        //go button
        protected void Button2_Click(object sender, EventArgs e)
        {
            getPublisherByID();
        }


        //Button Modifier
        protected void Button3_Click(object sender, EventArgs e)
        {

            if (checkPublisherExists())
            {
                updatePublisherByID();
            }
            else
            {
                Response.Write("<script>alert('Event avec cette ID n'existe pas');</script>");
            }
        }
        //Bouton supprimer
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkPublisherExists())
            {
                deletePublisherByID();
            }
            else
            {
                Response.Write("<script>alert('Event avec cette ID n'existe pas');</script>");
            }
        }








        // Ajout function


        void getPublisherByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Planning where Event_ID='" + TextBox6.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox1.Text = dt.Rows[0][1].ToString();

                }
                else
                {
                    Response.Write("<script>alert('Event avec cette ID n'existe pas');</script>");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        bool checkPublisherExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Planning  where Event_ID='" + TextBox6.Text.Trim() + "';", con);
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
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
        public void updatePublisherByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("update Planning set Article= @Article  Qté_Lancement=@Qté_Lancement Date_Debut=@Date_Debut Date_Fin=@Date_Fin Description=@Description WHERE Event_ID='" + TextBox6.Text.Trim() + "'", con);
                cmd.Parameters.AddWithValue("@Article", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Qté_Lancement", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Date_Debut", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Date_Fin", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Description", TextBox5.Text.Trim());
                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result > 0)
                {

                    Response.Write("<script>alert('Event Modifié avec succée');</script>");
                    GridView1.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('Event avec cette Id n'existe pas');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
        public void deletePublisherByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("Delete from Planning  where Event_ID='" + TextBox6.Text.Trim() + "'", con);
                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result > 0)
                {

                    Response.Write("<script>alert('Event supprimé avec succée');</script>");
                    GridView1.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('Event avec ctte Id n'existe pas');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("https://localhost:44363/Home/Index");
        }
    }
}