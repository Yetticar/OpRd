Imports System.Data.SqlClient
Imports System.Net.Mail
Imports System.Net


Public Class teacherpage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim field1 As String = CType(Session.Item("field1"), String)
        Session("Name") = field1

        If field1 = "" Then
            Response.Redirect("login.aspx")
        End If

        Dim conn As SqlConnection = New SqlConnection("Server=tcp:oprd.database.windows.net,1433;Data Source=oprd.database.windows.net;Initial Catalog=OpRd;Persist Security Info=False;User ID=Operation;Password=Yetticar9;Pooling=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
        Dim cmd As SqlCommand = New SqlCommand("SELECT t.username, s.name, s.phone, s.address, p.email, t.name FROM School s, Teachers t, Principal p where t.school=s.name and s.name=p.school and t.school = p.school and t.name ='" & field1 & "'", conn)
        conn.Open()

        Dim School As String = ""
        Dim username As String
        Dim name As String = ""
        Dim Password As String = ""
        Dim Type As String = ""
        Dim email As String = ""
        Dim phone As String = ""
        Dim address As String = ""



        Dim Reader As SqlDataReader = cmd.ExecuteReader()

        If Reader.HasRows Then
            While Reader.Read()
                username = Reader(0)
                School = Reader(1)
                phone = Reader(2)
                address = Reader(3)
                email = Reader(4)
                name = Reader(5)
            End While
        Else

        End If

        lblSchools1.Text = School
        lblSchoolEmail1.Text = email
        lblSchoolAddress1.Text = address
        lblSchoolPhone1.Text = phone

        txtGrantSummary.Focus()
        lblname.Text = name & "'s Grant Page"

        Dim conn1 As SqlConnection = New SqlConnection("Server=tcp:oprd.database.windows.net,1433;Data Source=oprd.database.windows.net;Initial Catalog=OpRd;Persist Security Info=False;User ID=Operation;Password=Yetticar9;Pooling=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
        Dim cmd1 As SqlCommand = New SqlCommand("SELECT TeacherName, Archived FROM Grants where Archived='No' and TeacherName ='" & field1 & "'", conn1)
        conn1.Open()
        Dim Reader1 As SqlDataReader = cmd1.ExecuteReader()

        Dim conn2 As SqlConnection = New SqlConnection("Server=tcp:oprd.database.windows.net,1433;Data Source=oprd.database.windows.net;Initial Catalog=OpRd;Persist Security Info=False;User ID=Operation;Password=Yetticar9;Pooling=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
        Dim cmd2 As SqlCommand = New SqlCommand("SELECT Available from Available", conn2)

        Dim available As String = ""
        Dim submitted As String = ""

        conn2.Open()
        Dim Reader2 As SqlDataReader = cmd2.ExecuteReader()
        If Reader2.HasRows Then
            While Reader2.Read()
                available = Reader2(0)
            End While
        Else
        End If

        available = available.Trim


        If Reader1.HasRows Then
            While Reader1.Read()
                submitted = Reader1(1)
            End While
        Else
            submitted = "None"
        End If


        If available = "Closed" Then
            lblSubmission.Visible = True
            cmdSubmit.Enabled = False
            ' lblname.Text = name & " Then has already submitted a Grant."
            lblname.ForeColor = System.Drawing.Color.Red
            txtGrantSummary.Enabled = False
            txtGrantDescription.Enabled = False
            txtCost.Enabled = False
            txtAmount.Enabled = False
            txtAffected.Enabled = False
            txtPeople.Enabled = False
            GoTo 50
        ElseIf submitted = "No" Then
            lblSubmission.Visible = False
            cmdSubmit.Enabled = False
            lblname.Text = name & " Then has already submitted a Grant."
            lblname.ForeColor = System.Drawing.Color.Red
            txtGrantSummary.Enabled = False
            txtGrantDescription.Enabled = False
            txtCost.Enabled = False
            txtAmount.Enabled = False
            txtAffected.Enabled = False
            txtPeople.Enabled = False
            GoTo 50
        Else
            lblSubmission.Visible = False
            cmdSubmit.Enabled = True
            lblname.Text = name & "'s Grant Page"
            lblname.ForeColor = System.Drawing.Color.Black
            txtGrantSummary.Enabled = True
            txtGrantDescription.Enabled = True
            txtCost.Enabled = True
            txtAmount.Enabled = True
            txtAffected.Enabled = True
            txtPeople.Enabled = True

        End If

50:
    End Sub



    Protected Sub cmdSubmit_Click(sender As Object, e As EventArgs) Handles cmdSubmit.Click
        Dim conn As SqlConnection = New SqlConnection("Server=tcp:oprd.database.windows.net,1433;Data Source=oprd.database.windows.net;Initial Catalog=OpRd;Persist Security Info=False;User ID=Operation;Password=Yetticar9;Pooling=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
        Dim cmd As SqlCommand = New SqlCommand("Select MAX(Id) from Grants", conn)
        Dim ID As Int16

        conn.Open()
        Dim Reader As SqlDataReader = cmd.ExecuteReader()
        Dim field1 As String = CType(Session.Item("field1"), String)
        If Reader.HasRows Then
            While Reader.Read()
                ID = Reader(0)
            End While
        End If

        ID = ID + 1

        Dim TeacherName As String = lblname.Text
        Dim School As String = lblSchools1.Text
        Dim Grant As String = "temp" & ID
        Dim TotalCost As String = txtCost.Text
        Dim Requested As String = txtAmount.Text
        Dim Description As String = txtGrantDescription.Text
        Dim PeopleAffected As String = txtPeople.Text
        Dim Grades As String = txtAffected.Text
        Dim Summary As String = txtGrantSummary.Text
        Dim Submitted As String = Today.ToString("MM/dd/yyyy")
        Dim Votes As Integer = 0
        Dim Principal As String = "No"
        Dim Board As String = "No"
        Dim Archived As String = "No"
        Dim Period As String = "NA"

        Dim conn1 As SqlConnection = New SqlConnection("Server=tcp:oprd.database.windows.net,1433;Data Source=oprd.database.windows.net;Initial Catalog=OpRd;Persist Security Info=False;User ID=Operation;Password=Yetticar9;Pooling=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
        Dim cmd1 As SqlCommand = New SqlCommand("Insert into Grants (ID, TeacherName, School, Grant#, TotalCost, CostRequested, Description, PeopleAffected, Grades, Summary, Submitted, Votes, [PrincipalApproval], [BoardApproval], Archived, Period) values ('" & ID & "','" & field1 & "','" & School & "','" & Grant & "','" & TotalCost & "','" & Requested & "','" & Description & "','" & PeopleAffected & "','" & Grades & "','" & Summary & "','" & Submitted & "', '" & Votes & "','" & Principal & "','" & Board & "','" & Archived & "','" & Period & "')", conn1)
        conn1.Open()
        cmd1.ExecuteNonQuery()

        Dim conn2 As SqlConnection = New SqlConnection("Server=tcp:oprd.database.windows.net,1433;Data Source=oprd.database.windows.net;Initial Catalog=OpRd;Persist Security Info=False;User ID=Operation;Password=Yetticar9;Pooling=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
        Dim cmd2 As SqlCommand = New SqlCommand("select school, email from principal where school = '" & School & "'", conn2)
        conn2.Open()

        Dim Reader2 As SqlDataReader = cmd2.ExecuteReader()
        Dim emailprincipal As String
        If Reader2.HasRows Then
            While Reader2.Read()
                emailprincipal = Reader2(1)
            End While
        End If

        Dim smtp As New SmtpClient("mail.cullmanec.com", 25)
        smtp.Credentials = New NetworkCredential("uaserver@cullmanec.com", "uaserver")
        smtp.Send("communications@cullmanec.com", "joshc@cullmanec.com", "Operation Roundup Grant has been submitted-Please Review", field1 & " has submitted a Operation Roundup Grant.  Please review and approve or decline before the deadline. - http://operationroundup.azurewebsites.net/Login.aspx")



        Response.Redirect("teacherpage.aspx")
    End Sub

End Class