<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modificar.aspx.cs" Inherits="Parcial_III.Modificar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <head runat="server">
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <meta name="viewport" content="initial-scale = 1.0, maximum-scale = 1.0, user-scalable = yes, width = device-width"/>
      <link href="styles.css" rel="stylesheet" />
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
   
    <title>Registro</title>
    
</head>
<body>

    <nav class="navbar navbar-expand-md">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon "></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
      
        <h3 class="nav-brand"><a class="nav-link active link-light" href="Registro.aspx">Registro</a></h3>

      <ul class="navbar-nav d-flex justify-content-center align-items-center bg-gray">

        <li class="nav-item">
          <a class="nav-link active link-light " aria-current="page" href="#">Home</a>
        </li>

          

        <li class="nav-item">
          <a class="nav-link active link-light " aria-current="page" href="logout.aspx">Cerrar Sesión</a>
        </li>
      </ul>
    </div>
  </div>
</nav>


    <div class="reg">
    
    <form id="form1" runat="server"  >
        <center>
        <h2>Modificar Registro</h2>
            <br />
            
            <div class="form-inicio">
            <asp:TextBox ID="idOculto"  runat="server"   />
                <br />
            <asp:TextBox id="txtNombre" runat="server" placeholder="Nombre" />
            <br />
             
             <asp:TextBox id="txtCodigo" runat="server" placeholder="Código" />
         
            <br />
             <asp:TextBox id="txtCorreo" runat="server" placeholder="Correo" />
            <br />

             <asp:TextBox id="txtTelefono" runat="server" placeholder="Teléfono" />
            <br />
            
            

             <asp:TextBox id="txtUsuario" runat="server" placeholder="Usuario" />
            <br />

             <asp:TextBox id="txtContrasenna" runat="server" placeholder="Contraseña" />
            <br />


            Facultad:
            <asp:DropDownList ID="ddFacultad" runat="server" >
                <asp:ListItem Value="TEC">Ciencia y Tecnología</asp:ListItem>
                <asp:ListItem Value="Salud">Ciencias de la Salud</asp:ListItem>
                <asp:ListItem Value="ADM">No aplica</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            
             Carrera:
             <asp:DropDownList ID="ddCarrera" runat="server" >
                 <asp:ListItem>Ing. en Gestion y Manejo de Bases de Datos</asp:ListItem>
                 <asp:ListItem>Ing. en Sistemas y Redes Informáticas (Semipresencial)</asp:ListItem>
                 <asp:ListItem>Ing. en Sistemas y Redes Informáticas (Virtual)</asp:ListItem>
                 <asp:ListItem>Téc en Ingeniería en Sistemas y Redes Informáticas</asp:ListItem>
                 <asp:ListItem>Téc en Ingeniería en Sistemas y Redes Informáticas (Virtual)</asp:ListItem>
                 <asp:ListItem>Doctorado en Medicina</asp:ListItem>
                 <asp:ListItem>Lic. en Enfermería</asp:ListItem>
                 <asp:ListItem>Téc en Enfermería</asp:ListItem>
                 <asp:ListItem>No aplica</asp:ListItem>
                 <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <br />
            
            <asp:Button Text="Modificar" runat="server" ID="btnModificar" CssClass="btn btn-light" OnClick="btnModificar_Click" />
            <asp:Label ID="lbRegistro" runat="server"></asp:Label>
        </div>
        </center>
    </form>
    </div>
    
    
        
</body>
</html>

