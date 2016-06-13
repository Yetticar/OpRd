<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Finalize.aspx.vb" Inherits="jc.WebForm3" %>
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

	.auto-style3 {
		font-family: Arial;
		font-size: medium;
	}
	
	.auto-style6 {
		height: 404px;
		text-align: center;
		margin-top: 32px;
	}
	
	.auto-style8 {
		color: #000000;
	}

	.auto-style9 {
		height: 558px;
		margin-bottom: 0;
	}

	.auto-style10 {
		height: 789px;
	}

	.auto-style11 {
		margin-left: 6px;
		margin-top: 0;
		height: 127px;
		width: 345px;
		margin-right: 0px;
		text-align: left;
	}

	.auto-style12 {
		margin-top: 0px;
	}
	
	.auto-style13 {
		margin-left: 27px;
	}
	
	.auto-style14 {
		margin-left: 0px;
	}
	
	</style>     

	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
   
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<html lang="en">

<body style="margin:0; padding:0; background-color: rgb(188, 204, 214); height: 100%; width:100%; ">
		   <form id="form1" runat="server" class="auto-style10">            

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


			 
			
			   
			   
			 
			<div id="container" class="auto-style9">                    
				
				&nbsp;&nbsp;&nbsp; <asp:Label ID="lblStatus"  runat="server" Font-Bold="True" Height="32px" Text="Status is Unavailable for Grant Submission" Width="317px"></asp:Label>
				<asp:Button ID="btnStatus" runat="server" Height="50px" Text="Turn On/Off" Width="142px" />
			
			<br />
			<br />
		    
			<div style="background-color:ghostwhite; opacity:0.8" class="auto-style11";  >
				&nbsp;&nbsp;<br />
&nbsp;&nbsp;
			<asp:Label ID="Label1" runat="server" style="font-weight: 700" Text="Finalize Amount"></asp:Label>
			:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
			<asp:Label ID="lblAmount" runat="server" TabIndex="2"></asp:Label>
				<br />
				<br />
			
				&nbsp;&nbsp;
			
			<asp:Label ID="Label2" runat="server" style="font-weight: 700" Text="Finale # Approved:"></asp:Label>
			:&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
			<asp:Label ID="lblCount" runat="server" TabIndex="2"></asp:Label>
			<br />&nbsp;&nbsp; <asp:Label ID="Label3" runat="server" Font-Bold="True" Height="20px" Text="Required Votes:" CssClass="auto-style12"></asp:Label>
			
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
			<asp:TextBox ID="txtVotes" runat="server" Height="26px" style="text-align:center; margin-top: 9px;" TabIndex="1" Width="27px" Enabled="False" CssClass="auto-style14">6</asp:TextBox>
				&nbsp;
				<br />
&nbsp;&nbsp;&nbsp;&nbsp;
				<br />
					
	  
	  
			</div>

				<div  class="auto-style6" >
		

			   	    <div class="text-left">
		

			   	 <span class="auto-style3">
			   	 <strong>
			   Current Applications&nbsp;&nbsp;<br />
			   </strong></span>
					<br />
					</div>
					<div class="text-center">
						<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style13" DataSourceID="SqlDataSource1" Width="95%">
							<Columns>
								<asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
								<asp:BoundField DataField="School" HeaderText="School" SortExpression="School" />
								<asp:BoundField DataField="Summary" HeaderText="Summary" SortExpression="Summary" />
								<asp:BoundField DataField="CostRequested" HeaderText="CostRequested" SortExpression="CostRequested" />
								<asp:BoundField DataField="Votes" HeaderText="Votes" SortExpression="Votes" />
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
						<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OpRdConnectionString %>" SelectCommand="Select  Id, School, Summary, CostRequested, Votes FROM grants WHERE ([PrincipalApproval] = 'Yes') AND ([BoardApproval] = 'Yes') AND (Archived = 'No') order by Id"></asp:SqlDataSource>
						<strong>
						<br />
						<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			   		 <asp:Button ID="btnFinalize" runat="server" class="btn btn-primary" Text="Send Emails/Generate Files" OnClick="btnFinalize_Click" TabIndex="3" ForeColor="#F8F8F8" Height="56px" Width="204px" CssClass="auto-style8" BackColor="#2FA4E7" />
			   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			   		 <br />
						<br /></strong>
					</div>

		</div>
	 </div>
	</form>
		   <p>
			   &nbsp;</p>
		   <p>
			   &nbsp;</p>
		
		   </body>
</html>