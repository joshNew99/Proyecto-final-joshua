Imports System.Data
Imports System.Data.OleDb

Partial Class paginas_plantilla
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        ' Preparar objetos para conexión a base de datos.
        Dim cadenaConexion As String =
            "Provider=Microsoft.ACE.OLEDB.12.0;" &
            "Data Source=" &
            "|DataDirectory|datos.accdb"

        Dim conexion As New OleDbConnection(cadenaConexion)

        Dim SQL As String = "SELECT * FROM productos"

        Dim comando As New OleDbCommand(SQL, conexion)

        ' Realizar el proceso de recuperación de datos en la BD.
        Try
            ' Abrir la conexión.
            conexion.Open()

            ' Ejecurar comando SQL.
            Dim lector As OleDbDataReader = comando.ExecuteReader

            If lector.HasRows Then

                txtProductos.Text = ""
                While lector.Read
                    txtProductos.Text &= <texto>
                                             <div class='div-productos'>
                                                 <h1>Nombre: <%= lector.GetString(1) %></h1>
                                                 <h3>Descripción: <%= lector.GetString(2) %></h3>
                                                 <h1>Precio: <%= lector.GetValue(3) %></h1>
                                                 <h3>URL: <%= lector.GetString(4) %></h3>
                                             </div>
                                         </texto>.ToString
                End While

            Else
                ' Mensaje de error no provocado por excepción.
                txtProductos.Text =
                    "<h4>No hay registros de Productos<h4>"
            End If

        Catch ex As Exception
            txtProductos.Text =
                <str>
                    <div>
                        <img style='width: 100px; height: auto; margin: 5px auto; display: block;'
                            src='http://www.clipartkid.com/images/5/stop-sign-clip-art-free-vector-37-93kb-Z4veZP-clipart.jpg'/>
                        <h1>Error por excepción. <%= ex.Message %></h1>
                    </div>


                </str>.ToString
        Finally
            If conexion.State = Data.ConnectionState.Open Then
                conexion.Close()
            End If
        End Try
    End Sub

End Class
