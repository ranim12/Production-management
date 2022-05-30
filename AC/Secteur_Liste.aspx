<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Secteur_Liste.aspx.cs" Inherits="WebApplication2.Secteur_Liste" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
        <a href="Secteur_Liste_Selection.aspx" class="list-group-item list-group-item-action bg-light"> Affectation des Secteurs</a>
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
        <button class="btn btn-primary" id="menu-toggle">Masquer le Menu</button>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
           
          </ul>
        </div>
      </nav>

      <div class="container-fluid">
        <h1 class="mt-4">Les Secteurs</h1>
        <div class="card" style="width: 22rem; >
  <div class="card-body">
   <ul class="list-group" >
  <li class="list-group-item"><asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Secteur D1" OnClick="Button1_Click" /></li>
       
  <li class="list-group-item"><asp:Button ID="Button2" class="btn btn-danger" runat="server" Text="Secteur D2" OnClick="Button2_Click" /></li>
       
  <li class="list-group-item"><asp:Button ID="Button3" class="btn btn-primary" runat="server" Text="Secteur D3" OnClick="Button3_Click" /></li>
       

 <li class="list-group-item"><asp:Button ID="Button4" class="btn btn-danger" runat="server" Text="Secteur D4" OnClick="Button4_Click" /></li>

  <li class="list-group-item"><asp:Button ID="Button5" class="btn btn-primary" runat="server" Text="Secteur D5" OnClick="Button5_Click" /></li>

       <li class="list-group-item"><asp:Button ID="Button6" class="btn btn-danger" runat="server" Text="Secteur D6" /></li>

       <li class="list-group-item"><asp:Button ID="Button7" class="btn btn-primary" runat="server" Text="Secteur D7" /></li>

       <li class="list-group-item"><asp:Button ID="Button8" class="btn btn-danger" runat="server" Text="Secteur F1" /></li>

       <li class="list-group-item"><asp:Button ID="Button9" class="btn btn-primary" runat="server" Text="Secteur F2" /></li>

       <li class="list-group-item"><asp:Button ID="Button10" class="btn btn-danger" runat="server" Text="Secteur F3" /></li>

       <li class="list-group-item"><asp:Button ID="Button11" class="btn btn-primary" runat="server" Text="Secteur F4" /></li>

       <li class="list-group-item"><asp:Button ID="Button12" class="btn btn-danger" runat="server" Text="Secteur F5" /></li>

       <li class="list-group-item"><asp:Button ID="Button13" class="btn btn-primary" runat="server" Text="Secteur F6" /></li>
</ul>
  </div>
</div>
      </div>
    </div>
    <!-- /#page-content-wrapper -->

  </div>
    <br /><br />
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

    </a>

</asp:Content>
