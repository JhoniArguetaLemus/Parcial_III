<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaTEC.aspx.cs" Inherits="Parcial_III.Consulta2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <head runat="server">
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <meta name="viewport" content="initial-scale = 1.0, maximum-scale = 1.0, user-scalable = yes, width = device-width"/>
      <link href="styles.css" rel="stylesheet" />
     <link rel="shortcut icon" href="images/laptop.ico" />

      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    
    <script src="app.js">

    </script>

     
     
    <title>Consultar</title>
    
</head>
<body>

    <nav class="navbar navbar-expand-md">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon "></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
      
      
     <h3 class="nav-brand"><a class="nav-link active link-light" href="ConsultaTEC.aspx">Consultar</a></h3>

      <ul class="navbar-nav d-flex justify-content-center align-items-center bg-gray">

        <li class="nav-item">
          <a class="nav-link active link-light " aria-current="page" href="logout.aspx">Cerrar sesión</a>
        </li>


          <li class="nav-item">
          <a class="nav-link active link-light " aria-current="page" href="logout.aspx">Home</a>
        </li>


      </ul>
    </div>
  </div>
</nav>

   <div class="consult">
    <form id="form1" runat="server">
        <center>
        <h2>Consultar Estudiantes</h2>
        <div class="form-inicio">
            <asp:Button ID="btnConsular" runat="server"  Text="Consultar " CssClass="btn btn-light" OnClick="btnConsular_Click"/>

            <asp:ScriptManager ID="scripManager1" runat="server" ></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel" UpdateMode="Conditional" runat="server" >
                <ContentTemplate>
                    <asp:GridView ID="GVConsultar" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                        <Columns>

                            <asp:BoundField HeaderText="Código" DataField="Código" />
                            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                            <asp:BoundField HeaderText="Carrera" DataField="Carrera" />
                            <asp:BoundField HeaderText="Correo" DataField="Correo" />
                            <asp:BoundField HeaderText="Teléfono" DataField="Teléfono" />
                   

     
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" BorderColor="White" BorderStyle="Solid" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </ContentTemplate>

            </asp:UpdatePanel>
        </div>

            <asp:Label ID="lbMostrar" runat="server"></asp:Label>

        </center>


    </form>
    
    </div>
    
        
</body>
</html>
