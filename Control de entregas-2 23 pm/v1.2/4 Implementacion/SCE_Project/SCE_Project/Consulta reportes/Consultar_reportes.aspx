<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consultar_reportes.aspx.cs" Inherits="SCE_Project.Consulta_reportes.Consultar_reportes" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="../Styles/StyleSheet.css" />
</head>
<body id="bodycr">
        <header id="headermenu"><h2>Sistema de Control de Entregas </h2></header>
    <form id="form1" runat="server">
    <nav id="navmenu">
           <ul>
        <a href="../Mantenimiento usuario/Menu_Usuario.aspx"><img id="imgmanb" src="../Imagenes/mant1.png"</a>
        <a href="../Mantenimiento Bitacora/MantBit.aspx"><img id="imgmaus" src="../Imagenes/mantusuario.jpg" /></a>
         <a href="Consultar_reportes.aspx"><img id="imgest" src="../Imagenes/estadisticas.jpg" /></a>
        <a href="../Menu_principal.aspx"><img id="imgmenu" src="../Imagenes/inicio.png" /></a>

        </ul>
        <p class="mu" >Mantenimiento <br /> a usuarios </p>
        <p class="mb" >Mantenimiento <br /> a bit&aacute;cora</p>
        <p class="es">Consultar<br /> reportes</p>
        <p class="men">Men&uacute;<br />Principal</p>
       
    </nav>
    <section id="sectioncr">
        <h2>Consultar Reportes</h2>
        <asp:DropDownList ID="ddllista" runat="server" AutoPostBack="true" OnSelectedIndexChanged="lista_SelectedIndexChanged">
            <asp:ListItem  Value="0">Selecciona una opción</asp:ListItem>
            <asp:ListItem  Value="1">Tiempo en ruta</asp:ListItem>
            <asp:ListItem Value="2">Km recorrido</asp:ListItem>
            <asp:ListItem Value="3">Número de órdenes</asp:ListItem>
            <asp:ListItem  Value="4">Estadísticas generales</asp:ListItem>
        </asp:DropDownList>

        <div id="fecha">
            <asp:TextBox ID="txfecha1" runat="server" TextMode="Date"></asp:TextBox>
        <asp:Label ID="etfecha1" runat="server" Text="Fecha inicial:"></asp:Label>
            <asp:TextBox ID="txfecha2" runat="server" TextMode="Date"></asp:TextBox>
        <asp:Label ID="etfecha2" runat="server" Text="Fecha final:"></asp:Label>

            <asp:Button ID="btest" runat="server" Text="Buscar" OnClick="btest_Click" /> 

        </div>

        <div id="resultados">

            <asp:Chart ID="Chart1" runat="server" >
            <Series>
                <asp:Series Name="X" ChartType="Column">
                </asp:Series>
                <asp:Series Name="Y" ChartType="Column">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                    <Area3DStyle Enable3D="true" />
                    <AxisX Title="KM Recorrido" />
                     <AxisY Title="Kilometros" />
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>

            <asp:Chart ID="Chart2" runat="server" >
            <Series>
                <asp:Series Name="X" ChartType="Column">
                </asp:Series>
                <asp:Series Name="Y" ChartType="Column">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                    <Area3DStyle Enable3D=true />
                    <AxisX Title="KM Recorrido" />
                     <AxisY Title="Kilometros" />
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>

        <asp:Chart ID="Chart3" runat="server" >
            <Series>
                <asp:Series Name="X" ChartType="Column">
                </asp:Series>
                <asp:Series Name="Y" ChartType="Column">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                    <Area3DStyle Enable3D="true" />
                    <AxisX Title="KM Recorrido" />
                     <AxisY Title="Kilometros" />
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>

        <asp:Chart ID="Chart4" runat="server" >
            <Series>
                <asp:Series Name="X" ChartType="Column">
                </asp:Series>
                <asp:Series Name="Y" ChartType="Column">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                    <Area3DStyle Enable3D="true" />
                    <AxisX Title="KM Recorrido" />
                     <AxisY Title="Kilometros" />
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>

        
&nbsp;</div>
        
         <a href="Consultar_reportes.aspx">

    </section>   
    </form>
</body>
</html>
