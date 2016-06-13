<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Archived.aspx.vb" Inherits="jc.Teachers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Operation Roundup</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">   


<style type="text/css">
     
        #header {
            width: 100%;
            height:47px;
            display:block;
            background-color:#2FA4E7;
        }
   
        #menu {
            width: 100%;
            background-color:rgba(130, 179, 211, 0.59);
            margin: 0;
        padding: 0;
        }
        #container {
            width: 100%;
            height:515px;
            background-color:rgba(0, 0, 255, 0.00);
        margin-top: 2px;
    }
      ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
        overflow: hidden;
        
        height:40px;
        }

       li {
           float: left;
           border-right: 1px solid #bbb;
           margin: 0;
          padding: 0;
      
    }

       li:last-child {
         border-right: none;
          }

       li a {
           display: block;
           color: white;
           text-align: center;
           padding: 14px 16px;
           text-decoration: none;
            }

       li a:hover {
           background-color: #308ec3;
            }

       h1 {
           
           font-family: verdana;
           font-size: 150%;
           margin-bottom:0;
           margin-top:0;
           padding: 0;
           background-color: #eef2f6;

}
       .GridHeader
{
    text-align:center !important;    
}

    label{
   display : inline; 
   text-align: right;
}

    .navbar-header {
        height: 31px;
    }

    .auto-style7 {
        margin-left: 22px;
    }

    .auto-style8 {
        margin-left: 23px;
    }

    </style>     

    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   
    <meta name="viewport" content="width=device-width, initial-scale=1" />

</head>   
    <body style="margin:0; padding:0; background-color: rgba(142, 169, 186, 0.59);">
           <form id="form1" runat="server">            

           <!--  <div id="header">
                <nav class="navbar navbar-default">
                <div class="container">
                <div class="navbar-header">
                 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>                        
                   </button>
                   <a class="navbar-brand" href="WebForm1.aspx">OR</a></div>
                  <div class="collapse navbar-collapse" id="myNavbar1">
                  <ul class="nav navbar-nav">
                  <li><a href="ForgotUsername.aspx">Forgot Username</a></li>
                  <li><a href="ForgotPassword.aspx"">Forgot Password</a></li>
                  </ul>
                 <ul class="nav navbar-nav navbar-right">
                 <li><a href="Register.aspx"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                 </ul>
                 </div>
                 </div>
                 </nav>
            </div> -->

                <div id="header2">
                <nav class="navbar navbar-default" style="background-color:#eef2f6">
                <div class="container">
                <div class="navbar-header">
                 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar2">
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>                        
                   </button>
                    <a class="navbar-brand" href="WebForm1.aspx">OR</a>
                   </div>
                  <div class="collapse navbar-collapse" id="myNavbar2">
                  <ul class="nav navbar-nav">
                  <li><a href="Users.aspx">Users</a></li>
                  <li><a href="Schools.aspx">Schools</a></li>
                  <li><a href="Archived.aspx"">Archived</a></li>                 
                  </ul>
                      <ul class="nav navbar-nav navbar-right">
                 <li><a href="Login.aspx"><span class="glyphicon glyphicon-user"></span>Log out</a></li>
                 </ul>
                
                 </div>
                 </div>
                 </nav>
            </div>                     

           <div class="auto-style7">
               
           <strong> Archived Grants</strong>&nbsp;&nbsp;<br />
               <asp:GridView ID="GridView2" runat="server" AllowSorting="True" HeaderStyle-CssClass="GridHeader" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" CssClass="auto-style8" Width="75%" CellSpacing="1" ForeColor="#333333">
                   
                   <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                   
                   <Columns >                       
                       <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ItemStyle-HorizontalAlign="Center" >
<ItemStyle HorizontalAlign="Center" Width="50px"></ItemStyle>
                       </asp:BoundField>
                       <asp:BoundField DataField="School" HeaderText="School" SortExpression="School" ItemStyle-Width="200px" ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center" Width="200px"></ItemStyle>
                       </asp:BoundField>
                       <asp:BoundField DataField="TeacherName" HeaderText="Teacher Name" SortExpression="TeacherName" ItemStyle-Width="200px" ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center" Width="200px"></ItemStyle>
                       </asp:BoundField>
                       <asp:BoundField DataField="Grant#" HeaderText="Grant #" SortExpression="Grant#" ItemStyle-Width="200px" ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center" Width="200px"></ItemStyle>
                       </asp:BoundField>
                       <asp:BoundField DataField="CostRequested" HeaderText="Cost Requested" SortExpression="CostRequested" ItemStyle-Width="200px" ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center" Width="200px"></ItemStyle>
                       </asp:BoundField>
                       <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" ItemStyle-Width="200px" ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center" Width="200px"></ItemStyle>
                       </asp:BoundField>
                       <asp:BoundField DataField="Summary" HeaderText="Summary" SortExpression="Summary" ItemStyle-Width="200px" ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center" Width="200px"></ItemStyle>
                       </asp:BoundField>
                       <asp:BoundField DataField="Submitted" HeaderText="Submitted" SortExpression="Submitted" ItemStyle-Width="200px" ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center" Width="200px"></ItemStyle>
                       </asp:BoundField>
                   </Columns>
                   <EditRowStyle BackColor="#999999" />
                   <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                   <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                   <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                   <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                   <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                   <SortedAscendingCellStyle BackColor="#E9E7E2" />
                   <SortedAscendingHeaderStyle BackColor="#506C8C" />
                   <SortedDescendingCellStyle BackColor="#FFFDF8" />
                   <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
               </asp:GridView>
               <br />
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OpRdConnectionString %>" SelectCommand="SELECT Id, School, TeacherName, Grant#, CostRequested, Description, Summary, Submitted FROM grants WHERE ([BoardApproval]='Yes')"></asp:SqlDataSource>
           
               <br />
           
        </div>
          
    
       </form>
        </body>
</html>
