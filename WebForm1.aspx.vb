Imports System.Data
Imports System.Linq
Imports System.Configuration
Imports System.Data.SqlClient

Public Class WebForm1
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim field1 As String = CType(Session.Item("field1"), String)
        If field1 = "Admin" Then

            Dim conn1 As SqlConnection = New SqlConnection("Server=tcp:oprd.database.windows.net,1433;Data Source=oprd.database.windows.net;Initial Catalog=OpRd;Persist Security Info=False;User ID=Operation;Password=Yetticar9;Pooling=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
            Dim cmd1 As SqlCommand = New SqlCommand("Select Id, Available FROM Available", conn1)
            conn1.Open()
            Dim Reader1 As SqlDataReader = cmd1.ExecuteReader()
            If Reader1.HasRows Then
                Dim status As String
                While Reader1.Read()
                    status = Reader1(1)
                    status = status.TrimEnd
                    If status = "Open" Then
                        lblStatus.Text = "The Site is Open to the Teachers"
                        btnStatus.Text = "Close Roundup"
                        btnStatus.CssClass = "btn-success"
                        btnUpdate.Enabled = False
                        btnFinalize.Enabled = False
                        btnUpdate.Visible = False
                        btnFinalize.Visible = False
                    Else
                        lblStatus.Text = "The Site is Unavailable to the Teachers"
                        btnStatus.Text = "Open Roundup"
                        btnStatus.CssClass = "btn-danger"
                        btnUpdate.Enabled = True
                        btnFinalize.Enabled = True
                        btnUpdate.Visible = True
                        btnFinalize.Visible = True
                    End If
                End While
            End If

            lblAmount.Text = "0.00"
            lblCount.Text = "0"

            Dim conn As SqlConnection = New SqlConnection("Server=tcp:oprd.database.windows.net,1433;Data Source=oprd.database.windows.net;Initial Catalog=OpRd;Persist Security Info=False;User ID=Operation;Password=Yetticar9;Pooling=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
            Dim cmd As SqlCommand = New SqlCommand("Select  Id, School, Summary, CostRequested, Votes FROM grants WHERE ([PrincipalApproval] = 'Yes') AND ([BoardApproval] = 'No') AND (Archived = 'No') order by Id", conn)
            conn.Open()

            Dim total As Decimal = 0
            Dim Reader As SqlDataReader = cmd.ExecuteReader()
            Dim countgrants As Integer = 0
            If Reader.HasRows Then
                While Reader.Read()
                    Dim votes As String
                    Dim votesint As Integer
                    Dim required As String = txtVotes.Text
                    Dim requiredint As Integer = Convert.ToInt32(required)
                    votes = Reader(4)
                    votesint = Convert.ToInt32(votes)
                    If votesint > (requiredint - 1) Then
                        Dim costint As Decimal = 0
                        Dim cost As String = Reader(3)
                        costint = Convert.ToDecimal(cost).ToString("c")
                        total = total + costint
                        countgrants = countgrants + 1
                        lblAmount.Text = "$" + total.ToString
                        lblCount.Text = countgrants.ToString
                    End If
                End While
            End If
            conn.Close()

            If Not IsPostBack Then
                Me.BindGrid()
            Else
            End If
        Else
            Response.Redirect("Login.aspx")
        End If
    End Sub

    Protected Sub OnRowDataBound(sender As Object, e As GridViewRowEventArgs)
        If e.Row.RowType = DataControlRowType.DataRow Then
        End If
    End Sub

    Protected Sub OnCheckedChanged(sender As Object, e As EventArgs)
        'Dim isUpdateVisible As Boolean = False
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
                    row.Cells(i).Controls.OfType(Of Label)().FirstOrDefault().Visible = Not isChecked
                    If row.Cells(i).Controls.OfType(Of TextBox)().ToList().Count > 0 Then
                        row.Cells(i).Controls.OfType(Of TextBox)().FirstOrDefault().Visible = isChecked
                    End If
                    If row.Cells(i).Controls.OfType(Of DropDownList)().ToList().Count > 0 Then
                        row.Cells(i).Controls.OfType(Of DropDownList)().FirstOrDefault().Visible = isChecked
                    End If
                    If Not isChecked Then
                        chkAll.Checked = False
                    End If
                Next
            End If
        Next
    End Sub

    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        Dim i As Int32 = 1
        For Each row As GridViewRow In GridView1.Rows
            If row.RowType = DataControlRowType.DataRow Then
                Dim cmd As New SqlCommand("UPDATE grants SET School = @School, CostRequested = @CostRequested, Summary = @Summary,Votes = @Votes where Id = @Id")
                cmd.Parameters.AddWithValue("@School", row.Cells(1).Controls.OfType(Of TextBox)().FirstOrDefault().Text)
                cmd.Parameters.AddWithValue("@CostRequested", row.Cells(3).Controls.OfType(Of TextBox)().FirstOrDefault().Text)
                cmd.Parameters.AddWithValue("@Summary", row.Cells(2).Controls.OfType(Of TextBox)().FirstOrDefault().Text)
                cmd.Parameters.AddWithValue("@Votes", row.Cells(4).Controls.OfType(Of TextBox)().FirstOrDefault().Text)
                cmd.Parameters.AddWithValue("@Id", GridView1.DataKeys(row.RowIndex).Value)
                Me.ExecuteQuery(cmd, "SELECT")
            End If
            i = i + 1
        Next
        Me.BindGrid()

        lblAmount.Text = "0.00"
        lblCount.Text = "0"

        Dim conn As SqlConnection = New SqlConnection("Server=tcp:oprd.database.windows.net,1433;Data Source=oprd.database.windows.net;Initial Catalog=OpRd;Persist Security Info=False;User ID=Operation;Password=Yetticar9;Pooling=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
        Dim cmd1 As SqlCommand = New SqlCommand("Select Id, School, Summary, CostRequested, Votes FROM grants WHERE ([PrincipalApproval] = 'Yes') AND ([BoardApproval] = 'No') AND (Archived = 'No') order by Id", conn)
        conn.Open()

        Dim total As Decimal = 0
        Dim Reader As SqlDataReader = cmd1.ExecuteReader()
        Dim countgrants As Integer = 0
        If Reader.HasRows Then
            While Reader.Read()
                Dim votes As String
                Dim votesint As Integer
                Dim required As String = txtVotes.Text
                Dim requiredint As Integer = Convert.ToInt32(required)
                votes = Reader(4)
                votesint = Convert.ToInt32(votes)
                If votesint > (requiredint - 1) Then
                    Dim costint As Decimal = 0
                    Dim cost As String = Reader(3)
                    costint = Convert.ToDecimal(cost).ToString("c")
                    total = total + costint
                    countgrants = countgrants + 1
                    lblAmount.Text = "$" + total.ToString
                    lblCount.Text = countgrants.ToString
                End If
            End While
        End If
        conn.Close()
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

    Private Sub BindGrid()
        Dim cmd As New SqlCommand("SELECT DISTINCT Id, School, Summary, CostRequested, Votes FROM grants WHERE ([PrincipalApproval] = 'Yes') AND ([BoardApproval] = 'No') AND (Archived = 'No') order by School")
        GridView1.DataSource = Me.ExecuteQuery(cmd, "SELECT")
        GridView1.DataBind()
    End Sub

    Protected Overrides Sub Finalize()
        MyBase.Finalize()
    End Sub

    Protected Sub btnStatus_Click(sender As Object, e As EventArgs) Handles btnStatus.Click

        Dim status = ""
        Dim conString As String = ConfigurationManager.ConnectionStrings("OpRdConnectionString").ConnectionString
        Dim conn As SqlConnection = New SqlConnection(conString)
        Dim cmd As SqlCommand = New SqlCommand("Select Id, Available FROM Available", conn)
        conn.Open()

        Dim Reader As SqlDataReader = cmd.ExecuteReader()
        If Reader.HasRows Then
            While Reader.Read()
                status = Reader(1)
                status = status.TrimEnd
                If status = "Open" Then
                    lblStatus.Text = "The Site is Unavailable to the Teachers"
                    btnStatus.Text = "Open Roundup"
                    status = "Closed"
                    btnStatus.CssClass = "btn-danger"
                    btnUpdate.Enabled = True
                    btnFinalize.Enabled = True
                    btnUpdate.Visible = True
                    btnFinalize.Visible = True
                Else
                    lblStatus.Text = "The Site is Open to the Teachers"
                    btnStatus.Text = "Close Roundup"
                    status = "Open"
                    btnStatus.CssClass = "btn-success"
                    btnUpdate.Enabled = False
                    btnFinalize.Enabled = False
                    btnUpdate.Visible = False
                    btnFinalize.Visible = False
                End If
            End While
        End If

        Dim conString1 As String = ConfigurationManager.ConnectionStrings("OpRdConnectionString").ConnectionString
        Dim conn1 As SqlConnection = New SqlConnection(conString1)
        Dim cmd1 As SqlCommand = New SqlCommand("UPDATE Available SET Available = '" & status & "' where Id = 1", conn1)
        conn1.Open()
        cmd1.ExecuteNonQuery()
        conn1.Close()
    End Sub

    Protected Sub gridView1_RowDeleting(ByVal sender As Object, ByVal e As GridViewDeleteEventArgs)
        Dim stor_id As String = GridView1.DataKeys(e.RowIndex).Values("Id").ToString()
        Dim conString1 As String = ConfigurationManager.ConnectionStrings("OpRdConnectionString").ConnectionString
        Dim conn1 As SqlConnection = New SqlConnection(conString1)
        Dim cmd1 As SqlCommand = New SqlCommand("delete from Grants  where ID = " & stor_id & "", conn1)
        conn1.Open()
        cmd1.ExecuteNonQuery()
        conn1.Close()
        BindGrid()
    End Sub

    Protected Sub btnFinalize_Click(sender As Object, e As EventArgs) Handles btnFinalize.Click
        Dim field2 As String = CType(Session.Item("field1"), String)
        Session("field2") = txtVotes.Text
        Dim Id As String = ""
        Dim Grant As String = ""
        Dim School As String = ""
        Dim Teachername As String = ""
        Dim Votes As String = ""
        Dim PrincipalApproval As String = ""
        Dim BoardApproval As String = ""
        Dim Archived As String = ""
        Dim i As Int32 = 1
        Dim num As String = ""
        Dim mth As String = Today.ToString("MM")
        Dim yr As String = Today.ToString("yyyy")

        Dim conn As SqlConnection = New SqlConnection("Server=tcp:oprd.database.windows.net,1433;Data Source=oprd.database.windows.net;Initial Catalog=OpRd;Persist Security Info=False;User ID=Operation;Password=Yetticar9;Pooling=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
        Dim cmd As SqlCommand = New SqlCommand("Select Id, Grant#, School, TeacherName, Votes, PrincipalApproval, BoardApproval, Archived from grants where PrincipalApproval='Yes' and BoardApproval='No' and Archived='No' order by School ASC", conn)
        conn.Open()
        Dim Reader As SqlDataReader = cmd.ExecuteReader()
        If Reader.HasRows Then
            While Reader.Read()
                Id = Reader(0)
                Grant = Reader(1)
                School = Reader(2)
                Teachername = Reader(3)
                Votes = Reader(4)
                PrincipalApproval = Reader(5)
                BoardApproval = Reader(6)
                Archived = Reader(7)
                num = String.Format("{0:0#}", i)

                Grant = mth & "-" & num & "-" & yr

                Dim conString1 As String = ConfigurationManager.ConnectionStrings("OpRdConnectionString").ConnectionString
                Dim conn1 As SqlConnection = New SqlConnection(conString1)
                Dim cmd1 As SqlCommand = New SqlCommand("UPDATE Grants SET BoardApproval = 'Yes', Grant# = '" & Grant & "' where PrincipalApproval='Yes' and BoardApproval='No' and Archived='No' and Id = '" & Id & "' and '" & Votes & "' >= '" & txtVotes.Text & "'", conn1)
                conn1.Open()
                cmd1.ExecuteNonQuery()
                conn1.Close()
                i = i + 1
            End While
            conn.Close()
        Else

        End If


        Response.Redirect("Finalize.aspx")
    End Sub
End Class