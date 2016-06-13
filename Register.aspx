<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Register.aspx.vb" Inherits="jc.Register" %>

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

	
	.auto-style1 {
		font-family: Arial;
		font-size: 30px;
		color: #423139;
		letter-spacing: -1pt;
	}

  
	.auto-style6 {
		margin-left: 0px;
	}

  
	.auto-style7 {
		width: 707px;
		margin-top: 0px;
	}

  
	.auto-style8 {
		font-family: Arial;
		color: #443741;
	}
	.auto-style9 {
		font-family: Arial;
	}
	.auto-style10 {
		float: left;
		height: 50px;
		padding: 15px 15px;
		font-size: 18px;
		line-height: 20px;
		color: #443741;
	}

  
</style>     
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>

 <body style="height: 101%; background-image:url('coffetable1.jpg'); background-repeat:no-repeat;" ">

   <div id="header" style="color:#462e3c">
				<nav style="color:#462e3c" class="navbar navbar-default">
				<div style="color:#462e3c" class="container">
				<div style="color:#462e3c" class="navbar-header">
				 <button style="color:#462e3c" type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				   <span style="color:#462e3c" class="icon-bar"></span>
				   <span style="color:#462e3c" class="icon-bar"></span>
				   <span style="color:#462e3c" class="icon-bar"></span>                        
				   </button>
				    <span style="color:#462e3c" class="auto-style9">
				   <a class="auto-style10" href="Login.aspx" style="color:#462e3c">OR</a></span></div>
				  <div style="color:#462e3c" class="collapse navbar-collapse" id="myNavbar1" >
				  <ul  style="color:#462e3c" class="nav navbar-nav">
				  <li style="color:#462e3c"><a href="ForgotUsername.aspx">Forgot Username</a></li>
				  <li style="color:#462e3c"><a href="ForgotPassword.aspx"">Forgot Password</a></li>
				  </ul>
				 <ul style="color:#462e3c" class="nav navbar-nav navbar-right">
				 <li style="color:#462e3c"><a href="Register.aspx"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				 </ul>
				 </div>
				 </div>
				 </nav>
			</div>
	 
			 
	<div style="width: 681px; height: 45px; margin-left: 100px;" >
		<form class="auto-style7" runat="server">
			<fieldset class="auto-style6">
			  <legend class="auto-style6"><span class="auto-style1">Operation Roundup Registration Form</span></legend>
			<div class="form-group">
				<span class="auto-style8">
				<label class="col-lg-2 control-label" for="inputUsername">Username</label></span>
				<div class="col-lg-10">
					 <asp:TextBox ID="txtUsername1"  runat="server" Placeholder="Enter Username..." Font-Size="14px" ForeColor="Gray" Height="32px" Width="195px" CausesValidation="True" TabIndex="1"></asp:TextBox>
					 <asp:RequiredFieldValidator id="RequiredFieldValidatoruser" runat="server"
					   ControlToValidate="txtUsername1"
					   ErrorMessage="Required field!"
					   Border="red"
					   ForeColor="Red">
					 </asp:RequiredFieldValidator>
				</div>
			</div>
			<div class="form-group">
				<br />
				<span class="auto-style8">
				<label class="col-lg-2 control-label" for="inputPassword">Password</label></span>
				<div class="col-lg-10">
					<asp:TextBox ID="txtPassword" placeholder= "Enter Your Password..." runat="server" Font-Size="14px" ForeColor="Gray" Height="32px" TabIndex="2" Width="195px" CausesValidation="True" TextMode="Password"></asp:TextBox>
					<asp:RequiredFieldValidator id="RequiredFieldValidatorPass" runat="server"
					   ControlToValidate="txtPassword"
					   ErrorMessage="Required field!"
					   Border="red"
					   ForeColor="Red">
					 </asp:RequiredFieldValidator>
				</div>
			</div>

			<div class="form-group">
				<br />
				<span class="auto-style8">
				<label class="col-lg-2 control-label" for="inputFirstName">First Name</label></span>
				<div class="col-lg-10">
					<asp:TextBox ID="txtFirstName" placeholder= "Enter Your First Name..." runat="server" Font-Size="14px" ForeColor="Gray" Height="32px" TabIndex="3" Width="195px" CausesValidation="True"></asp:TextBox>
					<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
					   ControlToValidate="txtFirstName"
					   ErrorMessage="Required field!"
					   Border="red"
					   ForeColor="Red">
					 </asp:RequiredFieldValidator>
			 </div>
			 </div>
			  
			<div class="form-group">
				<br />
				<span class="auto-style8">
				<label class="col-lg-2 control-label" for="inputLastName">Last Name</label></span>
				<div class="col-lg-10">
					<asp:TextBox ID="txtLastName" placeholder= "Enter Your Last Name..." runat="server" Font-Size="14px" ForeColor="Gray" Height="32px" TabIndex="4" Width="195px" CausesValidation="True"></asp:TextBox>
					<asp:RequiredFieldValidator id="RequiredFieldValidatorLast" runat="server"
					   ControlToValidate="txtLastName"
					   ErrorMessage="Required field!"
					   Border="red"
					   ForeColor="Red">
					 </asp:RequiredFieldValidator>
			 </div>
			 </div>

		  <div class="form-group">
				<br />
				<span class="auto-style8">
				<label class="col-lg-2 control-label" for="inputEmail">Email</label></span>
				<div class="col-lg-10">
					<asp:TextBox ID="txtEmail" placeholder= "Enter Your Email..." runat="server" Font-Size="14px" ForeColor="Gray" Height="32px" TabIndex="5" Width="195px" CausesValidation="True" TextMode="Email"></asp:TextBox>
					<asp:RequiredFieldValidator id="RequiredFieldValidatoremail" runat="server"
					   ControlToValidate="txtEmail"
					   ErrorMessage="Required field!"
					   Border="red"
					   ForeColor="Red">
					 </asp:RequiredFieldValidator>
			 </div>
			 </div>
					  

			<div class="form-group">
				<br />
				<span class="auto-style8">
				<label class="col-lg-2 control-label" for="select">School</label></span>

				  <div class="col-lg-10">
				  <asp:DropDownList ID="selectSchool" runat="server" Width="300px" Height="32px" Font-Size="14px" ForeColor="Gray" AppendDataBoundItems="True" TabIndex="6"> 
				  <asp:ListItem Text="Pick a Teacher School..." Selected="True" Value=""></asp:ListItem> 
				  <asp:ListItem Text="Addison Elementary" Value="1"></asp:ListItem>
<asp:ListItem Text="Addison High School" Value="2"></asp:ListItem>
<asp:ListItem Text="Baileyton (Parkside)" Value="3"></asp:ListItem>
<asp:ListItem Text="CACC" Value="4"></asp:ListItem>
<asp:ListItem Text="CARE" Value="5"></asp:ListItem>
<asp:ListItem Text="Child Del. Center" Value="6"></asp:ListItem>
<asp:ListItem Text="Cold Springs Elementary" Value="7"></asp:ListItem>
<asp:ListItem Text="Cold Springs High" Value="8"></asp:ListItem>
<asp:ListItem Text="Cold Springs Middle" Value="9"></asp:ListItem>
<asp:ListItem Text="Covenant School" Value="10"></asp:ListItem>
<asp:ListItem Text="Cullman Christian School" Value="11"></asp:ListItem>
<asp:ListItem Text="Cullman High School" Value="12"></asp:ListItem>
<asp:ListItem Text="Cullman Middle School" Value="13"></asp:ListItem>
<asp:ListItem Text="Cullman Primary School" Value="14"></asp:ListItem>
<asp:ListItem Text="East Elementary School" Value="15"></asp:ListItem>
<asp:ListItem Text="Fairview Elementary School" Value="16"></asp:ListItem>
<asp:ListItem Text="Fairview High School" Value="17"></asp:ListItem>
<asp:ListItem Text="Fairview Middle School" Value="18"></asp:ListItem>
<asp:ListItem Text="Good Hope Elementary" Value="19"></asp:ListItem>
<asp:ListItem Text="Good Hope High School" Value="20"></asp:ListItem>
<asp:ListItem Text="Good Hope Middle" Value="21"></asp:ListItem>
<asp:ListItem Text="Good Hope Primary" Value="22"></asp:ListItem>
<asp:ListItem Text="Hanceville Elementary School" Value="23"></asp:ListItem>
<asp:ListItem Text="Hanceville High School" Value="24"></asp:ListItem>
<asp:ListItem Text="Hanceville Middle School" Value="25"></asp:ListItem>
<asp:ListItem Text="Harmony Elementary School" Value="26"></asp:ListItem>
<asp:ListItem Text="Holly Pond Elementary School" Value="27"></asp:ListItem>
<asp:ListItem Text="Holly Pond High School" Value="28"></asp:ListItem>
<asp:ListItem Text="Holly Pond Middle School" Value="29"></asp:ListItem>
<asp:ListItem Text="Meek Elementary" Value="30"></asp:ListItem>
<asp:ListItem Text="Meek High School" Value="31"></asp:ListItem>
<asp:ListItem Text="Sacred Heart School" Value="32"></asp:ListItem>
<asp:ListItem Text="Saint Bernard Prep" Value="33"></asp:ListItem>
<asp:ListItem Text="Saint Pauls School" Value="34"></asp:ListItem>
<asp:ListItem Text="Vinemont Elementary" Value="35"></asp:ListItem>
<asp:ListItem Text="Vinemont High School" Value="36"></asp:ListItem>
<asp:ListItem Text="Vinemont Middle School" Value="37"></asp:ListItem>
<asp:ListItem Text="Welti" Value="38"></asp:ListItem>
<asp:ListItem Text="West Elementary School" Value="39"></asp:ListItem>
<asp:ListItem Text="West Point Elementary" Value="40"></asp:ListItem>
<asp:ListItem Text="West Point High School" Value="41"></asp:ListItem>
<asp:ListItem Text="West Point Intermediate" Value="42"></asp:ListItem>
<asp:ListItem Text="West Point Middle" Value="43"></asp:ListItem>
<asp:ListItem Text="Test School" Value="44"></asp:ListItem>
				  </asp:DropDownList>

				 <asp:RequiredFieldValidator ID="RequiredFieldValidatorselect" runat="server" 
					 ControlToValidate="selectSchool"
					 ErrorMessage="Required field!" 
					 ForeColor="Red" 
					 InitialValue="">
				 </asp:RequiredFieldValidator>
				  	  <br />
				  	<br />
				  </div>               
			</div>         
			<div class="form-group">
				<div class="col-lg-10 col-lg-offset-2">                    
					 <asp:Button ID="cmdSubmit" runat="server" Height="49px" Text="Submit Registration" Width="151px" class="btn btn-primary" TabIndex="7" BackColor="#2C2132" ForeColor="#F3EFE4" BorderColor="#443741" BorderStyle="None"/>
					<br />
				</div>               
			</div>              
		</fieldset>
	</form>
			
	</div>    
	
</body>
</html>            
