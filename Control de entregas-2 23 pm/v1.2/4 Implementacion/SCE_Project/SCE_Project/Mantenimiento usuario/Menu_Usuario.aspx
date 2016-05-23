<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu_Usuario.aspx.cs" Inherits="SCE_Project.Mantenimiento_usuario.Menu_Usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menu usuario</title>
    <script  type="text/javascript">
        function mostrar(url) {
            document.getElementById("usar").src = url;

        }
    </script>

    <link rel="stylesheet" type="text/css" href="../Styles/Encabezado.css" />
</head>
<body id="bodymenu">
 
    <form id="form1" runat="server">
            <div id="headermenu">
                <img id="ImgLogo" src="~/Imagenes/landsberglogo3.png" runat="server" width="300" height="230"/> 
            </div>

        <div id="MenuImg">    
        <ul>
         <li><a href="Menu_Usuario.aspx"><img src="~/Imagenes/mant1.png"  ID="ibmanb" runat="server" /></a><asp:Label ID="etMantUs" runat="server" Text="Mant. a<br>usuarios"></asp:Label></li>
         <li><a href="../Mantenimiento bitacora/MantBit.aspx"><img id="ibmaus" src="~/Imagenes/mantusuario.jpg" runat="server" /></a><asp:Label ID="etMantB" runat="server" Text="Mant. a <br>bitácora"></asp:Label></li>
         <li><a href="../Consulta reportes/Consultar_reportes.aspx"><img runat="server" id="ibest" src="~/Imagenes/estadisticas.jpg" /></a><asp:Label ID="etGenRep" runat="server" Text="Consultar <br>Reportes"></asp:Label></li>
         <li><a href="#"><img id="ibcs" src="logoff.jpg" runat="server" /></a><asp:Label ID="etSalir" runat="server" Text="Cerrar <br> sesión"></asp:Label></li>
        </ul>
    </div>

    <div id="MenuMantBit">
        <!--<h2>Mantenimiento usuarios</h2>--> 
        <ul> 
        <li><a id="Button1"   onclick="mostrar('Registar Usuarios.aspx')">Registar</a></li> 
        <li><a id="Button3"  onclick="mostrar('Modificar Usuario.aspx')" >Modificar</a></li>
        <li><a id="Button4"  onclick="mostrar('Consultar Usuarios.aspx')">Consultar</a></li>
        <li><a id="Button2"  onclick="mostrar('Eliminar Usuario.aspx')">Eliminar</a></li>
        </ul>
            </div>
  <div>
      <iframe id="usar"></iframe>
  </div> 
    </form>
     
        </div>
</body>
</html>
