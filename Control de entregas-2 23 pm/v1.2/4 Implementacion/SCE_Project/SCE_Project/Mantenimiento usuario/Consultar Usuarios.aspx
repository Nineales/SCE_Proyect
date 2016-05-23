<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consultar Usuarios.aspx.cs" Inherits="SCE_Project.Mantenimiento_usuario.Consultar_Usuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <header><h2>Consultar</h2></header>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="etIdUsu" runat="server" Text="ID usuario"></asp:Label>
    
        <asp:TextBox ID="txIdUsu" runat="server" ></asp:TextBox> 
         <asp:RequiredFieldValidator ID="rfvIdUsu" runat="server" ControlToValidate="txIdUsu" Display="Dynamic" ErrorMessage="ID vacio"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revIdUsu" runat="server" ControlToValidate="txIdUsu" Display="Dynamic" ErrorMessage="El ID es numerico" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
        <br />
        <asp:Button ID="btBuscarId" runat="server" Text="Buscar por ID" OnClick="Button1_Click" />
        <asp:Button ID="btConsultaGeneral" runat="server" Text="consulta general" OnClick="Button2_Click" CausesValidation="False" />
        <%--<br />--%>
        <asp:GridView ID="gdv1" runat="server" AutoGenerateColumns="False" >
            <Columns>
                <asp:TemplateField HeaderText="IDUsuaio" SortExpression="ID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nombre" SortExpression="nombre">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("nombre") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("nombre") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tipo" SortExpression="tipo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("tipo") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("tipo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Contraseña" SortExpression="contra">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("pass") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("pass") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                <br />
            </EmptyDataTemplate>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
