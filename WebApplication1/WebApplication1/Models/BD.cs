using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace WebApplication1.Models
{
    public class BD
    {
        private static SqlConnection Conectar()
        {
            string strConn = "Server=.;Database =TP PAGINA;Trusted_Connection=True;";
            SqlConnection a = new SqlConnection(strConn);
            a.Open();
            return a;
        }
        private static void Desconectar(SqlConnection conn)
        {
            conn.Close();
        }
    }
}