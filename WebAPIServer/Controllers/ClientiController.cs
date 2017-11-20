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

        private string connString, factory;

        private void init()
        {
            connString = ConfigurationManager.ConnectionStrings["SQLiteConn"].ConnectionString;
            factory = "System.Data.SQLite";
        }

        [HttpGet]                // in esecuzione solo con un get dal client
        [ActionName("GetAllClients")]   // nome del metodo esposto nella API
        public string GetAllClients()
        {
            string queryText;
            init();
            Persist P = new Persist();
            queryText = "SELECT id, req, mag FROM clienti";
            string s = P.readTableViaF(connString, queryText, factory);

            return s;
        }

        [HttpGet] // in esecuzione solo con un get dal client
        [ActionName("GetCustClient")] // nome del metodo esposto
        public string GetCustOrders(int id)
        {
            string queryText;
            init();
            Persist P = new Persist();
            queryText = "SELECT id, req, mag FROM clienti WHERE id = " + id;
            string s = P.readTableViaF(connString, queryText, factory);


            return s;
        }

        [HttpPost]
        [ActionName("insertCustomer")]
        public string insertCustomer(clienti obj)
        {
            init();
            Persist P = new Persist();

            string queryString = "insert into clienti (id, req, mag) values(";
            queryString += obj.id + "," + obj.req + ",'" + obj.mag + "')";
            int res = P.execNonQueryViaF(connString, queryString, factory);
            return "Customer inserted with " + res + " rows"; // oppure dichiararla static
        }

        [HttpPut]
        [ActionName("updateCustomer")]
        public string updateCustomer(clienti obj)
        {
            init();
            Persist P = new Persist();

            string queryString = "update clienti set req = '" + obj.req + "' where id=" + obj.id;
            int nr = P.execNonQueryViaF(connString, queryString, factory);
            return "Customer updated in " + nr + " rows";
        }

        [HttpDelete]
        [ActionName("deleteCustomer")]
        public string deleteCustomer(int id)
        {

            init();
            Persist P = new Persist();

            string queryString = "delete from clienti where id=" + id;
            int nr = P.execNonQueryViaF(connString, queryString, factory);
            return "Customer deleted in " + nr + " rows";
        }

        public string getGAPInstance(int id)
        {
            string res = "non trovato";

            return res;
        }
    }
}