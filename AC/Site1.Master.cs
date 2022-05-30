using System;

namespace WebApplication2
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton8.Visible = false;//QuiSomme nous button 
                    LinkButton5.Visible = false;//Aceuil buton
                    LinkedButton.Visible = true; // user login link button
                    LinkButton1.Visible = false; // sign up link button

                    LinkButton3.Visible = false; // logout link button
                    LinkButton7.Visible = false; // hello user link button


                    LinkButton6.Visible = true; // admin login link button
                    LinkButton2.Visible = false;
                    LinkButton4.Visible = false;//gerer les postes de charges

                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton8.Visible = true;//QuiSomme nous button 
                    LinkButton5.Visible = true;//acceuil buton
                    LinkedButton.Visible = false; // user login link button
                    LinkButton1.Visible = false; // sign up link button

                    LinkButton3.Visible = true; // logout link button
                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Hello " + Session["Nom_Utilisateur"].ToString();

                    LinkButton2.Visible = false;//Gerer les secteur
                    LinkButton4.Visible = false;//gerer les postes de charges
                    LinkButton6.Visible = true; // admin login link button



                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton8.Visible = true;//QuiSomme nous button 
                    LinkButton5.Visible = true;//acceuil buton
                    LinkedButton.Visible = false; // user login link button
                    LinkButton1.Visible = false; // sign up link button

                    LinkButton3.Visible = true; // logout link button
                    LinkButton7.Visible = true; // hello user link button
                    LinkButton10.Visible = true;// gerer les comptes Link
                    LinkButton2.Visible = true;//gerer les secteur
                    LinkButton4.Visible = true;//gerer les postes de charges
                    LinkButton1.Visible = true;//creation des comptes
                    LinkButton7.Text = "Hello Admin";


                    LinkButton6.Visible = false; // admin login link button

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeleteMember.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {

        }

        protected void LinkedButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("MembreLogin.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inscription.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["Nom_Utilisateur"] = " ";
            Session["Nom_Prenom"] = " ";
            Session["role"] = " ";
            LinkedButton.Visible = true; // user login link button
            LinkButton1.Visible = true; // sign up link button

            LinkButton3.Visible = false; // logout link button
            LinkButton7.Visible = false; // hello user link button
            LinkButton2.Visible = false;

            LinkButton6.Visible = true; // admin login link button
            Response.Redirect("MembreLogin.aspx");

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Creation_Secteur.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Poste_de_Charge.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("QuiSomme.aspx");
        }
    }
}