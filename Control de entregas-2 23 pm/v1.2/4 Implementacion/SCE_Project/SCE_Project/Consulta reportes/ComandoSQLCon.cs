using SCE_Project.Mantenimienro_Bitacora;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace SCE_Project.Consulta_reportes
{
    public class ComandoSQLCon
    {
        Conexion conexion;
        static MySqlDataReader re;
        public void conectar()
        {
            conexion = new Conexion();
        }
        public MySqlDataReader consulta()
        {
            conexion.abrir();
            MySqlCommand quer = conexion.getConexion().CreateCommand();
            quer.CommandText = "SELECT * FROM bitacoraencabezado";
            re = quer.ExecuteReader();
            conexion.cerrar();
            return re;
        }
        public MySqlDataReader consulta1(string fecha1, string fecha2)
        {
            conexion.abrir();
            MySqlCommand quer = conexion.getConexion().CreateCommand();
            quer.CommandText = "SELECT hs,hr,tiemporuta, fecha FROM bitacoraencabezado where fecha BETWEEN '" + fecha1 + "' and '" + fecha2 + "'";
            re = quer.ExecuteReader();
            return re;
        }
        public MySqlDataReader consulta2(string fecha1, string fecha2)
        {
            conexion.abrir();
            MySqlCommand quer = conexion.getConexion().CreateCommand();
            quer.CommandText = "SELECT kmInic,KmFin,kmrec FROM bitacoraencabezado where fecha BETWEEN '" + fecha1 + "' and '" + fecha2 + "'";
            re = quer.ExecuteReader();
            return re;
        }
        public MySqlDataReader consulta3(string fecha1, string fecha2)
        {
            conexion.abrir();
            MySqlCommand quer = conexion.getConexion().CreateCommand();
            quer.CommandText = "SELECT noRem from bitacoraencabezado where fecha BETWEEN '" + fecha1 + "' and '" + fecha2 + "'";
            re = quer.ExecuteReader();           
            return re;
        }
        public void cerrar()
        {
            conexion.cerrar();
        }
    }
}