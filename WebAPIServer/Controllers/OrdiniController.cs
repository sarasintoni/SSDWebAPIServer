using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebAPIServer.Models;
using System.Web.Http;
using System.Configuration;
using Newtonsoft.Json;

namespace WebAPIServer.Controllers
{
    public class OrdiniController : ApiController
    {

        [HttpGet]                // in esecuzione solo con un get dal client
        [ActionName("GetAllOrders")]   // nome del metodo esposto nella API
        public string GetAllOrders()
        {
            string connString;
            List<ordini> lstOrdini = null;

            /*connString = ConfigurationManager.ConnectionStrings["SQLiteConn"].ConnectionString;
            Persist P = new Persist();
            lstOrdini = P.readTableViaI(connString, true, 0);

            Persist P = null;*/
            return JsonConvert.SerializeObject(lstOrdini);
        }
    }
}