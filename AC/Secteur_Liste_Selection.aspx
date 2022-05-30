<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Secteur_Liste_Selection.aspx.cs" Inherits="WebApplication2.Secteur_Liste_Selection" %>
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
        <a href="Secteur_Liste_Selection.aspx" class="list-group-item list-group-item-action bg-light">Affectation des Secteurs</a>
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

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
           
          </ul>
        </div>
      </nav>

      <div class="container-fluid">
        <h1 class="mt-4">Affectation des secteurs</h1><br /><br />
      <p>Selectionner un secteur:</p>
          <asp:DropDownList ID="DropDownList1"  runat="server"  >
            
          </asp:DropDownList><hr />
              
           <p>Selectionner un shift de travail:</p> 
          <asp:DropDownList ID="DropDownList2" runat="server"  >
            <asp:ListItem Value="0">--Shift--</asp:ListItem>
               <asp:ListItem>De 06h:00 A 14h:00</asp:ListItem>
               <asp:ListItem>De 14h:00 A 22h:00</asp:ListItem>
               <asp:ListItem>De 22h:00 A 06h:00</asp:ListItem>
          </asp:DropDownList><hr />
       <div>
           <center>
             
              
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="600px" CellPadding="4" ForeColor="#333333" GridLines="None">
               <AlternatingRowStyle BackColor="White" />
           <Columns>
               <asp:TemplateField>
                   <ItemTemplate>
<asp:CheckBox runat="server" ID="CheckBox1"></asp:CheckBox>
                   </ItemTemplate>
               </asp:TemplateField>
          
          <asp:TemplateField headerText="Operatrice:Nom_Prenom">
              <ItemTemplate>
<asp:Label ID="labname" runat="server" Text='<% #Bind("Nom_Prenom") %>'></asp:Label>
              </ItemTemplate>
          </asp:TemplateField>
               

                </Columns>
               <EditRowStyle BackColor="#2461BF" />
               <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
               <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
               <RowStyle BackColor="#EFF3FB" />
               <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
               <SortedAscendingCellStyle BackColor="#F5F7FB" />
               <SortedAscendingHeaderStyle BackColor="#6D95E1" />
               <SortedDescendingCellStyle BackColor="#E9EBEF" />
               <SortedDescendingHeaderStyle BackColor="#4870BE" />
               </asp:GridView>
<asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Valider" OnClick="Button1_Click"></asp:Button>
         </center>
           <hr /><hr />
           <asp:Literal ID="Lit1" runat="server"></asp:Literal>
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
