<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Operatrices.aspx.cs" Inherits="WebApplication2.Operatrices1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
         $(document).ready(function () {
             $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
         });
   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style type="text/css">
        .card {
            margin: 0 auto; /* Added */
            float: none; /* Added */
            margin-bottom: 10px; /* Added */
            margin-top: 50px;
            text-align:center;
        }
         

        body {
    overflow-x: hidden;
}

       #sidebar-wrapper {
           min-height: 100vh;
           margin-left: -15rem;
           -webkit-transition: margin .25s ease-out;
           -moz-transition: margin .25s ease-out;
           -o-transition: margin .25s ease-out;
           transition: margin .25s ease-out;
       }

    #sidebar-wrapper .sidebar-heading {
        padding: 0.875rem 1.25rem;
        font-size: 1.2rem;
    }

    #sidebar-wrapper .list-group {
        width: 15rem;
    }

#page-content-wrapper {
    min-width: 100vw;
    
}

#wrapper.toggled #sidebar-wrapper {
    margin-left: 0;
}

@media (min-width: 768px) {
    #sidebar-wrapper {
        margin-left: 0;
    }

    #page-content-wrapper {
        min-width: 0;
        width: 1100vw;
    }

    #wrapper.toggled #sidebar-wrapper {
        margin-left: -15rem;
    }
    .card-body .row .col h4{
        color:red;
    }
    
}

         .auto-style1 {
             font-weight: normal;
         }
         .auto-style2 {
             font-style: normal;
             font-weight: normal;
         }

    </style>
  <html>

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">



  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css" rel="stylesheet">

</head>

<body>

  <div class="d-flex" id="wrapper">

    <!-- Sidebar -->
    <div class="bg-light border-right" id="sidebar-wrapper">
      <div class="sidebar-heading"> </div>
      <div class="list-group list-group-flush">
        <a href="#" class="list-group-item list-group-item-action bg-light">Dashboard</a>
        <a href="Secteur_Liste_Selection.aspx" class="list-group-item list-group-item-action bg-light">Affectation aux Secteurs</a>
        <a href="Secteur_Liste.aspx" class="list-group-item list-group-item-action bg-light">Operatrices</a>
        <a href="OF.aspx" class="list-group-item list-group-item-action bg-light">Ordres De Fabrications</a>
        <a href="#" class="list-group-item list-group-item-action bg-light">Chartes Graphiques</a>
        <a href="Planning.aspx" class="list-group-item list-group-item-action bg-light">Planification</a>
      </div>
    </div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">

      <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
        <button class="btn btn-primary" id="menu-toggle">Toggle Menu</button>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
           
          </ul>
        </div>
      </nav>
         <div class="container-fluid">
        <h1 class="mt-4">Operatrices :</h1>
        <div class="card" style="overflow: scroll" >
  <div class="card-body">
      <asp:GridView ID="GridView1" Class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="Operatrices_ID" DataSourceID="SqlDataSource1">
          <Columns>
              <asp:BoundField DataField="Operatrices_ID" HeaderText="ID" ReadOnly="True" SortExpression="Operatrices_ID" />
            
              <asp:TemplateField>
                  <ItemTemplate>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-10">
                                <div class="row">
                                    <div class="col-12">
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Nom_Prenom") %>' Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12" style="color: #FF0000; font-style: italic; font-weight: bold">

                                        &nbsp;<span class="auto-style1">Matricule</span>
                                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Black" Text='<%# Eval("Matricule") %>'></asp:Label>
                                        &nbsp;| <span class="auto-style2"><em>Shift</em></span><asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Black" Text='<%# Eval("Shift") %>'></asp:Label>
                                        &nbsp;| <span class="auto-style1">Secteur</span><asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Black" Text='<%# Eval("Secteur") %>'></asp:Label>

                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">

                                        <em>Temps Debut</em>
                                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Black" Text='<%# Eval("Temps_Debut") %>'></asp:Label>
                                        &nbsp;| <em>Temps Fin</em>
                                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Black" Text='<%# Eval("Temps_Fin") %>'></asp:Label>

                                    </div>
                                    <div class="row">
                                    <div class="col-12">

                                        <em>Temps de travail par minutes</em>
                                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Text='<%# Eval("Temps_Travail") %>'></asp:Label>
                                        &nbsp;| <em>Nombre de piéces</em> <em>réalisée</em>
                                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" Text='<%# Eval("Nombre_De_Piece_Realise") %>'></asp:Label>

                                    </div>
                                </div>
                                </div>



                            </div>
                              <div class=" col-lg-2">
                                  <asp:Image class="img-fluid p-2" ID="Image1" runat="server"  />
                            </div>
                        </div>
                    </div>
                  </ItemTemplate>
              </asp:TemplateField>
            
          </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PECACConnectionString %>" SelectCommand="SELECT * FROM [Operatrice_tbl] WHERE ([Secteur] = @Secteur)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="D1" Name="Secteur" Type="String" />
                </SelectParameters>
      </asp:SqlDataSource>
  </div>
</div>
      
         </div>
         </div>
  </div>
    <!-- /#page-content-wrapper -->
  
  <!-- /#wrapper -->

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Menu Toggle Script -->
  <script>
      $("#menu-toggle").click(function (e) {
          e.preventDefault();
          $("#wrapper").toggleClass("toggled");
      });
  </script>

</body>

</html>


   
   


</asp:Content>
