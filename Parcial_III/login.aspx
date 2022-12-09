<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Parcial_III.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <head runat="server">
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <meta name="viewport" content="initial-scale = 1.0, maximum-scale = 1.0, user-scalable = yes, width = device-width"/>
      <link href="styles.css" rel="stylesheet" />
      <link rel="shortcut icon" href="images/home.ico" />
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    
    <script src="app.js">

    </script>

     
     
    <title>Home</title>
    
</head>
<body>

    <nav class="navbar navbar-expand-md">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon "></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
      
      
     <h3 class="nav-brand"><a class="nav-link active link-light" href="login.aspx">Home</a></h3>

      <ul class="navbar-nav d-flex justify-content-center align-items-center bg-gray">

        <li class="nav-item">
          <a class="nav-link active link-light " aria-current="page" href="login.aspx">Home</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

    <div class="log">
    <form id="form1" runat="server">
        <center>
        <h2>Inicio de Sesión </h2>
            <br />
            
        <img src="images/login.png" width="100" height="100" />
        <div class="form-inicio">
            <asp:TextBox ID="usuario" runat="server" placeholder="Usuario"></asp:TextBox>
            <br />
            <br />
              <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" placeholder="Contraseña"></asp:TextBox>
            <br />
    
            <asp:Button Text="Ingresar" runat="server" ID="txtIngresar" CssClass="btn btn-light" OnClick="txtIngresar_Click" />
            <br />
            <asp:Label ID="lbError" runat="server"></asp:Label>
        </div>

        </center>
    </form>
    
    </div>
    
        
</body>
</html>
