<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registar Usuarios.aspx.cs" Inherits="SCE_Project.Mantenimiento_usuario.Registar_Usuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registrar usuarios</title>
    <script type="text/javascript">
        function ocultarPass() {
            var control = document.getElementById("ddlTipoUsu");
            var password = document.getElementById("txContra");
            var lpassword = document.getElementById("etContra");
            var bc = document.getElementById("btRegistrarS");
            var bs = document.getElementById("btRegistrarC");
            var reqVal = document.getElementById("rfvContra");
            var regVal = document.getElementById("revContra");
            if (control.value == 1) {
                password.style.visibility = "visible";
                //bc.style.visibility = "hidden";
                //bs.style.visibility = "visible";
                bc.style.display = "none";
                bs.style.display = "block";
                regVal.style.visibility = "visible";
                reqVal.style.visibility = "visible";
                lpassword.style.visibility = "visible";
            } else {
                password.style.visibility = "hidden";
                //bc.style.visibility = "visible";
                //bs.style.visibility = "hidden";
                bc.style.display = "block";
                bs.style.display = "none";
                regVal.style.visibility = "hidden";
                reqVal.style.visibility = "hidden";
                lpassword.style.visibility = "hidden";
            }
        }
        function cargar() {
            var bs = document.getElementById("btRegistrarS");
            var password = document.getElementById("txContra");
            var lpassword = document.getElementById("etContra");
            var reqVal = document.getElementById("rfvContra");
            var regVal = document.getElementById("revContra");
            regVal.style.visibility = "hidden";
            reqVal.style.visibility = "hidden";
            password.style.visibility = "hidden";
            lpassword.style.visibility = "hidden";
            //bs.style.visibility = "hidden";
            bs.style.display = "none";
        }
    </script>
</head>
<body>
    <header class="headercr">
        <h2>Registrar usuarios</h2></header>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="etIdUsu" runat="server" Text="Id Usuario"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txIdUsu" runat="server" Width="200px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvIDC" runat="server" ControlToValidate="txIdUsu" Display="Dynamic" ErrorMessage="ID vacio" ValidationGroup="todos"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revIDC" runat="server" ControlToValidate="txIdUsu" Display="Dynamic" ErrorMessage="El ID es numerico" ValidationExpression="^\d+$" ValidationGroup="todos"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="rfvIDS" runat="server" ControlToValidate="txIdUsu" Display="Dynamic" ErrorMessage="ID vacio" ValidationGroup="super"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revIDS" runat="server" ControlToValidate="txIdUsu" Display="Dynamic" ErrorMessage="El ID es numerico" ValidationExpression="^\d+$" ValidationGroup="super"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="etNomUsu" runat="server" Text="Nombre"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txNomUsu" runat="server" Width="200px"></asp:TextBox>
       
        <asp:RequiredFieldValidator ID="rfvNomC" runat="server" ControlToValidate="txNomUsu" Display="Dynamic" ErrorMessage="Nombre vacio" ValidationGroup="todos"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revNomC" runat="server" ControlToValidate="txNomUsu" Display="Dynamic" ErrorMessage="Solo caracteres" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ValidationGroup="todos"></asp:RegularExpressionValidator>
       
        <asp:RequiredFieldValidator ID="rfvNomS" runat="server" ControlToValidate="txNomUsu" Display="Dynamic" ErrorMessage="Nombre vacio" ValidationGroup="super"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revNomS" runat="server" ControlToValidate="txNomUsu" Display="Dynamic" ErrorMessage="Solo caracteres" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ValidationGroup="super"></asp:RegularExpressionValidator>
       
        <br />
        <asp:Label ID="etTipoUsu" runat="server" Text="Tipo de usuario"></asp:Label>
    
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlTipoUsu" runat="server" Width="200px" onchange="ocultarPass();" >
            <asp:ListItem>Tipo de usuario</asp:ListItem>
            <asp:ListItem Value="1">Supervisor</asp:ListItem>
            <asp:ListItem Value="2">Chofer</asp:ListItem>
        </asp:DropDownList>
    
        <asp:RequiredFieldValidator ID="rfvTipo" runat="server" ControlToValidate="ddlTipoUsu" Display="Dynamic" ErrorMessage="Selecione un tipo de usuario" InitialValue="Tipo de usuario" ValidationGroup="todos"></asp:RequiredFieldValidator>
    
        <asp:RequiredFieldValidator ID="rfvTipoS" runat="server" ControlToValidate="ddlTipoUsu" Display="Dynamic" ErrorMessage="Selecione un tipo de usuario" InitialValue="Tipo de usuario" ValidationGroup="super"></asp:RequiredFieldValidator>
    
        <br />
        <asp:Label ID="etContra" runat="server" Text="Contraseña"></asp:Label>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txContra" runat="server" Width="200px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvContra" runat="server" ControlToValidate="txContra" Display="Dynamic" ErrorMessage="pass vacio" ValidationGroup="super"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revContra" runat="server" ControlToValidate="txContra" Display="Dynamic" ErrorMessage="minomo 8 caracteres" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" ValidationGroup="super"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Button ID="btRegistrarS" runat="server" Text="Registrar" OnClick="Button1_Click" ValidationGroup="todos" />
        <asp:Button ID="btRegistrarC" runat="server" Text="Registrar" ValidationGroup="super" OnClick="Button3_Click" />
        <asp:Button ID="btCancelar" runat="server" Text="Cancelar" OnClick="btCancelar_Click" ValidationGroup="Ninguno" />
    
    </div>
        <asp:Label ID="Label5" runat="server"></asp:Label>
    </form>
</body>
</html>