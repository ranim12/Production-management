<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="WebApplication2.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
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
        width: 100%;
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

  <title></title>

 
     <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="DashCSS/sb-admin-2.min.css" rel="stylesheet">
    <script src="Scripts/jquery-1.7.1.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
            <script>
                var chartData; // globar variable for hold chart data
                google.load("visualization", { packages: ["corechart"] });

                // Here We will fill chartData

                $(document).ready(function () {

                    $.ajax({
                        url: "homepage.aspx/GetChartData",
                        data: "",
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json; chartset=utf-8",
                        success: function (data) {
                            chartData = data.d;
                        },
                        error: function () {
                            alert("Error loading data! Please try again.");
                        }
                    }).done(function () {
                        // after complete loading data
                        google.setOnLoadCallback(drawChart);
                        drawChart();
                    });
                });


                function drawChart() {
                    var data = google.visualization.arrayToDataTable(chartData);

                    var options = {
                        title: "Efficience/Article",
                        pointSize: 5
                    };

                    var barChart = new google.visualization.BarChart(document.getElementById('chart_div'));
                    barChart.draw(data, options);
                    var barChart = new google.visualization.ColumnChart(document.getElementById('chart_div1'));
                    barChart.draw(data, options);

                    
                }


            </script>

      <!--  <script>
            var chartData1; // globar variable for hold chart data
            google.load("visualization", { packages: ["corechart"] });

            // Here We will fill chartData

            $(document).ready(function () {

                $.ajax({
                    url: "homepage.aspx/GetChartData1",
                    data: "",
                    dataType: "json",
                    type: "POST",
                    contentType: "application/json; chartset=utf-8",
                    success: function (data1) {
                        chartData1 = data1.d;
                    },
                    error: function () {
                        alert("Error loading data! Please try again.");
                    }
                }).done(function () {
                    // after complete loading data
                    google.setOnLoadCallback(drawChart1);
                    drawChart1();
                });
            });


            function drawChart1() {
                var data1 = google.visualization.arrayToDataTable(chartData1);

                var options = {
                    title: "Temps Theorique/Temps de Realisation",
                    pointSize: 5
                };

                var barChart = new google.visualization.BarChart(document.getElementById('chart_div1'));
                barChart.draw(data1, options);

            }


            </script>-->

</head>

<body>

  <div class="d-flex" id="wrapper">

    <!-- Sidebar -->
    <div class="bg-light border-right" id="sidebar-wrapper">
      <div class="sidebar-heading"></div>
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
        <button class="btn btn-primary" id="menu-toggle">Masquer le Menu</button>

    

       
      </nav>
        <br />
      <div class="container-fluid">
          <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>

            <a href="Web.aspx" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" ><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
          </div>
          <div class="row">

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">PECAC Application</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">Bienvenue</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-calendar fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Suivie de production en temps réel</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">100%</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Gestion des ressources humaines </div>
                      <div class="row no-gutters align-items-center">
                        <div class="col-auto">
                          <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">100%</div>
                        </div>
                        <div class="col">
                          <div class="progress progress-sm mr-2">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Pending Requests Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Planification des évenments</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">100%</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-comments fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
 <div id="chart_div" style="width:1100px; height:300px; margin-left: 50px; margin-top: 50px;"></div>     
          <div id="chart_div1" style="width:1100px; height:300px; margin-left: 50px; margin-top: 130px;"></div>   
      </div>
        </div>
      </div>
      
    
    <!-- /#page-content-wrapper -->
    <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

     <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/chart-area-demo.js"></script>
  <script src="js/demo/chart-pie-demo.js"></script>
 
  <!-- /#wrapper -->

 

  <!-- Menu Toggle Script -->
  <script>
    $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });
  </script>

</body>

</html>

</asp:Content>
