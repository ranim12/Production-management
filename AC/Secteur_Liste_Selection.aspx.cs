using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace WebApplication2
{
    public partial class Secteur_Liste_Selection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string strcon = ConfigurationManager.ConnectionStrings["PECACConnectionString"].ConnectionString;

                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    string sqlquery = "select Nom_Prenom from Operatrice_tbl";


                    SqlCommand sqlcomm = new SqlCommand(sqlquery, con);

                    GridView1.DataSource = sqlcomm.ExecuteReader();

                    GridView1.DataBind();

                    filldrop();


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
        }
        /*for (int i = 0; i < CheckBox1.Items.Count; i++)
             {
                 if (CheckBox1.Items[i].Selected && DropDownList1.SelectedItem)
                 {
                    val= CheckBox1.Items[i].Value ;
                    val1=DropDownList1.SelectedItem.Value;



                 }
             }*/


        protected void Button1_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["PECACConnectionString"].ConnectionString;

            foreach (GridViewRow grow in GridView1.Rows)
            {
                var checkselect = grow.FindControl("CheckBox1") as CheckBox;


                if (checkselect.Checked)

                {
                    SqlConnection con = new SqlConnection(strcon);
                  //  string sqlquery = "insert into Operatrice_tbl (Shift,Secteur) values(@Shift,@Secteur) where Nom_Prenom='Selma Labyedh'";
                    string sqlquery = "UPDATE Operatrice_tbl  SET Shift = @Shift, Secteur = @Secteur WHERE Nom_Prenom=@Nom_Prenom";

                    SqlCommand sqlcomm = new SqlCommand(sqlquery, con);

                    sqlcomm.Parameters.AddWithValue("@Nom_Prenom ", (grow.FindControl("labname") as Label).Text);
                    sqlcomm.Parameters.AddWithValue("@Secteur", DropDownList1.SelectedItem.Value);
                    sqlcomm.Parameters.AddWithValue("@Shift", DropDownList2.SelectedItem.Value);
                    con.Open();
                    sqlcomm.ExecuteNonQuery();
                    con.Close();
                  




                }


            }





        }




        private void filldrop()
        {
            DropDownList1.DataSource = getUserDate();
            DropDownList1.DataTextField = "Nom_secteur";
            DropDownList1.DataBind();


        }

        public void insert()
        {
            string strcon = ConfigurationManager.ConnectionStrings["PECACConnectionString"].ConnectionString;
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                string sqlquery = "insert into Secteurs (Nom_Secteur) values(@Nom_secteur) ";
                SqlCommand cmd = new SqlCommand(sqlquery, con);
                cmd.Parameters.AddWithValue("@Nom_Secteur", DropDownList1.SelectedItem.Value);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
        public DataTable getUserDate()
        {
            string strcon = ConfigurationManager.ConnectionStrings["PECACConnectionString"].ConnectionString;


            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("select Nom_Secteur from Creation_Secteur", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public DataTable getUserDate1()
        {
            string strcon = ConfigurationManager.ConnectionStrings["PECACConnectionString"].ConnectionString;


            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("select Nom_Secteur from Creation_Secteur", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }


    }

}
