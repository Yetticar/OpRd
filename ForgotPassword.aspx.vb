Imports System.Data.SqlClient
Imports System.Data
Imports System.Net.Mail
Imports System.Net
Imports System.Web.Services.Description

Public Class ForgotPassword
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub cmdSubmit_Click(sender As Object, e As EventArgs) Handles cmdSubmit.Click
        Dim username As String = txtUsername1.Text
        Dim email As String
        Dim name As String
        Dim password As String

        email = txtUsername1.Text


        Dim conn As SqlConnection = New SqlConnection("Server=tcp:oprd.database.windows.net,1433;Data Source=oprd.database.windows.net;Initial Catalog=OpRd;Persist Security Info=False;User ID=Operation;Password=Yetticar9;Pooling=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
        Dim cmd As SqlCommand = New SqlCommand(("Select email, password, name from Teachers where username ='" & txtUsername1.Text & "'"), conn)
        conn.Open()
        Dim Reader As SqlDataReader = cmd.ExecuteReader()

        If Reader.HasRows Then
            While Reader.Read()
                email = Reader(0)
                password = Reader(1)
                name = Reader(2)
            End While
            Dim smtp As New SmtpClient("mail.cullmanec.com", 25)
            smtp.Credentials = New NetworkCredential("uaserver@cullmanec.com", "uaserver")
            smtp.Send("communications@cullmanec.com", email, "Operation Roundup Login Assistance", "Thank you " & name & " your Password is " & password & ". " & vbNewLine & "Log in here - http://operationroundup.azurewebsites.net/Login.aspx")
            Response.Redirect("Default.aspx")
        Else
            Label1.Visible = True

        End If

        Response.Redirect("Default.aspx")
    End Sub
End Class