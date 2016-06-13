Imports System.Data.SqlClient
Imports System
Imports System.Data
Imports System.Xml
Imports System.Web.UI

Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Session("field1") = ""
    End Sub

    Protected Sub cmdSubmit_Click(sender As Object, e As EventArgs) Handles cmdSubmit.Click
        'Dim conn As SqlConnection = New SqlConnection("Server = tcp: joshcdbserver.database.windows.net, 1433;Database=joshc_db;User ID=joshc@joshcdbserver;Password=Yetticar9;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
        'Dim cmd As SqlCommand = New SqlCommand("SELECT Name, Username, Password, Type  from teachers where Username='" & txtUsername1.Text & "'", conn)

        Dim conn As SqlConnection = New SqlConnection("Server=tcp:oprd.database.windows.net,1433;Data Source=oprd.database.windows.net;Initial Catalog=OpRd;Persist Security Info=False;User ID=Operation;Password=Yetticar9;Pooling=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
        Dim cmd As SqlCommand = New SqlCommand("Select Name, username, Password, Type  from teachers where Username='" & txtUsername1.Text & "'", conn)
        conn.Open()

        Dim School As String = ""
        Dim username As String
        Dim name As String = ""
        Dim Password As String = ""
        Dim Type As String = ""



        Dim Reader As SqlDataReader = cmd.ExecuteReader()

        If Reader.HasRows Then
            While Reader.Read()
                name = Reader(0)
                username = Reader(1)
                Password = Reader(2)
                Type = Reader(3)
            End While
        Else
            lblInfo.Text = "User Account Not Found!"
            GoTo 50
            ' Response.Redirect("Default.aspx")
        End If

        If txtPassword1.Text = Password Then
            If Type = "Teacher" Then
                Session("field1") = name
                Response.Redirect("Teacherpage.aspx")
            ElseIf Type = "Principal" Then
                Session("field1") = name
                Response.Redirect("Principal.aspx")
            ElseIf Type = "Admin" Then
                Session("field1") = name
                Response.Redirect("WebForm1.aspx")
            Else
                lblInfo.Text = "User Account Found but Account Type Not Set!  Please Contact support at info@cullmanec.com"
                Response.Redirect("Default.aspx")
            End If
        Else
            lblInfo.Text = "Password did not match!"
            ' Response.Redirect("Webform1.aspx")
        End If
50:
    End Sub
End Class