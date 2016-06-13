<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="pending.aspx.vb" Inherits="jc.pending" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Pending Principal Approval</title>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<style type="text/css">
		.auto-style1 {
			margin-left: 46px;
		}
	</style>
</head>
<body>
	<form id="form1" runat="server">
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
				  <li><a href="pending.aspx">Pending Principal Approval</a></li>
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
	<div>
	
		<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="95%" CssClass="auto-style1" EmptyDataText="No Grants at this time">
			<Columns>
				<asp:BoundField DataField="Id" HeaderText="Id"  SortExpression="Id" >
				<ItemStyle Width="50px" />
				</asp:BoundField>
				<asp:BoundField DataField="School" HeaderText="School" SortExpression="School" >
				<ItemStyle Width="100px" />
				</asp:BoundField>
				<asp:BoundField DataField="Summary" HeaderText="Summary" SortExpression="Summary" >
				<ItemStyle Width="100px" />
				</asp:BoundField>
				<asp:BoundField DataField="CostRequested" HeaderText="CostRequested" SortExpression="CostRequested" >
				<ItemStyle Width="50px" />
				</asp:BoundField>
				<asp:BoundField DataField="TotalCost" HeaderText="TotalCost" SortExpression="TotalCost">
				<ItemStyle Width="50px" />
				</asp:BoundField>
				<asp:BoundField DataField="PeopleAffected" HeaderText="PeopleAffected" SortExpression="PeopleAffected">
				<ItemStyle Width="50px" />
				</asp:BoundField>
				<asp:BoundField DataField="Grades" HeaderText="Grades" SortExpression="Grades">
				<ItemStyle Width="50px" />
				</asp:BoundField>
				<asp:BoundField DataField="Submitted" HeaderText="Submitted" SortExpression="Submitted">
				<ItemStyle Width="50px" />
				</asp:BoundField>
			</Columns>
		</asp:GridView>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OpRdConnectionString %>" SelectCommand="SELECT Id, School, Summary, CostRequested, TotalCost, PeopleAffected, Grades, Submitted FROM grants WHERE (PrincipalApproval = 'No') AND (BoardApproval = 'No') AND (Archived = 'No') ORDER BY School"></asp:SqlDataSource>
	
	</div>
	</form>
</body>
</html>
