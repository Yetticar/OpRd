<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="teacherpage.aspx.vb" Inherits="jc.teacherpage" %>

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

	.auto-style1 {
		width: 685px;
		height: 689px;
		margin-left: 71px;
	}
	.auto-style2 {
		height: 26px;
		width: 643px;
	}
	.auto-style3 {
		height: 24px;
		width: 643px;
	}
	.auto-style5 {
		height: 684px;
	}
	.auto-style6 {
		height: 125px;
	}
	.auto-style7 {
		height: 30px;
		width: 644px;
		margin-left: 8;
	}
	.auto-style8 {
		height: 30px;
		width: 643px;
	}

	.auto-style9 {
		font-family: Arial;
		color: #FF0000;
	}
	.auto-style10 {
		height: 53px;
		margin-top: 6px;
	}

	.auto-style11 {
		font-family: Arial;
		font-size: large;
	}

	.auto-style12 {
		margin-left: 0;
	}

	.auto-style13 {
		width: 98%;
	}

	.auto-style14 {
		font-family: Arial;
		color: #FFFFFF;
	}

	</style>     

	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
	   
	   

	<body style="margin:0; padding:0; background-color: #c3ced9; height: 989px; width:100%;">
					

		 <!--   <div id="header">
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
				   <a class="navbar-brand" href="teacherpage.aspx">OR</a></div>
				  <div class="collapse navbar-collapse" id="myNavbar2">
				  <ul class="nav navbar-nav">
							 
				  </ul>
					  <ul class="nav navbar-nav navbar-right">
				 <li><a href="Login.aspx"><span class="glyphicon glyphicon-user"></span> Log Out</a></li>
				 </ul>
				
				 </div>
				 </div>
				 </nav>
					</div>
		   
			 
					<div class="auto-style1">
		<form class="form-horizontal" runat="server">
			<fieldset class="auto-style5">
				<legend class="auto-style13">&nbsp;&nbsp;&nbsp;<asp:Label ID="lblname" runat="server" CssClass="auto-style14"></asp:Label>
					<span class="auto-style14">&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<asp:Label ID="lblSubmission" runat="server" CssClass="auto-style9" Text="Grant submission is currently disabled"></asp:Label>
				</legend>
				<div>
				  <ul class="auto-style6">
					  <li class="auto-style2">&nbsp; School Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						  <asp:Label ID="lblSchoolEmail1" runat="server" Text="Label"></asp:Label>
					  </li>
					  <li class="auto-style8">&nbsp; School Phone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						  <asp:Label ID="lblSchoolPhone1" runat="server" Text="Label"></asp:Label>
					  </li>
					  <li class="auto-style7">&nbsp; School Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						  <asp:Label ID="lblSchoolAddress1" runat="server" Text="Label"></asp:Label>
					  </li>
					 <li class="auto-style3">&nbsp; School&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						 <asp:Label ID="lblSchools1" runat="server"></asp:Label>
					  </li>
				 </ul>
				</div>                       
					<label>Grant Summary:</label>
					<div>
						<asp:textbox ID="txtGrantSummary" runat="server" Placeholder="Enter Grant Summary..." Font-Size="14px" ForeColor="Gray" Height="20px" Width="675px" CausesValidation="True" TabIndex="1" TextMode="SingleLine" onkeypress="return this.value.length<=30"></asp:textbox>
				   </div>
				<asp:RequiredFieldValidator ID="RequiredFieldValidatorsum" runat="server"
					ControlToValidate="txtGrantSummary"
					ErrorMessage="Required field!"
					ForeColor="Red"> </asp:RequiredFieldValidator>
				<br />
					<label>Grant Description:</label>
					<div>
						<asp:textbox ID="txtGrantDescription" runat="server" Placeholder="Enter Grant Description..." Font-Size="14px" ForeColor="Gray" Height="60px" Width="675px" CausesValidation="True" TabIndex="2" TextMode="MultiLine" onkeypress="return this.value.length<=300"></asp:textbox>
				   </div>
				<asp:RequiredFieldValidator ID="RequiredFieldValidatordesc" runat="server"
					ControlToValidate="txtGrantDescription"
					ErrorMessage="Required field!"
					ForeColor="Red"> </asp:RequiredFieldValidator>
				<br />
					<label>Total Cost:</label>
					<div>
						<asp:textbox ID="txtCost" runat="server" Placeholder="Enter Total Cost..." Font-Size="14px" ForeColor="Gray" Height="31px" Width="300px" CausesValidation="True" TabIndex="3" onkeypress="return this.value.length<=10"></asp:textbox>
				   </div>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
					ControlToValidate="txtCost"
					ErrorMessage="Required field!"
					ForeColor="Red"> </asp:RequiredFieldValidator>
				<br />
					<label>Amount Requested:</label>
					<div>
						<asp:textbox ID="txtAmount" runat="server" Placeholder="Enter Amount Requested..." Font-Size="14px" ForeColor="Gray" Height="31px" Width="300px" CausesValidation="True" TabIndex="4" onkeypress="return this.value.length<=10"></asp:textbox>
				   </div>
				<asp:RequiredFieldValidator ID="RequiredFieldValidatoramount" runat="server"
					ControlToValidate="txtAmount"
					ErrorMessage="Required field!"
					ForeColor="Red"> </asp:RequiredFieldValidator>
				<br />
					  <label>Grades Affected:</label>
					<div>
						<asp:textbox ID="txtAffected" runat="server" Placeholder="Enter Grades Affected..." Font-Size="14px" ForeColor="Gray" Height="31px" Width="300px" CausesValidation="True" TabIndex="5" onkeypress="return this.value.length<=25"></asp:textbox>
				   </div>
				<asp:RequiredFieldValidator ID="RequiredFieldValidatoraffected" runat="server"
					ControlToValidate="txtAffected"
					ErrorMessage="Required field!"
					ForeColor="Red"> </asp:RequiredFieldValidator>
				<br />
					  <label>Number of People Affected:</label>
					<div>                       
						<asp:textbox ID="txtPeople" runat="server" Placeholder="Enter Number of People Affected..." Font-Size="14px" ForeColor="Gray" Height="31px" Width="300px" CausesValidation="True" TabIndex="6" onkeypress="return this.value.length<=25"></asp:textbox>
						<br />
				   </div>
				<asp:RequiredFieldValidator ID="RequiredFieldValidatorpeople" runat="server"
					ControlToValidate="txtPeople"
					ErrorMessage="Required field!"
					ForeColor="Red"> </asp:RequiredFieldValidator>
				<br />
					<div class="auto-style10">               
						 <asp:Button ID="cmdSubmit" runat="server" Height="42px" Text="Submit Grant" Width="142px" class="btn btn-primary" TabIndex="7" />
						 <br />
						 <br />
						 <br />
						 <span class="auto-style11">Grants Pending Approval by Operation Roundup Board</span><br />
						 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="143%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="col-xs-offset-0" EmptyDataText="No Grants at this time">
							 <Columns>					 
								 <asp:BoundField DataField="School" ItemStyle-Width="75" HeaderText="School" SortExpression="School" />
								 <asp:BoundField DataField="TeacherName" ItemStyle-Width="50" HeaderText="Teacher Name" SortExpression="TeacherName" />
								 <asp:BoundField DataField="CostRequested" ItemStyle-Width="20" HeaderText="Cost Requested" SortExpression="CostRequested" />
								 <asp:BoundField DataField="Summary" ItemStyle-Width="50" HeaderText="Summary" SortExpression="Summary" />
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
						 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OpRdConnectionString2 %>" SelectCommand="SELECT [School], [TeacherName], [Grant#] AS column1, [CostRequested], [Summary], [Description], [Submitted] FROM [grants] WHERE (([TeacherName] = @TeacherName) AND ([Archived] = @Archived)) ORDER BY [Submitted] ASC">
							 <SelectParameters>
								 <asp:SessionParameter Name="TeacherName" SessionField="Name" Type="String" />
							 	<asp:Parameter DefaultValue="No" Name="Archived" Type="String" />
							 </SelectParameters>
						 </asp:SqlDataSource>
						 <br />
						 <br />
						 <span class="auto-style11">Grants Approved by Operation Roundup Board</span><br />
						 <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="143%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style12" EmptyDataText="No grants at this time">
							 <Columns>
								  <asp:BoundField DataField="column1" ItemStyle-Width="25" HeaderText="Grant #" SortExpression="column1" />
								 <asp:BoundField DataField="School" ItemStyle-Width="75" HeaderText="School" SortExpression="School" />
								 <asp:BoundField DataField="TeacherName" ItemStyle-Width="50" HeaderText="Teacher Name" SortExpression="TeacherName" />
								 <asp:BoundField DataField="CostRequested" ItemStyle-Width="20" HeaderText="Cost Requested" SortExpression="CostRequested" />
								 <asp:BoundField DataField="Summary" ItemStyle-Width="50" HeaderText="Summary" SortExpression="Summary" />
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
						 <br />
						 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OpRdConnectionString %>" SelectCommand="SELECT [School], [TeacherName], [Grant#] AS column1, [CostRequested], [Summary], [Description], [Submitted] FROM [grants] WHERE (([TeacherName] = @TeacherName) AND ([Archived] = @Archived) AND ([BoardApproval] = @BoardApproval)) ORDER BY [Submitted] ASC">
							 <SelectParameters>
								 <asp:SessionParameter Name="TeacherName" SessionField="Name" Type="String" />
								 <asp:Parameter DefaultValue="Yes" Name="Archived" Type="String" />
								 <asp:Parameter DefaultValue="Yes" Name="BoardApproval" Type="String" />
							 </SelectParameters>
						 </asp:SqlDataSource>
						 <br />
					</div>
					
			  
				
			</fieldset>
		</form>

	</div>    
	
</body>
</html>                

