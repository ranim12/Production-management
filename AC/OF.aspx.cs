using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class OF : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["PECACConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            GridView1.DataBind();


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }
        /* public void disp_data()
         {
             SqlCommand cmd = con.CreateCommand();
             cmd.CommandType = CommandType.Text;
             cmd.CommandText = "select * from Gestion_OF";
             cmd.ExecuteNonQuery();
             DataTable dt = new DataTable();
             SqlDataAdapter da = new SqlDataAdapter(cmd);
             da.Fill(dt);
             GridView1.DataSource = dt;
             GridView1.DataBind();


         }*/
    }
}