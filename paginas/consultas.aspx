<%@ Page Language="VB" AutoEventWireup="false" CodeFile="consultas.aspx.vb" Inherits="paginas_plantilla" %>

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
            <h1 class="text-center">Consulta de Productos</h1>
        </div>
        <div class="row">
            <div class="col-sm-12 col-md-3 col-lg-3">
                
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6">

                <form class="contacto" runat="server">

                    <h4>Nombre Producto:</h4>
                    <asp:TextBox class="form-control" ID="TxtNombre" runat="server"></asp:TextBox>

                    <br />
                    <br />

                    <asp:Button class="btn btn-success" ID="btnConsultar" runat="server" Text="Consultar" />

                    <br />
                    <br />

                    <asp:Literal ID="txtMensajes" runat="server"></asp:Literal>

                </form>
            </div>
            <div class="col-sm-12 col-md-3 col-lg-3">
                
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
