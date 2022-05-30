using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class Poste_de_charge : System.Web.UI.Page

    {
        string strcon = ConfigurationManager.ConnectionStrings["PECACConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            getPublisherByID();
        }
        //ajout
        protected void Button2_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('Poste de charge existe');</script>");
            if (checkPublisherExists())
            {
                Response.Write("<script>alert('Poste de charge existe.');</script>");
            }
            else
            {
                addNewPublisher();
            }
        }
        //modifier
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkPublisherExists())
            {
                updatePublisherByID();
            }
            else
            {
                Response.Write("<script>alert('Poste de charge existe');</script>");
            }
        }
        //supprimer
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkPublisherExists())
            {
                deletePublisherByID();
            }
            else
            {
                Response.Write("<script>alert('Poste de charge existe');</script>");
            }
        }
        //go

        void getPublisherByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Poste_de_Charge where Poste_ID='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Poste de charge avec cette ID n'existe pas');</script>");
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

                SqlCommand cmd = new SqlCommand("SELECT * from Poste_de_Charge  where Poste_ID='" + TextBox1.Text.Trim() + "';", con);
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

                SqlCommand cmd = new SqlCommand("INSERT INTO Poste_de_Charge(Nom_Poste) values(@Nom_Poste)", con);

                cmd.Parameters.AddWithValue("@Poste_ID", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Nom_Poste", TextBox2.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Poste de charge Ajouté avec succée.');</script>");
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


                SqlCommand cmd = new SqlCommand("update Poste_de_Charge set Nom_Poste= @Nom_Poste WHERE Poste_ID='" + TextBox1.Text.Trim() + "'", con);
                cmd.Parameters.AddWithValue("@Nom_Poste", TextBox2.Text.Trim());
                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result > 0)
                {

                    Response.Write("<script>alert('Poste de charge Modifié avec succée');</script>");
                    GridView1.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('Poste de charge avec cette Id n'existe pas');</script>");
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


                SqlCommand cmd = new SqlCommand("Delete from Poste_de_Charge  where Poste_ID='" + TextBox1.Text.Trim() + "'", con);
                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result > 0)
                {

                    Response.Write("<script>alert('Poste de charge supprimé avec succée');</script>");
                    GridView1.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('Poste de charge avec ctte Id n'existe pas');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}