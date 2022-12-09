<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenúTEC.aspx.cs" Inherits="Parcial_III.Menú2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <head runat="server">
     <link rel="shortcut icon" href="images/laptop.ico" />
     <link href="styles.css" rel="stylesheet" />
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <meta name="viewport" content="initial-scale = 1.0, maximum-scale = 1.0, user-scalable = yes, width = device-width"/>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
     
 

      <link href='https://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css' />
     
    <script src="app.js">

    </script>

    
    <title>Facultad de Ciencia y Tecnología</title>

     <style>

         .body-tec{
             background-image: url("images/fondo2.jpg");
             background-repeat:no-repeat;
            background-size:cover;
         }
        
         .contenedor{
             
             margin-top: 100px;
         }
         .contenedor h2{
             color:white;
             font-size: 100px; 
             text-align:center;
         }
        
 
     </style>
    
</head>
<body class="body-tec">

    <nav class="navbar navbar-expand-md">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon "></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
      
        <h3 class="nav-brand"><a class="nav-link active link-light" href="MenúTEC.aspx">Menú</a></h3>
      <ul class="navbar-nav d-flex justify-content-center align-items-center bg-gray">

         <li class="nav-item">
          <a class="nav-link active link-light " aria-current="page" href="ConsultaTEC.aspx">Consultar</a>
        </li>

        
        <li class="nav-item">
          <a class="nav-link active link-light " aria-current="page" href="logout.aspx">Cerrar sesión</a>
        </li>

      </ul>
    </div>
  </div>
</nav>



    <div class="contenedor">
        <h2>Facultad de Ciencia y Tecnología</h2>

    </div>

    <form id="formMenu" runat="server">
         <center>
            <asp:Label ID="lbBienvenida" runat="server" ForeColor="White" Font-Size="100px"></asp:Label>

        </center>
    </form>
    
        
</body>
</html>

