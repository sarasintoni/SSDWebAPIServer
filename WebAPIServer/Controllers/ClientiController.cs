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
    public class ClientiController : ApiController
    {

        [HttpGet]                // in esecuzione solo con un get dal client
        [ActionName("GetAllClients")]   // nome del metodo esposto nella API
        public string GetAllClients()
        {
            string connString, queryText, factory;
            List<clienti> lstClienti = null;

            connString = ConfigurationManager.ConnectionStrings["SQLiteConn"].ConnectionString;
            Persist P = new Persist();
            queryText = "SELECT id, req, mag FROM clienti";
            factory = "System.Data.SQLite";
            string s = P.readTableViaF(connString, queryText, factory);

            return s;
        }

        [HttpGet] // in esecuzione solo con un get dal client
        [ActionName("GetCustClient")] // nome del metodo esposto
        public string GetCustOrders(int id)
        {
            string connString, queryText, factory;

            connString = ConfigurationManager.ConnectionStrings["SQLiteConn"].ConnectionString;
            Persist P = new Persist();
            queryText = "SELECT id, req, mag FROM clienti WHERE id = " + id;
            factory = "System.Data.SQLite";
            string s = P.readTableViaF(connString, queryText, factory);


            return s;
        }
    }
}