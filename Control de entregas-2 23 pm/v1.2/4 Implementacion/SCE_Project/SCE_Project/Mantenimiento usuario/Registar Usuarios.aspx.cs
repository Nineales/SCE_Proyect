using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace SCE_Project.Mantenimiento_usuario
{
    public partial class Registar_Usuarios : System.Web.UI.Page
    {
        ComandoSqlMU cmu;
        protected void Page_Load(object sender, EventArgs e)
        {
            cmu = new ComandoSqlMU();
            ScriptManager.RegisterStartupScript(this, typeof(Page), "carga", "cargar()", true);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            try
            {
                cmu.conectar();
                cmu.executeQuery("INSERT INTO usuario(IDUsuario, Nombre, pass, Tipo) VALUES(" + txIdUsu.Text + ",'" + txNomUsu.Text + "','NA'," + ddlTipoUsu.SelectedIndex + ")");
               
            }
            catch (MySqlException)
            {
                Label5.Text = "error";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                cmu.conectar();
                cmu.executeQuery("INSERT INTO usuario(IDUsuario, Nombre, pass, Tipo) VALUES(" + txIdUsu.Text + ",'" + txNomUsu.Text + "','NA'," + ddlTipoUsu.SelectedIndex + ")");

            }
            catch (MySqlException)
            {
                Label5.Text = "error";
            }
        }

        protected void btCancelar_Click(object sender, EventArgs e)
        {
            txIdUsu.Text = "";
            txNomUsu.Text = "";
            txContra.Text = "";
            ddlTipoUsu.SelectedIndex = 0;
            ddlTipoUsu.Text = "tipo de usuario";
        }
    }
}