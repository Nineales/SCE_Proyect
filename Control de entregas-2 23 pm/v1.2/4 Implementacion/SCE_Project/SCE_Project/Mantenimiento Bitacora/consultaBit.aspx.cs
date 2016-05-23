using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace SCE_Project.Mantenimienro_Bitacora
{
    public partial class consultaBit : System.Web.UI.Page
    {
        ComandoSQL comm;
        protected void Page_Load(object sender, EventArgs e)
        {
            comm = new ComandoSQL();
            cargar();
            txFechaCon.Visible = false;
            txCapCon.Visible = false;
            //txRevPap.Visible = false;
            txNumRuta.Visible = false;
            txNumCam.Visible = false;
            txHS.Visible = false;
            txNumCaja.Visible = false;
            txHR.Visible = false;
            txKmInic.Visible = false;
            txKmFin.Visible = false;
            txComRuta.Visible = false;
            txNumRem.Visible = false;
            txNomCli.Visible = false;
            txHoraLlegada.Visible = false;
            txHoraSal.Visible = false;
            txTD.Visible = false;
            txComCli.Visible = false;
            btRegresar.Visible = false;

            etFechaCon.Visible = false;
            etCapCon.Visible = false;
            //etRevPap.Visible = false;
            etNumRuta.Visible = false;
            etNumCam.Visible = false;
            etHS.Visible = false;
            etNumCaja.Visible = false;
            etHR.Visible = false;
            etKmInic.Visible = false;
            etKmFin.Visible = false;
            etComRuta.Visible = false;
            etNumRem.Visible = false;
            etNomCli.Visible = false;
            etHoraLlegada.Visible = false;
            etHoraSal.Visible = false;
            etTD.Visible = false;
            etComCli.Visible = false;

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

        private List<mostrarBit3> cargarBit()
        {
            comm.Conectar();

            List<mostrarBit3> lista = comm.CargarConsulta(txFechaInic.Text, txFechaFin.Text);

            return lista;
        }
        private List<mostrarBit3> cargarBitEsp()
        {
            comm.Conectar();
            List<mostrarBit3> lista = comm.CargarConsultaEspecifica(txFechaInic.Text, txFechaFin.Text, ddlNom.Text);
            return lista;
        }



        protected void btBuscar_Click(object sender, EventArgs e)
        {
            DateTime fechaFin = Convert.ToDateTime(txFechaInic.Text);
            DateTime fechaInic = Convert.ToDateTime(txFechaFin.Text);

            if (fechaFin > fechaInic)
            {
                Response.Write("<script language=javascript>alert('La fecha inicial no puede ser mayor que la fecha final!')</script>");

            }
            else
            if (ddlNom.SelectedIndex == 0)
            {
                this.gdvBit.DataSource = cargarBit();
                gdvBit.DataBind();
                gdvBit.Visible = true;
                //Lista.Items.Clear();
                //cargar();
            }
            else
            {
                this.gdvBit.DataSource = cargarBitEsp();
                gdvBit.DataBind();
                gdvBit.Visible = true;
                // Lista.Items.Clear();
                // cargar();
            }
        }


        GridViewRow row;
        protected void gdv1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            row = gdvBit.SelectedRow;
            etNom2.Text = row.Cells[0].Text;



        }

        protected void btConsultar_Click(object sender, EventArgs e)
        {

            txFechaCon.Enabled = false;
            txCapCon.Enabled = false;
            //txRevPap.Enabled = false;
            txNumRuta.Enabled = false;
            txNumCam.Enabled = false;
            txHS.Enabled = false;
            txNumCaja.Enabled = false;
            txHR.Enabled = false;
            txKmInic.Enabled = false;
            txKmFin.Enabled = false;
            txComRuta.Enabled = false;
            txNumRem.Enabled = false;
            txNomCli.Enabled = false;
            txHoraLlegada.Enabled = false;
            txHoraSal.Enabled = false;
            txTD.Enabled = false;
            txComCli.Enabled = false;

            txFechaCon.Visible = true;
            txCapCon.Visible = true;
            //txRevPap.Visible = true;
            txNumRuta.Visible = true;
            txNumCam.Visible = true;
            txHS.Visible = true;
            txNumCaja.Visible = true;
            txHR.Visible = true;
            txKmInic.Visible = true;
            txKmFin.Visible = true;
            txComRuta.Visible = true;
            txNumRem.Visible = true;
            txNomCli.Visible = true;
            txHoraLlegada.Visible = true;
            txHoraSal.Visible = true;
            txTD.Visible = true;
            txComCli.Visible = true;
            btRegresar.Visible = true;

            etFechaCon.Visible = true;
            etCapCon.Visible = true;
            //etRevPap.Visible = true;
            etNumRuta.Visible = true;
            etNumCam.Visible = true;
            etHS.Visible = true;
            etNumCaja.Visible = true;
            etHR.Visible = true;
            etKmInic.Visible = true;
            etKmFin.Visible = true;
            etComRuta.Visible = true;
            etNumRem.Visible = true;
            etNomCli.Visible = true;
            etHoraLlegada.Visible = true;
            etHoraSal.Visible = true;
            etTD.Visible = true;
            etComCli.Visible = true;


            comm.Conectar();
            encabezadoBit bit = comm.obtenerBitacora(etNom2.Text);
            txFechaCon.Text = bit.fecha;
            txCapCon.Text = bit.capCam;
            txKmInic.Text = bit.kmInic;
            txKmFin.Text = bit.kmFin;
            txNumCaja.Text = bit.noCaja;
            txHR.Text = bit.hr;
            txHS.Text = bit.hs;
            txComRuta.Text = bit.comRuta;
            txNumRem.Text = bit.noRem;
            txNomCli.Text = bit.nomCliente;
            txHoraLlegada.Text = bit.hLlegadaCli;
            txHoraSal.Text = bit.hSalCli;
            txComCli.Text = bit.comClie;
            txTD.Text = bit.tiempoDesc;
            txNumRuta.Text = bit.noRuta;
            txNumCam.Text = bit.noCam;
        }



        /* protected void Button1_Click(object sender, EventArgs e)
         {
             for(int i=0; i < gdv1.Rows.Count; i++)
             {
                 CheckBox ch = new CheckBox gdv1.Rows[i].FindControl("chbSel");
                 Label lb = (Label) gdv1.Rows[i].FindControl("label1" + "label2" + "label3" + "label4");
                 if (ch.Checked == true)
                 {
                     ListBox1.Items.Add(lb.Text.ToString());
                 }
             }
         }*/
    }
    
}