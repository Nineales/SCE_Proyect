using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace SCE_Project
{
    public class Conexion
    {
        MySqlConnection csb = null;
        public void abrir()
        {
            csb = new MySqlConnection();
            string str = "server=localhost; Database=clandsberg; Uid=root; pass=;";
            csb.ConnectionString = str;
            csb.Open();
        }
        public void cerrar()
        {
            csb.Close();
        }
        public MySqlConnection getConexion()
        {
            return csb;
        }

    }
}