using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Globalization;

namespace SCE_Project.Mantenimienro_Bitacora
{
    public partial class registro : System.Web.UI.Page
    {
        ComandoSQL comm;

        protected void Page_Load(object sender, EventArgs e)
        {
            comm = new ComandoSQL();
            cargar();

        }

        private void cargar()
        {
            comm.Conectar();
            List<string> clist = comm.CargarNombre();
            foreach (string li in clist)
            {
                ddlNom.Items.Add(li);
            }
        }

        protected void BtReg_Click(object sender, EventArgs e)
        {
            int KmFin, KmInic;
            KmFin = Convert.ToInt32(txKmFin.Text);
            KmInic = Convert.ToInt32(txKmInic.Text);
            DateTime HS = Convert.ToDateTime(txHS.Text);
            DateTime HR = Convert.ToDateTime(txHR.Text);
            DateTime HoraLlegada = Convert.ToDateTime(txHoraLlegada.Text);
            DateTime HoraSal = Convert.ToDateTime(txHoraSal.Text);



            if (KmFin < KmInic)
            {
                Response.Write("<script language=javascript>alert('El kilometraje inicial no puede ser mayor que el kilometraje final!')</script>");
            }
            else
             if (HS > HR)
            {
                Response.Write("<script language=javascript>alert('La hora de salida no puede ser menor que la hora de regreso!')</script>");
            }
            else
             if (HoraSal < HoraLlegada)
            {
                Response.Write("<script language=javascript>alert('La hora de salida con el cliente no puede ser menor que la <br> hora de llegada con el cliente!')</script>");
            }
            else
            {
                comm.Conectar();
                comm.queryExecute("insert into bitacoraencabezado (nomUsu, hs, hr, kmInic, kmFin, comRuta, noCam, noCaja, fecha, noRuta, revPap, capCam,  noRem, nomCliente, hLlegadaCli, hSalCli,  tiempoDesc, comCli) values('" + ddlNom.Text + "','" + txHS.Text + "','" + txHR.Text + "','" + txKmInic.Text + "','" + txKmFin.Text + "','" + txComRuta.Text + "','" + txNumCam.Text + "','" + txNumCaja.Text + "','" + txFecha.Text + "','" + txNumRuta.Text + "','" + ddlRev.Text + "','" + txCap.Text + "','" + txNumRem.Text + "','" + txNomCli.Text + "','" + txHoraLlegada.Text + "','" + txHoraSal.Text + "','" + txTD.Text + "', '" + txComCli.Text + "')");
                Response.Write("<script language=javascript>alert('Registro exitoso!')</script>");
                ddlNom.SelectedIndex = 0;
                txHS.Text = " ";
                txHR.Text = " ";
                txKmInic.Text = " ";
                txKmFin.Text = " ";
                txComRuta.Text = " ";
                txNumCam.Text = " ";
                txNumCaja.Text = " ";
                txFecha.Text = " ";
                txNumRuta.Text = " ";
                ddlRev.Text = " ";
                txCap.Text = " ";
                txNumRem.Text = " ";
                txNomCli.Text = " ";
                txHoraLlegada.Text = " ";
                txHoraSal.Text = " ";
                txTD.Text = " ";
                txComCli.Text = " ";
            }
        }
    }
}