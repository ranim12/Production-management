
using AC;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static object[] GetChartData()
        {
            List<Gestion_OF> data = new List<Gestion_OF>();
            //Here MyDatabaseEntities  is our dbContext
            using (PECACEntities2 dc = new PECACEntities2())
            {
                data = dc.Gestion_OF.ToList();
            }

            var chartData = new object[data.Count + 1];
            chartData[0] = new object[]{
                "Article",
                "Quantite Realise",
                    "Quantite de Lancement"
                    
                };  
            int j = 0;
            foreach (var i in data)
            {
                j++;
                chartData[j] = new object[] {i.Article.ToString(), i.Qanututé_Realise, i.Quantite_De_Lancement };
            }

            return chartData;
        }


        public static object[] GetChartData1()
        {
            List<Gestion_OF> data = new List<Gestion_OF>();
            //Here MyDatabaseEntities  is our dbContext
            using (PECACEntities2 dc = new PECACEntities2())
            {
                data = dc.Gestion_OF.ToList();
            }

            var chartData = new object[data.Count + 1];
            chartData[0] = new object[]{
                "Article",
                "Temps Theorique",
                    "Temps Realise"

                };
            int j = 0;
            foreach (var i in data)
            {
                j++;
                chartData[j] = new object[] { i.Article.ToString(), i.Temps_Theorique, i.Temps_Realise };
            }

            return chartData;
        }



    }
}
