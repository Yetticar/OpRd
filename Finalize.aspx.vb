Imports System.Data
Imports System.Linq
Imports System.Configuration
Imports System.Data.SqlClient

Imports System.Net.Mail
Imports System.Net

Imports Microsoft.Office.Interop
Imports System.Drawing

Public Class WebForm3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim field2 As String = CType(Session.Item("field2"), String)

        Dim conn1 As SqlConnection = New SqlConnection("Server=tcp:oprd.database.windows.net,1433;Data Source=oprd.database.windows.net;Initial Catalog=OpRd;Persist Security Info=False;User ID=Operation;Password=Yetticar9;Pooling=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
        Dim cmd1 As SqlCommand = New SqlCommand("Select Id, Available FROM Available", conn1)
        ' Dim conString1 As String = ConfigurationManager.ConnectionStrings("OpRdConnectionString").ConnectionString
        ' Dim conn1 As SqlConnection = New SqlConnection(conString1)
        ' Dim cmd1 As SqlCommand = New SqlCommand("Select Id, Available FROM Available", conn1)
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
                Else
                    lblStatus.Text = "The Site is Unavailable to the Teachers"
                    btnStatus.Text = "Open Roundup"
                    btnStatus.CssClass = "btn-danger"
                End If


            End While
        End If



        lblAmount.Text = "0.00"
        lblCount.Text = "0"
        Dim conn As SqlConnection = New SqlConnection("Server=tcp:oprd.database.windows.net,1433;Data Source=oprd.database.windows.net;Initial Catalog=OpRd;Persist Security Info=False;User ID=Operation;Password=Yetticar9;Pooling=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")

        Dim cmd As SqlCommand = New SqlCommand("Select  Id, School, Summary, CostRequested, Votes FROM grants WHERE ([PrincipalApproval] = 'Yes') AND ([BoardApproval] = 'Yes') AND (Archived = 'No') order by Id", conn)
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

        txtVotes.Text = field2


    End Sub

    Protected Sub OnRowDataBound(sender As Object, e As GridViewRowEventArgs)


        '  If e.Row.RowType = DataControlRowType.DataRow Then
        '   End If

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





    Protected Sub btnFinalize_Click(sender As Object, e As EventArgs) Handles btnFinalize.Click
        Dim field2 As String = CType(Session.Item("field2"), String)

        Dim mmddyy As String = Date.Today.ToString("MMMdyyyy")

        Dim xlApp As New Excel.Application
        Dim xlWorkbook As Excel.Workbook = xlApp.Workbooks.Add()
        Dim xlWorksheet As Excel.Worksheet = CType(xlWorkbook.Sheets("sheet1"), Excel.Worksheet)

        Dim xlRange As Excel.Range
        Dim xlRange1 As Excel.Range
        Dim xlRange2 As Excel.Range
        Dim xlRange3 As Excel.Range
        Dim xlRange4 As Excel.Range


        Dim A As Excel.Range
        Dim B As Excel.Range
        Dim C As Excel.Range
        Dim D As Excel.Range
        Dim E1 As Excel.Range
        Dim F As Excel.Range
        Dim G As Excel.Range
        Dim H As Excel.Range
        Dim I As Excel.Range
        Dim j As Excel.Range
        Dim k As Excel.Range

        xlWorksheet.Cells(1, 5).Value = "Operation Roundup"
        xlWorksheet.Cells(2, 11).Value = "Votes required for award"
        xlWorksheet.Cells(2, 10).Value = field2
        xlWorksheet.Cells(3, 11).Value = "Number of grants meeting vote required"
        xlWorksheet.Cells(3, 10).Value = lblCount.Text
        xlWorksheet.Cells(4, 11) = "Amount Granted"
        xlWorksheet.Cells(4, 10) = lblAmount.Text
        xlWorksheet.Cells(5, 2) = "School"
        xlWorksheet.Cells(5, 3) = "Votes"
        xlWorksheet.Cells(5, 4) = "Date"
        xlWorksheet.Cells(5, 5) = "Grant Request"
        xlWorksheet.Cells(5, 6) = "Amount"
        xlWorksheet.Cells(5, 7) = "Benefiting"
        xlWorksheet.Cells(5, 8) = "Grades"














        Dim Email As String
        Dim PrincipalEmail As String
        Dim School As String
        Dim Summary As String
        Dim CostRequested As String
        Dim votes As String
        Dim neededvotes As String = field2
        Dim submitted As String
        Dim benefiting As String
        Dim Grades As String
        Dim grant As String
        Dim TeacherName As String



        Dim conn As SqlConnection = New SqlConnection("Server=tcp:oprd.database.windows.net,1433;Data Source=oprd.database.windows.net;Initial Catalog=OpRd;Persist Security Info=False;User ID=Operation;Password=Yetticar9;Pooling=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
        Dim cmd1 As SqlCommand = New SqlCommand("Select g.Id, t.Email, g.School, g.Summary,  g.CostRequested, g.Votes, p.email, g.submitted, g.PeopleAffected, g.Grades, g.Grant#, g.TeacherName FROM grants g, teachers t, Principal p WHERE (g.PrincipalApproval = 'Yes') AND (g.BoardApproval = 'Yes') AND (g.Archived = 'No') and g.TeacherName = t.Name and p.School= g.school order by g.School", conn)
        conn.Open()
        Dim count As Integer = 6
        ' Dim total As Decimal = 0
        Dim Reader As SqlDataReader = cmd1.ExecuteReader()
        Dim countgrants As Integer = 1
        If Reader.HasRows Then
            While Reader.Read()
                Email = Reader(1)
                School = Reader(2)
                Summary = Reader(3)
                CostRequested = Reader(4)
                votes = Reader(5)
                PrincipalEmail = Reader(6)
                submitted = Reader(7)
                benefiting = Reader(8)
                Grades = Reader(9)
                grant = Reader(10)
                TeacherName = Reader(11)

                If neededvotes <= votes Then
                    xlWorksheet.Cells(count, 1) = countgrants
                    xlWorksheet.Cells(count, 2) = School
                    xlWorksheet.Cells(count, 3) = votes
                    xlWorksheet.Cells(count, 4) = submitted
                    xlWorksheet.Cells(count, 5) = Summary
                    xlWorksheet.Cells(count, 6) = "$" & CostRequested
                    xlWorksheet.Cells(count, 7) = benefiting
                    xlWorksheet.Cells(count, 8) = Grades

                    Dim smtp As New SmtpClient("mail.cullmanec.com", 25)
                    smtp.Credentials = New NetworkCredential("uaserver@cullmanec.com", "uaserver")
                    smtp.Send("communications@cullmanec.com", "joshc@cullmanec.com", "Congratulations Your Grant Has Been Approved", "Congratulations " & TeacherName & " your grant request for " & Summary & " has been approved!.  Your Grant number Is " & grant & " and it is For the value of $" & CostRequested & ".")

                    count = count + 1
                    countgrants = countgrants + 1

                Else
                    Dim smtp As New SmtpClient("mail.cullmanec.com", 25)
                    smtp.Credentials = New NetworkCredential("uaserver@cullmanec.com", "uaserver")
                    smtp.Send("communications@cullmanec.com", "joshc@cullmanec.com", "I'm sorry your Grant Request has been declined", "I'm sorry " & TeacherName & " your grant request for " & Summary & " has been declined. Please try again.")

                End If




            End While
        End If
        conn.Close()

        count = count + 5

        xlRange = xlWorksheet.Range("E1")
        xlRange.Range("E1").EntireColumn.ColumnWidth = 31
        xlRange.Font.Bold = True
        xlRange.HorizontalAlignment = Excel.Constants.xlCenter

        xlRange.EntireColumn.AutoFit()


        xlRange1 = xlWorksheet.Range("B5", "H5")
        xlRange1.Font.Bold = True
        xlRange1.HorizontalAlignment = Excel.Constants.xlCenter


        xlRange2 = xlWorksheet.Range("J2")
        xlRange2.Font.Bold = True
        xlRange2.EntireColumn.AutoFit()

        xlRange3 = xlWorksheet.Range("J3")
        xlRange3.Font.Bold = True
        xlRange3.EntireColumn.AutoFit()

        xlRange4 = xlWorksheet.Range("J4")
        xlRange4.Font.Bold = True
        xlRange4.EntireColumn.AutoFit()


        A = xlWorksheet.Range("A1", "A" & count & "")
        A.EntireColumn.ColumnWidth = 5
        A.Borders.LineStyle = Visible

        B = xlWorksheet.Range("B1", "B" & count & "")
        B.EntireColumn.ColumnWidth = 25
        B.Borders.LineStyle = Visible
        B.HorizontalAlignment = Excel.Constants.xlCenter

        C = xlWorksheet.Range("C1", "C" & count & "")
        C.EntireColumn.ColumnWidth = 7
        C.Borders.LineStyle = Visible
        C.HorizontalAlignment = Excel.Constants.xlCenter

        D = xlWorksheet.Range("D1", "D" & count & "")
        D.EntireColumn.ColumnWidth = 11
        D.Borders.LineStyle = Visible
        D.HorizontalAlignment = Excel.Constants.xlCenter

        E1 = xlWorksheet.Range("E1", "E" & count & "")
        E1.EntireColumn.ColumnWidth = 31
        E1.Borders.LineStyle = Visible
        E1.HorizontalAlignment = Excel.Constants.xlCenter

        F = xlWorksheet.Range("F1", "F" & count & "")
        F.EntireColumn.ColumnWidth = 11
        F.Borders.LineStyle = Visible
        F.HorizontalAlignment = Excel.Constants.xlCenter

        G = xlWorksheet.Range("G1", "G" & count & "")
        G.EntireColumn.ColumnWidth = 11
        G.Borders.LineStyle = Visible
        G.HorizontalAlignment = Excel.Constants.xlCenter

        H = xlWorksheet.Range("H1", "H" & count & "")
        H.EntireColumn.ColumnWidth = 10
        H.Borders.LineStyle = Visible
        H.HorizontalAlignment = Excel.Constants.xlCenter

        I = xlWorksheet.Range("I1", "I" & count & "")
        I.EntireColumn.ColumnWidth = 0.33
        I.Interior.Color = Color.Black

        j = xlWorksheet.Range("J1", "J" & count & "")
        j.EntireColumn.ColumnWidth = 11
        j.Borders.LineStyle = Visible

        k = xlWorksheet.Range("K1", "K" & count & "")
        k.EntireColumn.ColumnWidth = 38
        k.Borders.LineStyle = Visible

        xlWorksheet.Cells(count - 2, 5).value = "Signature______________________________"


        xlWorksheet.SaveAs(Environment.GetFolderPath(Environment.SpecialFolder.Desktop) & "\" & "OperationRoundup" & mmddyy & ".xlsx")

        xlWorkbook.Close()
        xlApp.Quit()

        xlApp = Nothing
        xlWorkbook = Nothing
        xlWorksheet = Nothing


    End Sub



    Private Function ExecuteQuery(cmd As SqlCommand, action As String) As DataTable
        Dim conString As String = ConfigurationManager.ConnectionStrings("OpRdConnectionString").ConnectionString
        Using con As New SqlConnection(conString)
            cmd.Connection = con
            Select Case action
                Case "Select"
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
        Dim cmd As New SqlCommand("Select  Id, School, Summary, CostRequested, votes FROM grants WHERE ([PrincipalApproval] = 'Yes') AND ([BoardApproval] = 'Yes') AND (Archived = 'No') order by ID")
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
                Else
                    lblStatus.Text = "The Site is Open to the Teachers"
                    btnStatus.Text = "Close Roundup"
                    status = "Open"
                    btnStatus.CssClass = "btn-success"
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



End Class