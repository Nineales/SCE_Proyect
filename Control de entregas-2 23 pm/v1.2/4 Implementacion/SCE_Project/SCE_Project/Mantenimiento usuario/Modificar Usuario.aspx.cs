using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
namespace SCE_Project.Mantenimiento_usuario
{
    public partial class Modificar_Usuario : System.Web.UI.Page
    {
        ComandoSqlMU cmu;
        protected void Page_Load(object sender, EventArgs e)
        {
            cmu = new ComandoSqlMU();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cmu.conectar();
            Usuario us = cmu.ConsultaUsuario(txIdUsu.Text);
            txNom.Text = us.nombre;
            txContra.Text = us.pass;
            if (string.Compare(us.tipo, "supervisor") == 0)
            {
                ddlTipoUsu.SelectedIndex = 1;
            }
            else
            {
                ddlTipoUsu.SelectedIndex = 2;
            }
            txIdUsu.Enabled = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            cmu.conectar();
            cmu.executeQuery("UPDATE usuario set Nombre='" + txNom.Text + "',pass='" + txContra.Text + "',Tipo='" + ddlTipoUsu.SelectedIndex + "'  WHERE IDUsuario=" + txIdUsu.Text + "");
            txIdUsu.Enabled = true;
            txIdUsu.Text = "";
            txNom.Text = "";
            txContra.Text = "";
            ddlTipoUsu.SelectedIndex = 0;
            ddlTipoUsu.Text = "Tipo de usuario";

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            txIdUsu.Enabled = true;
            txIdUsu.Text = "";
            txNom.Text = "";
            txContra.Text = "";
            ddlTipoUsu.SelectedIndex = 0;
            ddlTipoUsu.Text = "Tipo de usuario";
        }
    }
}