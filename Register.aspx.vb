
Imports System.Data.SqlClient
Imports System
Imports System.Data
Imports System.Xml
Imports System.Web.UI




Public Class Register
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub cmdSubmit_Click(sender As Object, e As EventArgs) Handles cmdSubmit.Click
        Dim username As String = txtUsername1.Text
        Dim pass As String = txtPassword.Text
        Dim Name As String = txtFirstName.Text & " " & txtLastName.Text
        Dim Email As String = txtEmail.Text
        Dim School As String = selectSchool.SelectedItem.Text
        Dim Type As String = "Teacher"

        Dim conn As SqlConnection = New SqlConnection("Server=tcp:oprd.database.windows.net,1433;Data Source=oprd.database.windows.net;Initial Catalog=OpRd;Persist Security Info=False;User ID=Operation;Password=Yetticar9;Pooling=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
        Dim cmd As SqlCommand = New SqlCommand("Select id from Teachers", conn)


        ' Dim conn As SqlConnection = New SqlConnection("Server = tcp: joshcdbserver.database.windows.net, 1433;Database=joshc_db;User ID=joshc@joshcdbserver;Password=Yetticar9;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
        ' Dim cmd As SqlCommand = New SqlCommand(("Select id from Teachers"), conn)
        conn.Open()
        Dim Reader As SqlDataReader = cmd.ExecuteReader()

        If Reader.HasRows Then
            While Reader.Read()
                ID = Reader(0)
            End While
        End If

        ID = ID + 1

        Dim conn1 As SqlConnection = New SqlConnection("Server=tcp:oprd.database.windows.net,1433;Data Source=oprd.database.windows.net;Initial Catalog=OpRd;Persist Security Info=False;User ID=Operation;Password=Yetticar9;Pooling=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
        Dim cmd1 As SqlCommand = New SqlCommand("Insert into Teachers (ID, Username, Password, Name, Email, School, Type) values ('" & ID & "','" & username & "','" & pass & "','" & Name & "','" & Email & "','" & School & "','" & Type & "')", conn1)

        'Dim conn1 As SqlConnection = New SqlConnection("Server = tcp: joshcdbserver.database.windows.net, 1433;Database=joshc_db;User ID=joshc@joshcdbserver;Password=Yetticar9;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
        ' Dim cmd1 As SqlCommand = New SqlCommand("Insert into Teachers (ID, Username, Password, Name, Email, School, Type) values ('" & ID & "','" & username & "','" & pass & "','" & Name & "','" & Email & "','" & School & "','" & Type & "')", conn1)
        conn1.Open()

        cmd1.ExecuteNonQuery()


        Response.Redirect("Successful.aspx")

    End Sub
End Class