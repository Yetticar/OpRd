Imports System.Data
Imports System.Linq
Imports System.Configuration
Imports System.Data.SqlClient



Public Class Principal
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim field1 As String = CType(Session.Item("field1"), String)
        Session("Name") = field1
        lblStatus.Text = field1 + "'s Grant Page"
        If field1 = "" Then
            Response.Redirect("login.aspx")
        End If


        If Not IsPostBack Then
            Me.BindGrid()

        End If


    End Sub

    Protected Sub OnRowDataBound(sender As Object, e As GridViewRowEventArgs)

        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim cmd As New SqlCommand("SELECT DISTINCT PrincipalApproval FROM Grants")
            Dim ddlCountries As DropDownList = TryCast(e.Row.FindControl("ddlCountries"), DropDownList)
            ddlCountries.DataSource = Me.ExecuteQuery(cmd, "SELECT")

            ddlCountries.DataTextField = "PrincipalApproval"
            ddlCountries.DataValueField = "PrincipalApproval"
            ddlCountries.DataBind()
            Dim country As String = TryCast(e.Row.FindControl("lblCountry"), Label).Text
            ddlCountries.Items.FindByValue(country).Selected = True
        End If
    End Sub

    Private Sub BindGrid()
        Dim field1 As String = CType(Session.Item("field1"), String)
        Dim cmd As New SqlCommand("SELECT Id, TeacherName, School, CostRequested, Summary, Description, PrincipalApproval FROM grants WHERE (School = '" & field1 & "') AND (PrincipalApproval = 'No')")
        GridView1.DataSource = Me.ExecuteQuery(cmd, "SELECT")
        GridView1.DataBind()
    End Sub

    Private Function ExecuteQuery(cmd As SqlCommand, action As String) As DataTable
        Dim conString As String = ConfigurationManager.ConnectionStrings("OpRdConnectionString").ConnectionString
        Using con As New SqlConnection(conString)
            cmd.Connection = con
            Select Case action
                Case "SELECT"
                    Using sda As New SqlDataAdapter()
                        sda.SelectCommand = cmd
                        Using dt As New DataTable()
                            sda.Fill(dt)
                            Return dt
                        End Using
                    End Using
                Case "UPDATE"
                    con.Open()
                    cmd.ExecuteNonQuery()
                    con.Close()
                    Exit Select
            End Select
            Return Nothing
        End Using
    End Function

    Protected Sub cmdApprove_Click(sender As Object, e As EventArgs) Handles cmdApprove.Click



        For Each row As GridViewRow In GridView1.Rows
            '


            Dim teacher As String = row.Cells(1).Controls.OfType(Of TextBox)().FirstOrDefault().Text.ToString
            Dim summary As String = row.Cells(3).Controls.OfType(Of TextBox)().FirstOrDefault().Text.ToString

            Dim approved As String = row.Cells(6).Controls.OfType(Of DropDownList)().FirstOrDefault().SelectedItem.Text.ToString

            If approved = "Yes" Then
                Dim conn1 As SqlConnection = New SqlConnection("Server=tcp:oprd.database.windows.net,1433;Data Source=oprd.database.windows.net;Initial Catalog=OpRd;Persist Security Info=False;User ID=Operation;Password=Yetticar9;Pooling=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
                Dim cmd1 As SqlCommand = New SqlCommand("Update Grants set PrincipalApproval='Yes' where TeacherName='" & teacher & "' and Summary='" & summary & "' and PrincipalApproval='No'", conn1)
                conn1.Open()
                cmd1.ExecuteNonQuery()
                conn1.Close()
            Else
            End If



        Next
        'GridView1.DataBind()
        ' GridView2.DataBind()
        Response.Redirect("Principal.aspx")
    End Sub


End Class