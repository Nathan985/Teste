using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Teste.DAL_Teste
{
    public class clsDados
    {
        public static SqlConnection OpenConnection(){
            try
            {
                SqlConnection conn = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Teste;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
                conn.Open();
                return conn;
            }
            catch
            {
                throw new Exception("Connection Lost");
            }
        }

        public static void CloseConnection(SqlConnection conn){
            try
            {
                conn.Close();
            }
            catch
            {
                throw new Exception("Error closing connection");
            }
        }
    }
}