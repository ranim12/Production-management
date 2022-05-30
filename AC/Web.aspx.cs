using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AC
{
    public partial class Web : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ReportData();
            }
        }
        private void ReportData()
        {
            List<Gestion_OF> myof = new List<Gestion_OF>();
            List<Operatrice_tbl> myop = new List<Operatrice_tbl>();
            using (PECACEntities1 dc = new PECACEntities1())
            {
                myof = dc.Gestion_OF.ToList();
                myop = dc.Operatrice_tbl.ToList();
            }
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportDataSource d1 = new ReportDataSource("OF", myof);
            ReportDataSource d2 = new ReportDataSource("Operatrices", myop);
            ReportViewer1.LocalReport.DataSources.Add(d1);
            ReportViewer1.LocalReport.DataSources.Add(d2);
            ReportViewer1.LocalReport.Refresh();


        }
    }
}