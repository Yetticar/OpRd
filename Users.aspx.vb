Imports System.Data
Imports System.Linq
Imports System.Configuration
Imports System.Data.SqlClient


Public Class Users
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Me.BindGrid()
        End If
    End Sub

    Private Sub BindGrid()
        Dim cmd As New SqlCommand("SELECT  Id, Name, School, Type, Email, Username, Password FROM teachers order by School")
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

    Protected Sub Gridview1_RowDeleting(ByVal sender As Object, ByVal e As GridViewDeleteEventArgs)
        ' Dim stor_id As String = GridView1.DataKeys(e.RowIndex).Values("ID").ToString()
        Dim Id As String = GridView1.DataKeys(e.RowIndex).Value.ToString
        Dim conString1 As String = ConfigurationManager.ConnectionStrings("OpRdConnectionString").ConnectionString
        Dim conn1 As SqlConnection = New SqlConnection(conString1)
        Dim cmd1 As SqlCommand = New SqlCommand("delete from teachers  where ID = " & Id & "", conn1)
        conn1.Open()
        cmd1.ExecuteNonQuery()
        conn1.Close()
        BindGrid()
    End Sub

    Protected Sub OnRowDataBound(sender As Object, e As GridViewRowEventArgs)
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim cmd As New SqlCommand("SELECT DISTINCT(Name) FROM School")
            Dim ddlSchool As DropDownList = TryCast(e.Row.FindControl("ddlSchool"), DropDownList)
            ddlSchool.DataSource = Me.ExecuteQuery(cmd, "SELECT")
            ddlSchool.DataTextField = "Name"
            ddlSchool.DataValueField = "Name"
            ddlSchool.DataBind()
            Dim School As String = TryCast(e.Row.FindControl("lblSchool"), Label).Text
            ddlSchool.SelectedItem.Text = School
        End If
    End Sub

    Protected Sub OnCheckedChanged(sender As Object, e As EventArgs)
        Dim isUpdateVisible As Boolean = False
        Dim chk As CheckBox = TryCast(sender, CheckBox)
        If chk.ID = "chkAll" Then
            For Each row As GridViewRow In GridView1.Rows
                If row.RowType = DataControlRowType.DataRow Then
                    row.Cells(0).Controls.OfType(Of CheckBox)().FirstOrDefault().Checked = chk.Checked
                End If
            Next
        End If
        Dim chkAll As CheckBox = TryCast(GridView1.HeaderRow.FindControl("chkAll"), CheckBox)
        chkAll.Checked = True
        For Each row As GridViewRow In GridView1.Rows
            If row.RowType = DataControlRowType.DataRow Then

                Dim isChecked As Boolean = row.Cells(0).Controls.OfType(Of CheckBox)().FirstOrDefault().Checked
                For i As Integer = 1 To row.Cells.Count - 1
                    If i >= 7 Then
                    Else
                        row.Cells(i).Controls.OfType(Of Label)().FirstOrDefault().Visible = Not isChecked
                        If row.Cells(i).Controls.OfType(Of TextBox)().ToList().Count > 0 Then
                            row.Cells(i).Controls.OfType(Of TextBox)().FirstOrDefault().Visible = isChecked
                        End If
                        If row.Cells(i).Controls.OfType(Of DropDownList)().ToList().Count > 0 Then
                            row.Cells(i).Controls.OfType(Of DropDownList)().FirstOrDefault().Visible = isChecked
                        End If
                        If isChecked AndAlso Not isUpdateVisible Then
                            isUpdateVisible = True
                        End If
                        If Not isChecked Then
                            chkAll.Checked = False
                        End If
                    End If
                Next
            End If


        Next

    End Sub

    Protected Sub Gridview1_RowUpdating(sender As Object, e As GridViewUpdateEventArgs)

        ' Dim stor_id As String = GridView1.DataKeys(e.RowIndex).Values("ID").ToString()
        ' Dim Id As String = GridView1.DataKeys(e.RowIndex).Value.ToString
        Dim conString1 As String = ConfigurationManager.ConnectionStrings("OpRdConnectionString").ConnectionString
        Dim conn1 As SqlConnection = New SqlConnection(conString1)
        ' Dim cmd1 As SqlCommand = New SqlCommand("delete from teachers  where ID = " & Id & "", conn1)
        ' conn1.Open()
        ' cmd1.ExecuteNonQuery()
        'conn1.Close()
        'BindGrid()
        For Each row As GridViewRow In GridView1.Rows
            If row.RowType = DataControlRowType.DataRow Then
                Dim isChecked As Boolean = row.Cells(0).Controls.OfType(Of CheckBox)().FirstOrDefault().Checked
                If isChecked Then


                    Dim pass As String = row.Cells(7).Controls.OfType(Of TextBox)().FirstOrDefault().Text.ToString
                    Dim school As String = row.Cells(2).Controls.OfType(Of DropDownList)().FirstOrDefault().SelectedItem.Text.ToString
                    Dim Id As String = GridView1.DataKeys(e.RowIndex).Value.ToString
                    If pass = "" Then
                        Dim cmd1 As New SqlCommand("UPDATE teachers SET school = '" & school & "' WHERE Id =" & Id & "", conn1)
                        ' cmd.Parameters.AddWithValue("@Password", row.Cells(7).Controls.OfType(Of TextBox)().FirstOrDefault().Text.ToString)
                        ' cmd.Parameters.AddWithValue("@School", row.Cells(2).Controls.OfType(Of DropDownList)().FirstOrDefault().SelectedItem.Text.ToString)
                        ' cmd.Parameters.AddWithValue("@ID", GridView1.DataKeys(e.RowIndex).Values("ID").ToString())
                        'Me.ExecuteQuery(cmd, "Update")
                        conn1.Open()
                        cmd1.ExecuteNonQuery()
                        conn1.Close()
                        BindGrid()

                        ' GridView1.DataBind()
                        ' Me.BindGrid()
                    Else
                        ' Dim cmd As New SqlCommand("UPDATE teachers Set School = @School, Password = @Password WHERE Id = @Id")
                        'cmd.Parameters.AddWithValue("@Password", row.Cells(7).Controls.OfType(Of TextBox)().FirstOrDefault().Text.ToString)
                        'cmd.Parameters.AddWithValue("@School", row.Cells(2).Controls.OfType(Of DropDownList)().FirstOrDefault().SelectedItem.Text.ToString)
                        'cmd.Parameters.AddWithValue("@ID", GridView1.DataKeys(e.RowIndex).Values("ID").ToString())
                        ' Me.ExecuteQuery(cmd, "SELECT")
                        Dim cmd1 As New SqlCommand("UPDATE teachers SET school = '" & school & "', Password = '" & pass & "' WHERE Id =" & Id & "", conn1)
                        conn1.Open()
                        cmd1.ExecuteNonQuery()
                        conn1.Close()
                        BindGrid()
                    End If


                End If
            End If
        Next


        GridView1.DataBind()
        Me.BindGrid()



    End Sub

End Class