using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class Creation_Secteur : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["PECACConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        //go buuton
        protected void Button1_Click(object sender, EventArgs e)
        {
            getPublisherByID();
        }
        //Ajout button
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkPublisherExists())
            {
                Response.Write("<script>alert('secteur avec cette ID n'existe pas.');</script>");
            }
            else
            {
                addNewPublisher();
            }

        }
        //modifier button
        protected void Button3_Click(object sender, EventArgs e)
        {

            if (checkPublisherExists())
            {
                updatePublisherByID();

            }
            else
            {
                Response.Write("<script>alert('secteur avec cette ID n'existe pas');</script>");
            }

        }
        //supprimer button
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkPublisherExists())
            {
                deletePublisherByID();
            }
            else
            {
                Response.Write("<script>alert('secteur avec cette ID n'existe pas');</script>");
            }
        }

        //My functions
        void getPublisherByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Creation_Secteur where ID_Secteur='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Secteur avec cette ID n'existe pas');</script>");
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

                SqlCommand cmd = new SqlCommand("SELECT * from Creation_Secteur  where ID_Secteur='" + TextBox1.Text.Trim() + "';", con);
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

        void addNewPublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO Creation_Secteur( ID_Secteur,Nom_Secteur) values(@ID_Secteur,@Nom_Secteur)", con);

                cmd.Parameters.AddWithValue("@ID_Secteur", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Nom_Secteur", TextBox2.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Secteur Ajouté avec succée.');</script>");
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
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


                SqlCommand cmd = new SqlCommand("update Creation_Secteur set Nom_Secteur= @Nom_Secteur WHERE ID_Secteur='" + TextBox1.Text.Trim() + "'", con);
                cmd.Parameters.AddWithValue("@Nom_Secteur", TextBox2.Text.Trim());
                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result > 0)
                {

                    Response.Write("<script>alert('Secteur Modifié avec succée');</script>");
                    GridView1.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('Secteur avec ctte Id n'existe pas');</script>");
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


                SqlCommand cmd = new SqlCommand("Delete from Creation_Secteur  where ID_Secteur='" + TextBox1.Text.Trim() + "'", con);
                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result > 0)
                {

                    Response.Write("<script>alert('Secteur supprimé avec succée');</script>");
                    GridView1.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('Secteur avec ctte Id n'existe pas');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


    }



}