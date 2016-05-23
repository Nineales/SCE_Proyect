using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace SCE_Project.Mantenimienro_Bitacora
{
    public class conexion
    {


        MySqlConnection conector = null;

        public void abrir()
        {
            conector = new MySqlConnection();
            string str = "server=localhost; database=clandsberg; Uid=root; pass=;";
            conector.ConnectionString = str;
            conector.Open();
        }
        public void cerrar()
        {
            conector.Close();
        }
        public MySqlConnection getConexion()
        {
            return conector;
        }



    }


}