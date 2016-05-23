<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultaBit.aspx.cs" Inherits="SCE_Project.Mantenimienro_Bitacora.consultaBit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="../Scripts/funcion.js"></script>
    <link rel="stylesheet" href="../Styles/consultaBit.css" type="text/css" />
</head>
<body>
     <form id="form1" runat="server">
    <div id="principal">
    <div id="botones" >
        <asp:Label ID="etNom" runat="server" Text="Nombre chofer:"></asp:Label>
        <asp:DropDownList ID="ddlNom" runat="server">
            <asp:ListItem Value="0">Todos los choferes</asp:ListItem>

        </asp:DropDownList>
        <asp:Label ID="etFechaInic" runat="server" Text="Fecha inicial"></asp:Label>
        <asp:TextBox ID="txFechaInic" type="date" required="required"  runat="server"></asp:TextBox>
        <asp:Label ID="etFechaFin" runat="server" Text="Fecha final"></asp:Label>
        <asp:TextBox ID="txFechaFin" type="date" required="required" runat="server"></asp:TextBox>
        <asp:Button ID="btBuscar" runat="server" Text="Buscar" OnClick="btBuscar_Click" />
        </div>

        <div id="GridView">
            <asp:Panel ID="Panel1" runat="server">
             <asp:GridView ID="gdvBit" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="gdv1_SelectedIndexChanged1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                 <AlternatingRowStyle BackColor="White" />
                 <Columns>
                     <asp:BoundField DataField="idBitacoraid" HeaderText="ID Bitacora" SortExpression="idBitacoraid" />
                     <asp:BoundField DataField="nomUsu" HeaderText="Nombre" SortExpression="nomUsu" />
                     <asp:BoundField DataField="fecha" HeaderText="Fecha" SortExpression="fecha" />
                     <asp:BoundField DataField="noRuta" HeaderText="Numero de ruta" SortExpression="noRuta" />
                     <asp:BoundField DataField="noCam" HeaderText="Numero de camion" SortExpression="noCam" />
                     <asp:CommandField ShowSelectButton="True" />
                 </Columns>
                 <FooterStyle BackColor="#CCCC99" />
                 <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                 <RowStyle BackColor="#F7F7DE" />
                 <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#FBFBF2" />
                 <SortedAscendingHeaderStyle BackColor="#848384" />
                 <SortedDescendingCellStyle BackColor="#EAEAD3" />
                 <SortedDescendingHeaderStyle BackColor="#575357" />
             </asp:GridView>
         </asp:Panel>
            </div>
        <asp:Button ID="btConsultar" runat="server" OnClick="btConsultar_Click" Text="Consultar" />
   
   <div id="form">
        <asp:Label ID="etFechaCon" runat="server" Text="Fecha:"></asp:Label>
        <asp:TextBox Class="tx" ID="txFechaCon" type="date"  required="required" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Label ID="etCapCon" runat="server" Text="Capacidad del camión"></asp:Label>
        <asp:TextBox class="tx" ID="txCapCon" required="required" runat="server"></asp:TextBox>
        <br /><br />
       
         

        <asp:Label ID="etNumRuta" runat="server" Text="Número de ruta: "></asp:Label>
        <asp:TextBox class="tx" type="text" required="required" ID="txNumRuta" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Label class="lb" ID="etNumCam" runat="server" Text="Número de camión: "></asp:Label>
        <asp:TextBox class="tx" ID="txNumCam" placeholder="2313153" required="required" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Label ID="etHS" runat="server" Text="Hora de salida: "></asp:Label>
        <asp:TextBox class="tx" ID="txHS" required="required" type="time" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Label class="lbCaja" ID="etNumCaja" runat="server" Text="Número de caja: "></asp:Label>
        <asp:TextBox class="tx" ID="txNumCaja" runat="server" type="text" placeholder="231356-C" required="required" maxlength="30" pattern="[\d\ ]{0,12}"></asp:TextBox>
        <br /><br />
        <asp:Label ID="etHR" runat="server" Text="Hora de regreso: "></asp:Label>
        <asp:TextBox class="tx" ID="txHR" runat="server" type="time" required="required"></asp:TextBox>
        <br /><br /> 
        <asp:Label class="lb" ID="etKmInic" runat="server" Text="Kilometraje inicial: "></asp:Label>
        <asp:TextBox class="tx" ID="txKmInic" runat="server" required="required" type="number"></asp:TextBox>
        <br /><br />
        <asp:Label ID="etKmFin" runat="server" Text="Kilometraje final: "></asp:Label>
        <asp:TextBox class="tx" ID="txKmFin" runat="server" type="number" required="required"></asp:TextBox>
        <br /><br />
        <asp:Label class="etComRuta" ID="etComRuta" runat="server" Text="Comentario sobre ruta: "></asp:Label>
        <asp:TextBox ID="txComRuta" runat="server" required="required" TextMode="MultiLine"></asp:TextBox>
        

        <br /><br />
        <asp:Label ID="etNumRem" runat="server" Text="Número de remisión: "></asp:Label>
        <asp:TextBox class="tx" ID="txNumRem" runat="server" required="required" type="number"></asp:TextBox>
        <br /><br />
        <asp:Label ID="etNomCli" runat="server" Text="Nombre del cliente:"></asp:Label>
        <asp:TextBox ID="txNomCli" runat="server" placeholder="Sony" required="required"></asp:TextBox>
        <br /><br />
        <asp:Label ID="etHoraLlegada" runat="server" Text="Hora de llegada: "></asp:Label>
        <asp:TextBox class="tx" ID="txHoraLlegada" runat="server" type="time" require="required"></asp:TextBox>
        <br /><br />
        <asp:Label ID="etHoraSal" runat="server" Text="Hora de salida: "></asp:Label>
        <asp:TextBox ID="txHoraSal" runat="server" type="time" required="required"></asp:TextBox>
        <br /><br />
        <asp:Label ID="etTD" runat="server" Text="Tiempo en descargar: "></asp:Label>
        <asp:TextBox ID="txTD" runat="server" type="number" required="required" ></asp:TextBox>
        <br /><br />
        <asp:Label class="etComCli" ID="etComCli" runat="server" Text="Comentario sobre el cliente: "></asp:Label>
        <asp:TextBox ID="txComCli" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br /><br />
        <asp:Button ID="btRegresar" runat="server" Text="Regresar" />
       <asp:Label ID="etNom2" runat="server" Text="idBitacora"></asp:Label>
   </div>
          
        </div>
    </form>

</body>
</html>
