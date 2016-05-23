using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Web.UI.DataVisualization.Charting;
using System.Web.Security;

namespace SCE_Project.Consulta_reportes
{
    public partial class Consultar_reportes : System.Web.UI.Page
    {
        string con = "server=localhost; Database=clandsberg; Uid=root; pass=;";

        public object DataAccess { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            Chart1.Visible = false;
            Chart2.Visible = false;
            Chart3.Visible = false;
            Chart4.Visible = false;

        }

        protected void btest_Click(object sender, EventArgs e)
        {

            MySqlConnection conexion = new MySqlConnection(con);
            conexion.Open();
            Boolean band = false;
            MySqlCommand query = conexion.CreateCommand();
            query.CommandText = "SELECT * FROM bitacoraencabezado";
            MySqlDataReader red = query.ExecuteReader();
            Boolean band2 = false;
            Boolean band3 = false;
            Boolean band4 = false;




            while (red.Read())
            {
                if (ddllista.SelectedIndex == 1)
                {
                    if (string.Compare(txfecha1.Text, red["fecha"].ToString()) != 0 && string.Compare(txfecha2.Text, red["fecha"].ToString()) != 0)
                        band = true;

                }
                else
                {
                    if (ddllista.SelectedIndex == 2)
                    {
                        if (string.Compare(txfecha1.Text, red["fecha"].ToString()) != 0 && string.Compare(txfecha2.Text, red["fecha"].ToString()) != 0)
                            band2 = true;
                    }
                    else
                    {
                        if (ddllista.SelectedIndex == 3)
                        {
                            if (string.Compare(txfecha1.Text, red["fecha"].ToString()) != 0 && string.Compare(txfecha2.Text, red["fecha"].ToString()) != 0)
                                band3 = true;
                        }
                        else
                        {
                            if (ddllista.SelectedIndex == 4)
                            {
                                if (string.Compare(txfecha1.Text, red["fecha"].ToString()) != 0 && string.Compare(txfecha2.Text, red["fecha"].ToString()) != 0)
                                    band4 = true;
                            }
                            else
                            {
                                if (ddllista.SelectedIndex == 0)
                                {
                                    Response.Write("<script language=javascript>alert('No has seleccionado ninguna opción de consulta')</script>");
                                    break;
                                }
                            }
                        }
                    }

                }

            }
            if (band)
            {
                MySqlConnection conex = new MySqlConnection(con);
                conex.Open();
                MySqlCommand quer = conex.CreateCommand();
                quer.CommandText = "SELECT hs,hr,tiemporuta, fecha FROM bitacoraencabezado where fecha BETWEEN '" + txfecha1.Text + "' and '" + txfecha2.Text + "'";
                MySqlDataReader re = quer.ExecuteReader();
                Chart1.Visible = true;
                string aux1, aux2;
                int sum = 0, cont = 0;
                double totalh;
                while (re.Read())
                {
                    aux1 = re["hs"].ToString();
                    aux2 = re["hr"].ToString();
                    String[] shs = aux1.Split(':');
                    String[] shr = aux2.Split(':');
                    int dmin = (Convert.ToInt32(shr[1]) - Convert.ToInt32(shs[1]));
                    if (dmin < 0)
                    {
                        dmin = dmin + 60;
                    }
                    int dhor = ((Convert.ToInt32(shr[0]) - Convert.ToInt32(shs[0])) * 60);
                    int dh = dmin + dhor;
                    sum = sum + dh;
                    cont = cont + 1;

                    Chart1.DataSource = re;
                    Chart1.Series["X"].XValueMember = "";
                    Chart1.Series["Y"].YValueMembers = "tiemporuta";
                    Chart1.DataBind();

                }
                conex.Close();
                totalh = sum / cont;
            }

            if (band2)
            {

                MySqlConnection conex = new MySqlConnection(con);
                conex.Open();
                MySqlCommand quer = conex.CreateCommand();
                quer.CommandText = "SELECT kmInic,KmFin,kmrec FROM bitacoraencabezado where fecha BETWEEN '" + txfecha1.Text + "' and '" + txfecha2.Text + "'";
                MySqlDataReader re = quer.ExecuteReader();
                Chart2.Visible = true;
                List<int> por = new List<int>();
                while (re.Read())
                {
                    Double kmi = Convert.ToDouble(re["kmInic"].ToString());
                    Double kmf = Convert.ToDouble(re["kmFin"].ToString());
                    //double kmin = double.Parse(kmi);
                    //double kmfin = double.Parse(kmf);
                    por.Add((Convert.ToInt32(re["kmrec"].ToString())));
                    Double tot = kmf - kmi;
                    String total = Convert.ToString(tot);
                    Chart2.DataSource = re;
                    Chart2.Series["X"].XValueMember = "";
                    Chart2.Series["Y"].YValueMembers = "kmrec";
                    Chart2.DataBind();
                }

                conex.Close();
                int x = por.Count;
                int sum = 0, totalp;
                foreach (int li in por)
                {
                    sum = sum + li;
                }
                totalp = sum / x;
            }
            else
            {

            }

            if (band3)
            {
                MySqlConnection conex = new MySqlConnection(con);
                conex.Open();
                MySqlCommand quer = conex.CreateCommand();
                quer.CommandText = "SELECT noRem from bitacoraencabezado where fecha BETWEEN '" + txfecha1.Text + "' and '" + txfecha2.Text + "'";
                MySqlDataReader re = quer.ExecuteReader();
                Chart3.Visible = true;
                while (re.Read())
                {
                    Chart3.DataSource = re;
                    Chart3.Series["X"].XValueMember = "";
                    Chart3.Series["Y"].YValueMembers = "noRem";
                    Chart3.DataBind();
                }
                quer.CommandText = "SELECT count(noRem) from bitacoraencabezado ";
            }
            else
            {

            }

            if (band4)
            {

            }
            else
            {

            }
            conexion.Close();
        }

        protected void lista_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}