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
        public ClientiController()
        {
            connString = ConfigurationManager.ConnectionStrings["SQLiteConn"].ConnectionString;
            factory = "System.Data.SQLite";
        }

        public class Client
        {
            public int id;
            public int mag;
            public int req;
        }

        public class Mag
        {
            public int id;
            public int cap;
        }

        public class Cst
        {
            public int mag;
            public int cli;
            public int cost;
        }

        public class Instance
        {
            public string name;
            public int numcustomers;
            public int numfacilities;
            public int[,] cost;
            public int[,] req;
            public int[] cap;
        }

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
            return "Customer inserted"; // oppure dichiararla static
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
            init();
            string res = "foo", s;
            string queryText;
            int i, j, numCostumers, numFacilities;

            Persist P = new Persist();
            //connString = ConfigurationManager.ConnectionStrings["SQLiteConn"].ConnectionString;
            //factory = "System.Data.SQLite";
            queryText = "SELECT id, mag, req FROM clienti";
            s = P.readTableViaF(connString, queryText, factory);
            Client[] client = JsonConvert.DeserializeObject<Client[]>(s);
            Console.WriteLine("Numero clienti = " + client.Length);

            queryText = "SELECT id, cap FROM magazzini";
            s = P.readTableViaF(connString, queryText, factory);
            Mag[] mag = JsonConvert.DeserializeObject<Mag[]>(s);
            Console.WriteLine("Numero mag = " + mag.Length);
            numFacilities = mag.Length;
            numCostumers = client.Length / numFacilities;

            queryText = "SELECT mag, cli, cost FROM costi";
            s = P.readTableViaF(connString, queryText, factory);
            Cst[] cst = JsonConvert.DeserializeObject<Cst[]>(s);
            Console.WriteLine("Numero costi = " + cst.Length);

            int[,] cost = new int[numFacilities, numCostumers];
            for (j = 0; j < cst.Length; j++)
            {
                cost[cst[j].mag - 1, cst[j].cli - 1] = cst[j].cost;
            }

            int[,] req = new int[numFacilities, numCostumers];
            for (j = 0; j < client.Length; j++)
            {
                req[client[j].mag - 1, client[j].id - 1] = client[j].req;
            }

            int[] cap = new int[numFacilities];
            for (j = 0; j < mag.Length; j++)
            {
                cap[mag[j].id - 1] = mag[j].cap;
            }

            Instance I = new Instance();
            I.name = "fromDB";
            I.numcustomers = numCostumers;
            I.numfacilities = numFacilities;
            I.cost = cost;
            I.req = req;
            I.cap = cap;

            res = JsonConvert.SerializeObject(I);


            //P = null;
            return res;
        }
    }
}