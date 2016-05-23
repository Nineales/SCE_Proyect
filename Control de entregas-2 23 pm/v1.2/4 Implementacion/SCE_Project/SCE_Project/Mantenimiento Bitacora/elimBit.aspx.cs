using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using SCE_Project.Mantenimienro_Bitacora;

namespace SCE_Project.Mantenimienro_Bitacora
{
    public partial class elimBit : System.Web.UI.Page
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
                ddlLista.Items.Add(li);
            }
        }

        private List<mostrarBit3> cargarBit()
        {
            comm.Conectar();
            List<mostrarBit3> list = comm.CargarConsulta(txFechaInic.Text, txFechaFin.Text);
            return list;
        }
        private List<mostrarBit3> cargarBitEsp()
        {
            comm.Conectar();
            List<mostrarBit3> lista = comm.CargarConsultaEspecifica(txFechaInic.Text, txFechaFin.Text, ddlLista.Text);
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
                if (ddlLista.SelectedIndex == 0)
            {
                this.gdvBit.DataSource = cargarBit();
                gdvBit.DataBind();
                gdvBit.Visible = true;
                cargar();
                //Lista.Items.Clear();
                //cargar();
            }
            else
                this.gdvBit.DataSource = cargarBitEsp();
            gdvBit.DataBind();
            gdvBit.Visible = true;
            cargar();
        }

        GridViewRow row;
        protected void gdv1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            row = gdvBit.SelectedRow;
            etNom2.Text = row.Cells[0].Text;
        }

        protected void btEliminar_Click(object sender, EventArgs e)
        {
            comm.Conectar();
            comm.queryExecute("DELETE FROM bitacoraencabezado WHERE idBitacoraid=" + etNom2.Text + " ");
            Response.Write("<script language=javascript>alert('La bitácora ha sido eliminada correctamente!')</script>");
        }
    }
}