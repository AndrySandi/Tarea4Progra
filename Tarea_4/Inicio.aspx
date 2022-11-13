<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Tarea_4.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            font-size: x-large;
            color: #669999;
            height: 36px;
        }
        .auto-style5 {
            margin-left: 14px;
        }
        .auto-style7 {
            color: #666699;
        }
        .auto-style8 {
            color: #006666;
        }
        .auto-style10 {
            margin-left: 18px;
        }
        .auto-style12 {
            width: 100%;
        }
        .auto-style14 {
            width: 500px;
            height: 306px;
        }
        .auto-style9 {
            color: #000066;
        }
        .auto-style11 {
            margin-top: 21px;
        }
        .auto-style15 {
            height: 306px;
        }
        .auto-style16 {
            width: 500px;
            height: 47px;
        }
        .auto-style17 {
            height: 47px;
        }
        .auto-style22 {
            margin-left: 5px;
        }
        .auto-style24 {
            color: #FFFF99;
        }
        .auto-style25 {
            font-weight: bold;
            color: #FFFF99;
            font-size: medium;
        }
        .auto-style26 {
            font-weight: bold;
            color: #FFFF99;
            font-size: medium;
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" BackColor="#006666" Height="44px">
            <div class="auto-style2">
                <p class="auto-style4">
                    <strong><span class="auto-style24">Menú Pacientes&nbsp;</span> </strong>
                </p>
                <p class="auto-style3">
                    &nbsp;</p>
            </div>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" BackColor="#669999" BorderColor="#006666" Height="651px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table class="auto-style12">
                <tr>
                    <td class="auto-style16"><strong><span class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style24">Id:</span><span class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtId" runat="server" CssClass="auto-style5" Width="115px"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style24">Nombre:</span><span class="auto-style8"> </span></strong><span class="auto-style7">&nbsp;</span><asp:TextBox ID="txtNombre" runat="server" CssClass="auto-style5" Width="115px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp; <span class="auto-style8"><strong>&nbsp;</strong></span><span class="auto-style24">&nbsp; Género:</span><span class="auto-style8">&nbsp;&nbsp; </span></strong>
                        <asp:TextBox ID="txtGenero" runat="server" CssClass="auto-style5" Width="115px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;<span class="auto-style8"><strong>(M o F)</strong></span><br /> &nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp; <strong><span class="auto-style8">&nbsp; </span><span class="auto-style24">Edad:&nbsp; </span></strong>&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtEdad" runat="server" CssClass="auto-style5" Width="115px"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;&nbsp; <strong><span class="auto-style8">&nbsp; </span><span class="auto-style24">Seguro: </span></strong>&nbsp;<asp:TextBox ID="txtSeguro" runat="server" CssClass="auto-style10" Width="115px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;<span class="auto-style8"><strong>(1 = SI&nbsp;&nbsp;&nbsp; 0 = NO)</strong></span><br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style24"><strong>Teléfono:</strong></span><asp:TextBox ID="txtTelefono" runat="server" CssClass="auto-style5" Width="115px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;<br /> <br /> </td>
                    <td class="auto-style17">
                        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlTarea4" Width="537px" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" CssClass="auto-style22" DataKeyNames="IdPaciente" GridLines="Horizontal" Height="165px">
                            <Columns>
                                <asp:BoundField DataField="IdPaciente" HeaderText="IdPaciente" ReadOnly="True" SortExpression="IdPaciente" />
                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                <asp:BoundField DataField="Genero" HeaderText="Genero" SortExpression="Genero" />
                                <asp:CheckBoxField DataField="Seguro" HeaderText="Seguro" SortExpression="Seguro" />
                                <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                                <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
                                <asp:BoundField DataField="Calle" HeaderText="Calle" SortExpression="Calle" />
                                <asp:BoundField DataField="Numero" HeaderText="Numero" SortExpression="Numero" />
                                <asp:BoundField DataField="Ciudad" HeaderText="Ciudad" SortExpression="Ciudad" />
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#333333" />
                            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#487575" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#275353" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlTarea4" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalConnectionString4 %>" DeleteCommand="delete Pacientes where IdPaciente = @id" InsertCommand="insert into Pacientes values (@id, @nombre, @genero, @seguro, @telefono, @edad, @calle, @numero, @ciudad)" SelectCommand="SELECT * FROM [Pacientes]">
                            <DeleteParameters>
                                <asp:ControlParameter ControlID="txtId" Name="id" PropertyName="Text" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="txtId" Name="id" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtNombre" Name="nombre" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtGenero" Name="genero" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtSeguro" Name="seguro" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtTelefono" Name="telefono" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtEdad" Name="edad" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtCalle" Name="calle" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtNumero" Name="numero" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtCiudad" Name="ciudad" PropertyName="Text" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                        <br />
                        <br />
                        <strong>
                        <asp:Label ID="lbl" runat="server" BackColor="#006666" BorderColor="White" BorderStyle="Solid" CssClass="auto-style24" Text="Información"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14"><span class="auto-style9"><strong>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp; Residencia: </strong></span>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style9"><strong>&nbsp;Calle: </strong></span>&nbsp;<asp:TextBox ID="txtCalle" runat="server" CssClass="auto-style5" Width="115px"></asp:TextBox>
                        &nbsp;&nbsp; <span class="auto-style9"><strong>Ciudad: </strong></span>
                        <asp:TextBox ID="txtCiudad" runat="server" CssClass="auto-style5" Width="115px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style9"><strong>Número:</strong></span><asp:TextBox ID="txtNumero" runat="server" CssClass="auto-style5" Width="115px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;
                        <asp:ImageButton ID="btnIngresar" runat="server" CssClass="auto-style11" Height="39px" ImageUrl="~/Imagen/Forward Button_64px.png" Width="41px" BackColor="#006666" BorderColor="White" BorderStyle="Double" OnClick="ImageButton1_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="btnEliminar" runat="server" BackColor="#006666" BorderColor="White" BorderStyle="Double" Height="40px" ImageUrl="~/Imagen/delete_512px.png" OnClick="ImageButton1_Click1" Width="40px" />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style15">&nbsp;<strong><asp:Button ID="btnEdades" runat="server" BackColor="#006666" BorderColor="White" BorderStyle="Solid" CssClass="auto-style26" OnClick="btnEdades_Click" Text="(%) Edades" Width="101px" />
                        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:Button ID="btnGenero" runat="server" BackColor="#006666" BorderColor="White" BorderStyle="Solid" CssClass="auto-style25" OnClick="btnGenero_Click" Text="(%) Género" Width="101px" />
                        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <em>
                        <asp:Button ID="btnAsegurados" runat="server" BackColor="#006666" BorderColor="White" BorderStyle="Solid" CssClass="auto-style25" OnClick="btnAsegurados_Click" Text="Asegurados" Width="101px" />
                        </em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;</strong><span class="auto-style7"> </span><span class="auto-style8">
            <br />
            </span>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;<br /> &nbsp;&nbsp;&nbsp;
            <br />
            <br />
        </asp:Panel>
    </form>
</body>
</html>
