<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Eliminar Usuario.aspx.cs" Inherits="SCE_Project.Mantenimiento_usuario.Eliminar_Usuario" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <header class="headercr">
        <h2>Eliminar usuarios</h2></header>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="etIdUsu" runat="server" Text="Id del usuario a eleiminar"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="txIdUsu" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btBuscar" runat="server" OnClick="Button2_Click" Text="Buscar" />
         <asp:RequiredFieldValidator ID="rfvIdUsu" runat="server" ControlToValidate="txIdUsu" Display="Dynamic" ErrorMessage="ID vacio"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revIdUsu" runat="server" ControlToValidate="txIdUsu" Display="Dynamic" ErrorMessage="El ID es numerico" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
&nbsp;<br />
        <asp:Label ID="etNom" runat="server" Text="Nombre"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txNom" runat="server" Enabled="False" Height="22px"></asp:TextBox>
        <br />
        <asp:Label ID="etTipoUsu" runat="server" Text="Tipo desuario"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txTipoUsu" runat="server" Enabled="False"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="etContra" runat="server" Text="Contraseña"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txContra" runat="server" Enabled="False"></asp:TextBox>
    
        <br />
        <asp:Button ID="btEliminar" runat="server" Text="Eliminar" OnClick="Button1_Click" />
        <br />
    
    </div>
    </form>
</body>
</html>