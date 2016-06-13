<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Schools.aspx.vb" Inherits="jc.Schools" %>

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

    label{
   display : inline; 
   text-align: right;
}

    .navbar-header {
        height: 31px;
    }

    .auto-style7 {
        margin-left: 37px;
    }

    .auto-style8 {
        font-family: Arial;
        font-size: large;
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
               
           <strong>
               <br />
               <span class="auto-style8">Schools</span></strong><span class="auto-style8"> </span>
               <br />
               <div class="text-center">
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="75%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" >
                   <Columns>
                       <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                       <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                       <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                   </Columns>
                   <FooterStyle BackColor="White" ForeColor="#000066" />
                   <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                   <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                   <RowStyle ForeColor="#000066" />
                   <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                   <SortedAscendingCellStyle BackColor="#F1F1F1" />
                   <SortedAscendingHeaderStyle BackColor="#007DBB" />
                   <SortedDescendingCellStyle BackColor="#CAC9C9" />
                   <SortedDescendingHeaderStyle BackColor="#00547E" />
               </asp:GridView>
               </div>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OpRdConnectionString %>" SelectCommand="SELECT [Name], [Phone], [Address] FROM [school] ORDER BY [Name]"></asp:SqlDataSource>
               <br />
            
               <br />
           
        </div>
          
    
       </form>
        </body>
</html>

