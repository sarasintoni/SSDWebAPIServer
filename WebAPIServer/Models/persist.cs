using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using System.Data.SQLite;
using System.Data.Common;
using System.Configuration;

namespace WebAPIServer.Models
{
    class Persist
    {
        public delegate void viewEventHandler(object sender, string textToWrite); 
        public event viewEventHandler FlushText; 
        public void doSomathing()
        {
            for (int i = 0; i < 10; i++)
            {
                FlushText(this, $"i={i}");
            }
        }

        /*public void readViaFactory(string connString, string factory, string idCliente)
        {
            DbProviderFactory dbFactory = DbProviderFactories.GetFactory(factory);
            using (DbConnection conn = dbFactory.CreateConnection()) {
                try
                { 
                    conn.ConnectionString = connString;
                    conn.Open();
                    DbDataAdapter dbAdapter = dbFactory.CreateDataAdapter();
                    DbCommand dbCommand = conn.CreateCommand();

                    string queryText = "SELECT id, codice, descr from ordini where idcliente =  @id";
                    dbCommand.CommandText = queryText;

                    IDbDataParameter param = dbCommand.CreateParameter();
                    param.DbType = DbType.Int32;
                    param.ParameterName = "@id";
                    param.Value = Int32.Parse(idCliente);
                    dbCommand.Parameters.Add(param);
                    using (IDataReader reader = dbCommand.ExecuteReader())
                    {
                        while (reader.Read())
                            FlushText(this, "ID = " + reader["id"] + ", CODICE = " + reader["codice"] + ", DESCRIZIONE = " + reader["descr"]);
                    }

                } catch (Exception ex) { 
                    FlushText(this,"Error: " + ex.Message);
                } finally { 
                    if (conn.State == ConnectionState.Open) conn.Close();
                }
            }
        }

        
        public void readView(string sqLiteConnString, bool isSQLite, string idCliente)
        {
            IDbConnection conn = null;
            try
            {
                if (isSQLite)
                    conn = new SQLiteConnection(sqLiteConnString);
                else
                {
                    conn = new SqlConnection(sqLiteConnString);
                }
                
                conn.Open();
                IDbCommand com = conn.CreateCommand();
                string queryText = "SELECT id, codice, descr from ordini where idcliente =  @id";
                com.CommandText = queryText;

                IDbDataParameter param = com.CreateParameter();
                param.DbType = DbType.Int32;
                param.ParameterName = "@id";
                param.Value = Int32.Parse(idCliente);
                com.Parameters.Add(param);
                using (IDataReader reader = com.ExecuteReader())
                {
                    while (reader.Read())
                        FlushText(this, "ID = " + reader["id"] + ", CODICE = " + reader["codice"] + ", DESCRIZIONE = " + reader["descr"]);
                }

                conn.Close();
            } catch (Exception ex)
            {
                FlushText(this, ex.Message);
            } finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
        }

        public List<ordini> readViaEF(int idCliente)
        {
            string queryText = "SELECT * from ordini where idcliente = " + idCliente;
            List<ordini> ordList = new List<ordini>();

            using (var context = new testDbEntities())
            {
                ordList = context.ordini.SqlQuery(queryText).ToList();
            }

            return ordList;

        }

        public void previsione(string connString, string factory, string idserie)
        {
            DbProviderFactory dbFactory = DbProviderFactories.GetFactory(factory);
            using (DbConnection conn = dbFactory.CreateConnection())
            {
                try
                {
                    conn.ConnectionString = connString;
                    conn.Open();
                    DbDataAdapter dbAdapter = dbFactory.CreateDataAdapter();
                    DbCommand dbCommand = conn.CreateCommand();

                    //query parametrizzata -> così l'utente non può fare sql injection
                    string queryText = "SELECT idserie, periodo, val from histordini where idserie =  @id";
                    dbCommand.CommandText = queryText;

                    IDbDataParameter param = dbCommand.CreateParameter();
                    param.DbType = DbType.Int32;
                    param.ParameterName = "@id";
                    param.Value = Int32.Parse(idserie);
                    dbCommand.Parameters.Add(param);
                    using (IDataReader reader = dbCommand.ExecuteReader())
                    {
                        while (reader.Read())
                            FlushText(this, "ID = " + reader["idserie"] + ", PERIODO = " + reader["periodo"] + ", VAL = " + reader["val"]);
                    }

                }
                catch (Exception ex)
                {
                    FlushText(this, "Error: " + ex.Message);
                }
                finally
                {
                    if (conn.State == ConnectionState.Open) conn.Close();
                }
            }
        }*/

        public string readTableViaF(string connString, string queryText, string factory)
        {
            int i, numcol;
            string res = "[";
            List<string> columns = new List<string>();
            DbProviderFactory dbFactory = null;

            dbFactory = DbProviderFactories.GetFactory(factory);

            using (DbConnection conn = dbFactory.CreateConnection())
            {
                try
                {
                    conn.ConnectionString = connString;
                    conn.Open();
                    IDbCommand com = conn.CreateCommand();
                    com.CommandText = queryText;
                    IDataReader reader = com.ExecuteReader();

                    numcol = reader.FieldCount;
                    for (i = 0; i < numcol; i++)
                        columns.Add(reader.GetName(i));

                    while (reader.Read())
                    {
                        res += "{";
                        for (i = 0; i < numcol; i++)
                        {
                            res += "\"" + columns[i] + "\":\"" + reader[i] + "\",";
                        }
                        res += "},";
                        res = res.Replace(",}", "}");
                    }
                    reader.Close();
                    conn.Close();
                }
                catch (Exception ex)
                {
                    FlushText(this, ex.Message);
                }
                finally
                {
                    if (conn.State == ConnectionState.Open)
                        conn.Close();
                }
            }
            return (res + "]").Replace(",]", "]");
        }
    }
}
