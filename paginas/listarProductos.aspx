<%@ Page Language="VB" AutoEventWireup="false" CodeFile="listarProductos.aspx.vb" Inherits="paginas_plantilla" %>

<!DOCTYPE html>

<html lang="es-hn" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Titulo de la Pagina</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/estilos.css" rel="stylesheet" />
</head>

<body>

    <!------------------------------ Barra de Menú ------------------------->

    <nav class="navbar navbar-default">
        <div class="container-fluid">
            
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed"
                    data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.aspx">
                    <img src="../img/coffee-logos-77.png" />
                </a>
            </div>

            
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                <ul class="nav navbar-nav">
                    <li class="active">
                    <a href="index.aspx">Inicio <span class="sr-only">(current)</span></a></li>
                    <li><a href="consultas.aspx">Consulta de Productos</a></li>
                    <li><a href="listarProductos.aspx">Listado de Productos</a></li>
                    </ul>
              

                   </div>
          
        </div>
        
    </nav>

    <!------------------------------ Cuerpo Principal----------------------->

    <div class="container-fluid cuerpo-principal">
        <div class="row">
            
            <div id="listado-productos" class="col-sm-12 col-md-12 col-lg-12">

                <h1 class="text-center">Información de Productos</h1>

                <asp:Literal ID="txtProductos" runat="server"></asp:Literal>

            </div>
             
        </div>
    </div>

    <!------------------------------ Pie de Página ------------------------->

    <footer>
        <div>
            <div class="container-fluid">
                <p>Copyright © Mr Coffee Shop. Todos los derechos reservados.</p>
            </div>
        </div>
    </footer>

    <!------------------------------ Script Framework ---------------------->

    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>

</body>

</html>
