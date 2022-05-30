<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Planning.aspx.cs" Inherits="WebApplication2.Planning" %>
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
         <div class="col-md-10">
         <div class="card">
               <div class="card-body">
                     <div class="col">
                           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PECACConnectionString %>" SelectCommand="SELECT [Article], [Quantite_De_Lancement], [Numero_OF] FROM [Gestion_OF]"></asp:SqlDataSource>
                           <asp:GridView ID="GridView1" runat="server"  class="table table-striped table-bordered" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                               <Columns>
                                   <asp:BoundField DataField="Article" HeaderText="Article" SortExpression="Article" />
                                   <asp:BoundField DataField="Quantite_De_Lancement" HeaderText="Quantite_De_Lancement" SortExpression="Quantite_De_Lancement" />
                                   <asp:BoundField DataField="Numero_OF" HeaderText="Numero_OF" SortExpression="Numero_OF" />
                               </Columns>

    </asp:GridView>
                         <br />
                        
                     </div>
                  </div></div></div></div></div>
  
    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="images/ajouter.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                         
                          
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
                                <label>ID Event</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="-->" OnClick="Button2_Click"  />
                                    </div>
                                </div>
                            </div>
                         </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Article </label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Article"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Quantité de lancement</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Quantité de lancement" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Date_Debut</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Date_Debut" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Date_Fin</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Date_Fin" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col">
                        <label>Description</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                 
                  
                  <div class="row">
                     <div class="col-8 mx-auto">
                        <center>
                           <div class="form-group">
                              <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Ajouter" OnClick="Button1_Click" />
                                
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Supprimer"  OnClick="Button4_Click"  />
                           </div>
                        </center>
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Retourner a la page d'accueil</a><br><br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                          <img  width="100px" src="images/info.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Informations :</h4>
                           <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="Information du planning"></asp:Label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col"  style="overflow: scroll">
                         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PECACConnectionString %>" SelectCommand="SELECT * FROM [Planning]"></asp:SqlDataSource>
                        <asp:GridView class="table table-striped table-bordered" ID="GridView2" runat="server" AutoGenerateColumns="False"  DataSourceID="SqlDataSource2">
                            <Columns>
                                 <asp:BoundField DataField="Event_ID" HeaderText="Event_ID" ReadOnly="True" SortExpression="Event_ID" />
                                        <asp:BoundField DataField="Article" HeaderText="Article" ReadOnly="True" SortExpression="Article" />
                                        <asp:BoundField DataField="Qté_Lancement" HeaderText="Qté_Lancement" SortExpression="Qté_Lancement" />
                                 <asp:BoundField DataField="Date_Debut" HeaderText="Date_Debut" ReadOnly="True" SortExpression="Date_Debut" />
                                 <asp:BoundField DataField="Date_Fin" HeaderText="Date_Fin" ReadOnly="True" SortExpression="Date_Fin" />
                                <asp:BoundField DataField="Description" HeaderText="Description" ReadOnly="True" SortExpression="Description" />

                                    </Columns>
                        </asp:GridView>
                         <br />
                         <asp:Button ID="Button3" runat="server" class="btn btn-secondary btn-lg" Text="Calendrier" OnClick="Button3_Click1" />
                     </div>
                      
                  </div>
                   <br />
                   
            
                  </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>
