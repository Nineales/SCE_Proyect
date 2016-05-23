<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="generarBit.aspx.cs" Inherits="SCE_Project.Mantenimienro_Bitacora.registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Styles/StyleSheet1.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="principal">

    
    <fieldset id="camion">
        <legend>Datos Papeleo</legend>
        <p id="d">
    <asp:Label ID="etNom" runat="server" Text="Nombre: "></asp:Label>
    <asp:DropDownList class="tx" ID="ddlNom" runat="server">
        <asp:ListItem Value="0">Selecciona tu nombre</asp:ListItem>
            </asp:DropDownList> 
    <br /><br />
    <asp:Label ID="etFecha" runat="server" Text="Fecha: "></asp:Label>
    <asp:TextBox class="tx" ID="txFecha" runat="server" type="date" required="required"></asp:TextBox>
    <br /><br /><br />
    <asp:Label ID="etNumRem" runat="server" Text="Numero de remisión: "></asp:Label>
    <asp:TextBox class="tx" ID="txNumRem"  type="text" requiredField="required" placeholder="" runat="server" ValidateRequestMode="Inherit" ></asp:TextBox>
    <br /><br /><br />
    <asp:Label ID="etRev" runat="server" Text="Revisión papeleo:"></asp:Label>
            <asp:DropDownList ID="ddlRev" runat="server">
                <asp:ListItem>Mañana</asp:ListItem>
                <asp:ListItem>Tarde</asp:ListItem>
            </asp:DropDownList>
    </fieldset>
    

        <fieldset id="camion2">
            <legend>Datos camión</legend>
        <p>
        <asp:Label ID="etNumRuta" runat="server" Text="Número de ruta: "></asp:Label>
        <asp:TextBox class="tx" ID="txNumRuta"  type="text" required="required" placeholder="" runat="server" maxlength="30" pattern="[\d\ ]{0,12}"></asp:TextBox>
        <asp:Label class="lb" ID="etNumCam" runat="server" Text="Número de camión: "></asp:Label>
        <asp:TextBox class="tx" ID="txNumCam" runat="server" type="text" placeholder="231353" required="required" maxlength="30" pattern="[\d\ ]{0,12}"></asp:TextBox>
        <br /><br />
        <asp:Label ID="etHS" runat="server" Text="Hora de salida: "></asp:Label>
        <asp:TextBox class="tx" ID="txHS" runat="server" type="time" required="required"></asp:TextBox>
        <asp:Label class="lbCaja" ID="etNumCaja" runat="server" Text="Número de caja: "></asp:Label>
        <asp:TextBox class="tx" ID="txNumCaja" runat="server" type="text" placeholder="231356-C" required="required" maxlength="30" pattern="[\d\ ]{0,12}"></asp:TextBox>
        <br /><br />
        <asp:Label ID="etHR" runat="server" Text="Hora de regreso: "></asp:Label>
        <asp:TextBox class="tx" ID="txHR" runat="server" type="time" required="required"></asp:TextBox>
        <asp:Label class="lb" ID="etKmInic" runat="server" Text="Kilometraje inicial: "></asp:Label>
        <asp:TextBox class="tx" ID="txKmInic"  type="text" required="required" placeholder="" runat="server" maxlength="30" pattern="[\d\ ]{0,12}"></asp:TextBox>
        <br /><br />
        <asp:Label ID="etKmFin" runat="server" Text="Kilometraje final: "></asp:Label>
        <asp:TextBox class="tx" ID="txKmFin"  type="text" required="required" placeholder="" runat="server" maxlength="30" pattern="[\d\ ]{0,12}"></asp:TextBox>
        <asp:Label ID="etCap" runat="server" Text="Capacidad del camión:"></asp:Label>
        <asp:TextBox  ID="txCap"  type="text" required="required" placeholder=""  runat="server" maxlength="30" pattern="[\d\ ]{0,12}"></asp:TextBox><asp:Label ID="etPorciento" runat="server" Text="%"></asp:Label>
            <br /><br />
        <asp:Label Class="etComRuta" ID="etComRuta" runat="server" Text="Comentario sobre ruta: "></asp:Label><br />
            <asp:TextBox ID="txComRuta" type="text" runat="server" TextMode="MultiLine"></asp:TextBox>
        </p>
        </fieldset>
        

        
            <fieldset id="camion3">
                <legend>Datos del cliente</legend>
            <p>
                <asp:Label ID="etNomCli" runat="server" Text="Nombre del cliente: "></asp:Label>
                <asp:TextBox Class="tx" ID="txNomCli"  type="text" required="required" placeholder="" runat="server"></asp:TextBox>
                <br /><br />
                <asp:Label ID="etHoraLlegada" runat="server" Text="Hora de llegada con el cliente: "></asp:Label>
                <asp:TextBox class="tx" ID="txHoraLlegada"  type="time" required="required" placeholder="" runat="server"></asp:TextBox>
                <br /><br />
                <asp:Label ID="etHoraSal" runat="server" Text="Hora de salida con el cliente: "></asp:Label>
                <asp:TextBox ID="txHoraSal"  type="time" required="required" placeholder="" runat="server"></asp:TextBox>
                <br /><br />
                <asp:Label ID="etTD" runat="server" Text="Tiempo en descargar: "></asp:Label>
                 <asp:TextBox class="tx" ID="txTD"  type="text" required="required" placeholder="" maxlength="30" pattern="[\d\ ]{0,12}" runat="server"></asp:TextBox><br /><br />
                <br /><br />
                <asp:Label class="etComCli" ID="etComCli" runat="server" Text="Comentario sobre cliente: "></asp:Label><br />
                <asp:TextBox ID="txComCli" type="text" runat="server" TextMode="MultiLine"></asp:TextBox>
            </p>
                <asp:Button ID="BtReg" runat="server" Text="Registrar Bitácora" OnClick="BtReg_Click" />
                </fieldset>
            
       
        </div>
    </form>
</body>
</html>
