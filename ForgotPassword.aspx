<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ForgotPassword.aspx.vb" Inherits="jc.ForgotPassword" %>

<!DOCTYPE html>

<html lang="en">

<head runat="server">
	<title>Operation Roundup</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
   
<style>
p.ex1 {
	margin-left: 3cm;
}

	#form1 {     

	}  
	
  
	.auto-style2 {
		font-family: Arial;
		font-size: x-large;
	}

  
	.auto-style3 {
		height: 44px;
		font-family: Arial;
		font-size: 30px;
	}
	.auto-style4 {
		height: 210px;
	}
	.auto-style5 {
		position: relative;
		min-height: 1px;
		float: left;
		width: 83%;
		left: 5px;
		top: -5px;
		height: 155px;
		padding-left: 15px;
		padding-right: 15px;
	}

  
	.auto-style7 {
		color: #FFFFFF;
	}

  
	.auto-style8 {
		color: #04180D;
		background-color: #F7C892;
	}

  
</style>     
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>

 <body style="height: 800px; background-image:url('ladywithcoffee1.jpg'); background-repeat:no-repeat;">

   <div id="header">
				<nav class="navbar navbar-default">
				<div class="container">
				<div class="navbar-header">
				 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				   <span class="icon-bar"></span>
				   <span class="icon-bar"></span>
				   <span class="icon-bar"></span>                        
				   </button>
				   <a class="navbar-brand" href="Login.aspx">OR</a></div>
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
			</div>
	 
			 
	<div style="width: 681px; height: 45px; margin-left: 100px;"  >
		<form class="form-horizontal" runat="server">
			<fieldset class="auto-style4" >
			  <legend class="auto-style3"><span class="auto-style7">Operation Roundup Forgot Password Form</span><br />
				  </legend>
			<div class="form-group">
				<span class="auto-style2">&nbsp;&nbsp;&nbsp; <span class="auto-style7">Enter Username for Teacher Account:</span></span><div class="auto-style5">
					 <br />
					 &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtUsername1"  runat="server" Placeholder="Enter Account Username..." Font-Size="14px" ForeColor="Gray" Height="32px" Width="257px" CausesValidation="True" TabIndex="1"></asp:TextBox>
					 &nbsp;<asp:RequiredFieldValidator id="RequiredFieldValidatoruser" runat="server"
					   ControlToValidate="txtUsername1"
					   ErrorMessage="Required field!"
					   Border="red"
					   ForeColor="Red">
					 </asp:RequiredFieldValidator>
					 <br />
					 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" Text="Username Not Found!" Visible="False"></asp:Label>
					 <br />
					 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="cmdSubmit" runat="server" Height="63px" Text="Submit Password Request" Width="198px" class="btn btn-primary" TabIndex="7" CssClass="auto-style8"/>
					 <br />
				</div>
			</div>                                             
		</fieldset>
	</form>
			
	</div>    
	
</body>
</html>       
