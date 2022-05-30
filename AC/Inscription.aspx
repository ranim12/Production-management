<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Inscription.aspx.cs" Inherits="WebApplication2.Inscription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                         <div class="row">
                             <div class="col">
                                 <center>
                                    <img src="images/login_img.png"  width="100px"/>
                                 </center>
                             </div>
                         </div>

                        <div class="row">
                             <div class="col">
                                 <center>
                                    <h4>S'inscrire</h4>
                                 </center>
                             </div>
                         </div>

                       <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Nom_Prenom</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Nom_Prenom"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Date de naissance</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Nom_Utilisateur</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Nom_utilisateur"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Mot De Passe</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Mot de Passe" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                    <div class="row">
                     <div class="col-md-6">
                        <label>Id_utilisateur</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="ID_Utilisateur"></asp:TextBox>
                        </div>
                     </div>
                    
                  </div>




                         <div class="row">
                             <div class="col">
                                  <div class="form-group">
                                     
                                      <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="S'inscrire" OnClick="Button1_Click" />
                         </div>
                                 </div>
                             </div>
                    </div>
                    
               
              
                </div>
                 <a href="homepage.aspx"><< Retour a la page d'acceuil</a><br><br />
                 <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            </div>
    </div>
        </div>
</asp:Content>
