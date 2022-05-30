<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DeleteMember.aspx.cs" Inherits="WebApplication2.DeleteMember" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card" >
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Gestion des comptes superviseur</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img src="images/login_img.png" width="100px" />
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
                        <label>ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Chef d'Equipe ID"></asp:TextBox>
                              <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Nom_Prenom</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Nom_Prenom" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Nom_Utilisateur</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Nom_Utilisateur" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Date_de_Naissance </label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Date de Naissance" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                      <!--
                     <div class="col-md-6">
                        <label>End Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="End Date" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>-->
                  </div>
                 <div class="row">
                     <div class="col-8 mx-auto">
                       <asp:Button ID="Button3" runat="server" Text="Effacer Chef d'equipe" class="btn btn-lg btn-block btn-danger" OnClick="Button3_Click1" />
                     </div>

                    <div class="col-8 mx-auto">
                        <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-lg btn-block btn-warning" OnClick="LinkButton1_Click">Changer Mot de Passe</asp:LinkButton>
                     </div>
                     

                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Retourer a la page d'acceuill</a><br>
            <br>
         </div>
           <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Liste des superviseurs :</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PECACConnectionString %>" SelectCommand="SELECT * FROM [Chef_Equipe_tbl]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Chef_Equipe_ID" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="Chef_Equipe_ID" HeaderText="Chef_Equipe_ID" ReadOnly="True" SortExpression="Chef_Equipe_ID" />
                                <asp:BoundField DataField="Nom_Prenom" HeaderText="Nom_Prenom" SortExpression="Nom_Prenom" />
                                <asp:BoundField DataField="Nom_Utilisateur" HeaderText="Nom_Utilisateur" SortExpression="Nom_Utilisateur" />
                                <asp:BoundField DataField="Mot_De_Passe" HeaderText="Mot_De_Passe" SortExpression="Mot_De_Passe" />
                                <asp:BoundField DataField="Date_De_Naissance" HeaderText="Date_De_Naissance" SortExpression="Date_De_Naissance" />
                            </Columns>
                         </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
           </div>
               </div>
        
 
   
</asp:Content>

