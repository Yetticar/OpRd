<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Principal.aspx.vb" Inherits="jc.Principal" %>

<!DOCTYPE html>

<html lang="en">

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

	.auto-style6 {
		height: 569px;
		text-align: left;
	}
	
	.auto-style9 {
		height: 456px;
		margin-bottom: 0;
	}

	.auto-style10 {
		margin-left: 24px;
	}
	.auto-style11 {
		margin-left: 19px;
		font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
		font-size: 11pt;
		background-color: #EEF2F6;
		color: #006699;
		font-weight: bold;
	}

	.auto-style12 {
		font-family: Arial;
		font-size: x-large;
		color: #FFFFFF;
	}

	.auto-style13 {
		margin-left: 26px;
	}

	.auto-style14 {
		font-family: Arial;
		color: #FFFFFF;
	}
	.auto-style16 {
		font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
		color: #FFFFFF;
		font-size: medium;
		font-weight: bold;
	}
	.auto-style17 {
		font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
		color: #FFFFFF;
		font-size: medium;
	}
	.auto-style18 {
		font-size: medium;
		font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
	}
	.auto-style19 {
		color: #FFFFFF;
	}

	.auto-style20 {
		text-align: center;
		height: 493px;
	}

	</style>     

	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
	   
	   

	<body style="margin:0; padding:0; background-color: #acb4bb; height: 679px; width:100%;">
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
					<a class="navbar-brand" href="Principal.aspx">OR</a>
				   </div>
				  <div class="collapse navbar-collapse" id="myNavbar2">
				  <ul class="nav navbar-nav">
								
				  </ul>
					  <ul class="nav navbar-nav navbar-right">
				 <li><a href="Login.aspx"><span class="glyphicon glyphicon-user"></span>Log out</a></li>
				 </ul>
				
				 </div>
				 </div>
				 </nav>
			</div>    


			 
			
			   
			   
			 
			<div id="container" class="auto-style9">                    
				
				&nbsp;&nbsp;&nbsp; 
				<asp:Label ID="lblStatus" runat="server" CssClass="auto-style12" ForeColor="White"></asp:Label>
			
			<br />
			<br />
		
		   <div ; class="auto-style6" >
			   <br />
				
			   <strong>&nbsp;&nbsp;&nbsp; </strong>
			   <span class="auto-style16">Please Approval or Reject These Submitted Grants</span><strong>&nbsp;&nbsp;<br /></strong>
			   <br />
			   <div>
				   <div class="text-center">
				   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDataBound = "OnRowDataBound" datakeynames="Id" Width ="95%" CssClass="auto-style10" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" EmptyDataText="No Grants at this time ">
					   <Columns>
						   <asp:TemplateField HeaderText="Id" visible="false">
							<ItemTemplate>
							<asp:Label runat="server" Text='<%# Eval("ID") %>'></asp:Label>
							<asp:TextBox ID="txtID" runat="server" Text='<%# Eval("ID") %>' Visible="false"></asp:TextBox>
							</ItemTemplate>
						<FooterStyle HorizontalAlign="Center" />                        
						<HeaderStyle HorizontalAlign="Center" />
						<ItemStyle Width="50px" HorizontalAlign="Center" />
					</asp:TemplateField>

						   <asp:TemplateField HeaderText="Teacher" ItemStyle-Width="75px">
						<ItemTemplate>
							<asp:Label runat="server" style="text-align: right; display:inline;" Text='<%# Eval("TeacherName") %>'></asp:Label>
							<asp:TextBox ID="txtTeacherName" runat="server" Text='<%# Eval("Teachername") %>' Visible="false"></asp:TextBox>
						</ItemTemplate>
						<ItemStyle Width="75px" />
					</asp:TemplateField>

					<asp:TemplateField HeaderText="School" ItemStyle-Width="100">
						<ItemTemplate>
							<asp:Label runat="server" Text='<%# Eval("School") %>'></asp:Label>
							<asp:TextBox ID="txtSchool" runat="server" Text='<%# Eval("School") %>' Visible="false"></asp:TextBox>
						</ItemTemplate>
						<HeaderStyle HorizontalAlign="Center" />
						<ItemStyle Width="100px" />
					</asp:TemplateField>

					<asp:TemplateField HeaderText="Summary" ItemStyle-Width="150">
						<ItemTemplate>
							<asp:Label runat="server" style="text-align: right; display:inline;" Text='<%# Eval("Summary") %>'></asp:Label>
							<asp:TextBox ID="txtSummary" runat="server" Text='<%# Eval("Summary") %>' Visible="false"></asp:TextBox>
						</ItemTemplate>
						<ItemStyle Width="150px" />
					</asp:TemplateField>

					<asp:TemplateField HeaderText="Description" ItemStyle-Width="300">
						<ItemTemplate>
							<asp:Label runat="server" style="text-align: right; display:inline;" Text='<%# Eval("Description") %>'></asp:Label>
							<asp:TextBox ID="txtDescription" runat="server" Text='<%# Eval("Description") %>' Visible="false"></asp:TextBox>
						</ItemTemplate>
						<ItemStyle Width="300px" />
					</asp:TemplateField>
					<asp:TemplateField HeaderText="Cost Requested" ItemStyle-Width="30">
						<ItemTemplate>
							<asp:Label runat="server" Text='<%# Eval("CostRequested") %>'></asp:Label>
							<asp:TextBox ID="txtCostRequested" runat="server" Text='<%# Eval("CostRequested") %>' Visible="false"></asp:TextBox>
						</ItemTemplate>
						<ItemStyle Width="30px" />
					</asp:TemplateField>     
							  
						 <asp:TemplateField HeaderText="Approved?" ItemStyle-Width = "150">
						 <ItemTemplate>
						 <asp:Label ID = "lblCountry" runat="server" Text='<%# Eval("PrincipalApproval") %>' Visible ="false"></asp:Label>
						 <asp:DropDownList ID="ddlCountries" runat="server" Visible = "true">
						 </asp:DropDownList>
						 </ItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
						  </asp:TemplateField>
							
						  
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
			   </div>
			   
			   <br />
			 
			   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 
			   <asp:Button ID="cmdApprove" runat="server" Height="72px" Text="Approve/Deny Grants" Width="191px" CssClass="auto-style11" />
			   <br />
			   <br />
&nbsp;&nbsp;&nbsp;<span class="auto-style17"><b> </b>
				
			   <strong>Current Approved Applications For This Submission Interval&nbsp;</strong></span><br />
				&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			   <br />
			   <div class="auto-style20">
			   <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Width ="95%" CssClass="auto-style10" DataSourceID="SqlDataSource2"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" EmptyDataText="No Grants at this time">      
				<Columns>
						   <asp:TemplateField HeaderText="Id" visible="false">
							<ItemTemplate>
							<asp:Label runat="server" Text='<%# Eval("ID") %>'></asp:Label>
							<asp:TextBox ID="txtID" runat="server" Text='<%# Eval("ID") %>' Visible="false"></asp:TextBox>
							</ItemTemplate>
						<FooterStyle HorizontalAlign="Center" />                        
						<HeaderStyle HorizontalAlign="Center" />
						<ItemStyle Width="50px" HorizontalAlign="Center" />
					</asp:TemplateField>

						   <asp:TemplateField HeaderText="Teacher" ItemStyle-Width="75px">
						<ItemTemplate>
							<asp:Label runat="server" style="text-align: right; display:inline;" Text='<%# Eval("TeacherName") %>'></asp:Label>
							<asp:TextBox ID="txtTeacherName" runat="server" Text='<%# Eval("Teachername") %>' Visible="false"></asp:TextBox>
						</ItemTemplate>
						<ItemStyle Width="75px" />
					</asp:TemplateField>

					<asp:TemplateField HeaderText="School" ItemStyle-Width="100">
						<ItemTemplate>
							<asp:Label runat="server" Text='<%# Eval("School") %>'></asp:Label>
							<asp:TextBox ID="txtSchool" runat="server" Text='<%# Eval("School") %>' Visible="false"></asp:TextBox>
						</ItemTemplate>
						<HeaderStyle HorizontalAlign="Center" />
						<ItemStyle Width="100px" />
					</asp:TemplateField>

					<asp:TemplateField HeaderText="Summary" ItemStyle-Width="150">
						<ItemTemplate>
							<asp:Label runat="server" style="text-align: right; display:inline;" Text='<%# Eval("Summary") %>'></asp:Label>
							<asp:TextBox ID="txtSummary" runat="server" Text='<%# Eval("Summary") %>' Visible="false"></asp:TextBox>
						</ItemTemplate>
						<ItemStyle Width="150px" />
					</asp:TemplateField>

					<asp:TemplateField HeaderText="Description" ItemStyle-Width="300">
						<ItemTemplate>
							<asp:Label runat="server" style="text-align: right; display:inline;" Text='<%# Eval("Description") %>'></asp:Label>
							<asp:TextBox ID="txtDescription" runat="server" Text='<%# Eval("Description") %>' Visible="false"></asp:TextBox>
						</ItemTemplate>
						<ItemStyle Width="300px" />
					</asp:TemplateField>
					<asp:TemplateField HeaderText="Cost Requested" ItemStyle-Width="30">
						<ItemTemplate>
							<asp:Label runat="server" Text='<%# Eval("CostRequested") %>'></asp:Label>
							<asp:TextBox ID="txtCostRequested" runat="server" Text='<%# Eval("CostRequested") %>' Visible="false"></asp:TextBox>
						</ItemTemplate>
						<ItemStyle Width="30px" />
					</asp:TemplateField>     
							  
						 <asp:TemplateField HeaderText="Approved?" ItemStyle-Width = "150">
						 <ItemTemplate>
						 <asp:Label  runat="server" Text='<%# Eval("PrincipalApproval") %>' Visible ="True"></asp:Label>
						 <asp:TextBox ID="ddlCountries" runat="server" Visible = "false">
						 </asp:TextBox>
						 </ItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
						  </asp:TemplateField>
							
						  
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
			   	   <div class="text-left">
					   <br />
					   <br />
				
			   <strong>&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style14"> </span><span class="auto-style19"><span class="auto-style18">Archived Grants</span></span><span class="auto-style14"><br />
					   </span>&nbsp;</strong></div>
				   <asp:GridView ID="GridView3" runat="server" Width ="95%" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style13" DataSourceID="SqlDataSource3" EmptyDataText="No Grants at this time" >
					   <Columns>
						 

						  					 
								 <asp:BoundField DataField="School" ItemStyle-Width="50" HeaderText="School" SortExpression="School" />
								 <asp:BoundField DataField="column1" ItemStyle-Width="50" HeaderText="Grant #" SortExpression="column1" />
								 <asp:BoundField DataField="TeacherName" ItemStyle-Width="50" HeaderText="Teacher Name" SortExpression="TeacherName" />
								 <asp:BoundField DataField="CostRequested" ItemStyle-Width="10" HeaderText="Cost Requested" SortExpression="CostRequested" />
								 <asp:BoundField DataField="Summary" ItemStyle-Width="75" HeaderText="Summary" SortExpression="Summary" />
								 <asp:BoundField DataField="Description" ItemStyle-Width="200" HeaderText="Description" SortExpression="Description" />
								 <asp:BoundField DataField="Submitted" ItemStyle-Width="25" HeaderText="Submitted" SortExpression="Submitted" />
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
				   <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:OpRdConnectionString %>" SelectCommand="SELECT [School], [Grant#] AS column1, [TeacherName], [CostRequested], [Summary], [Description], [Submitted] FROM [grants] WHERE (([School] = @School) AND ([BoardApproval] = @BoardApproval)) ORDER BY [Submitted]">
					   <SelectParameters>
						   <asp:SessionParameter Name="School" SessionField="Name" Type="String" />
						   <asp:Parameter DefaultValue="Yes" Name="BoardApproval" Type="String" />
					   </SelectParameters>
				   </asp:SqlDataSource>
				   <br />
				   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OpRdConnectionString %>" SelectCommand="SELECT Id, TeacherName, School, CostRequested, Summary, Description, PrincipalApproval FROM grants WHERE ([School] = @School) AND (PrincipalApproval = 'No') and Archived='No'">
					   <SelectParameters>
								 <asp:SessionParameter Name="School" SessionField="Name" Type="String" />
					 </SelectParameters>
				   </asp:SqlDataSource>
			   	<br />
				   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OpRdConnectionString %>" SelectCommand="SELECT Id, TeacherName, School, CostRequested, Summary, Description, PrincipalApproval FROM grants WHERE ([School] = @School) AND PrincipalApproval = 'Yes' and Archived = 'No'">
		 <SelectParameters>
						 <asp:SessionParameter Name="School" SessionField="Name" Type="String" />					 	
		 </SelectParameters>
		   </asp:SqlDataSource>
			   
			   </div>
			   <br />
			  
		</div>
	 </div>
			   
	</form>
		   </body>
</html>
