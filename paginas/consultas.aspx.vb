Imports System.Data.OleDb

Partial Class paginas_plantilla
    Inherits System.Web.UI.Page

    Protected Sub btnConsultar_Click(sender As Object, e As EventArgs) Handles btnConsultar.Click

        ' Preparar objetos para conexión a base de datos.
        Dim cadenaConexion As String =
            "Provider=Microsoft.ACE.OLEDB.12.0;" &
            "Data Source=" &
            "|DataDirectory|datos.accdb"

        Dim conexion As New OleDbConnection(cadenaConexion)

        Dim SQL As String =
            "SELECT * FROM productos WHERE nombre=@id"

        Dim comando As New OleDbCommand(SQL, conexion)

        With comando.Parameters
            .AddWithValue("@id", TxtNombre.Text)
        End With

        ' Realizar el proceso de almacenamiento de datos en la BD.
        Try
            ' Abrir la conexión.
            conexion.Open()

            ' Ejecurar comando SQL.
            Dim lector As OleDbDataReader = comando.ExecuteReader

            If lector.Read Then
                ' Actualizar cuadros. 
                TxtNombre.Text = lector.GetString(1)
                txtMensajes.Text = <minameloco>
                                       <table>
                                           <tr>
                                               <th>Nombre</th>
                                               <th>Descripcion</th>
                                               <th>Precio</th>
                                               <th>URL</th>
                                           </tr>
                                           <tr>
                                               <td><%= lector.GetString(1) %></td>
                                               <td><%= lector.GetString(2) %></td>
                                               <td><%= lector.GetValue(3) %></td>
                                               <td><%= lector.GetString(4) %></td>
                                           </tr>
                                       </table>
                                   </minameloco>.ToString
            Else
                ' Mensaje de error no provocado por excepción.
                txtMensajes.Text =
                    "<h4>El Registro no existe<h4>"
            End If

        Catch ex As Exception
            txtMensajes.Text = <str>
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
