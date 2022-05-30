<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OF.aspx.cs" Inherits="WebApplication2.OF" %>
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
        <button class="btn btn-primary" id="menu-toggle">Masquer Menu</button>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

      
      </nav>
<!--<div class="container-fluid">
     <h1 class="mt-4">Les Ordres de Fabrications :</h1>

            
                   <asp:GridView class="table table-striped table-bordered" ID="MyGridView" runat="server" AutoGenerateColumns="false">
                  <Columns>
                                <asp:BoundField DataField="Gestion_OF_ID" HeaderText="Gestion_OF_ID" />
                                <asp:BoundField DataField="Numero_OF" HeaderText="Numero_OF" />
                                <asp:BoundField DataField="Article" HeaderText="Article"  />
                                <asp:BoundField DataField="Quantite_De_Lancement" HeaderText="Quantite_De_Lancement" />
                                 <asp:BoundField DataField="Qanututé_Realise" HeaderText="Qanututé_Realise" />
                                 <asp:BoundField DataField="Temps_Theorique" HeaderText="Temps_Theorique"  />
                                 <asp:BoundField DataField="Temps_Realise" HeaderText="Temps_Realise" />
                                 <asp:BoundField DataField="Date_Debut_OF" HeaderText="Date_Debut_OF"  />
                                 <asp:BoundField DataField="Date_Fin_OF" HeaderText="Date_Fin_OF" />
                                
                            </Columns>
              
                         </asp:GridView>
               </div>-->
              <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Liste des Ordres de fabrications:</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PECACConnectionString %>" SelectCommand="SELECT * FROM [Gestion_OF]"></asp:SqlDataSource>
                     <div class="col" style="overflow: scroll">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Gestion_OF_ID" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="Gestion_OF_ID" HeaderText="Gestion_OF_ID" ReadOnly="True" SortExpression="Gestion_OF_ID" />
                                <asp:BoundField DataField="Numero_OF" HeaderText="Numero_OF" SortExpression="Numero_OF" />
                                <asp:BoundField DataField="Article" HeaderText="Article" SortExpression="Article" />
                                <asp:BoundField DataField="Quantite_De_Lancement" HeaderText="Quantite_De_Lancement" SortExpression="Quantite_De_Lancement" />
                                <asp:BoundField DataField="Qanututé_Realise" HeaderText="Qanututé_Realise" SortExpression="Qanututé_Realise" />
                                   <asp:BoundField DataField="Temps_Theorique" HeaderText="Temps_Theorique" SortExpression="Temps_Theorique" />
                                   <asp:BoundField DataField="Temps_Realise" HeaderText="Temps_Realise" SortExpression="Temps_Realise" />
                                   <asp:BoundField DataField="Date_Debut_OF" HeaderText="Date_Debut_OF" SortExpression="Date_Debut_OF" />
                                   <asp:BoundField DataField="Date_Fin_OF" HeaderText="Date_Fin_OF" SortExpression="Date_Fin_OF" />
                                  
                            </Columns>
                         </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
  
    <!-- /#page-content-wrapper -->

  </div>
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
