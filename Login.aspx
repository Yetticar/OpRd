<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="jc.Login" %>

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
			 html,body{
			  margin:0;
			  height:100%;
				overflow:hidden;
		}
			img{
				  min-height:200%;
				  min-width:200%;
				  height:200%;
				  width:auto;
				  position:absolute;
				  top:-100%; bottom:-100%;
				  left:-100%; right:-100%;
				  margin:auto;
				  background-size:contain;
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
			background-color:white;
		margin-top: 0;
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

	.newStyle1 {
		background-image: url('pexels-photo3.jpg');
	}
	.newStyle2 {
		background-image: url('pexels-photo3.jpg');
	}

	.auto-style1 {
		z-index: 1;
		font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
		font-size: large;
	}
	.auto-style3 {
		margin-left: 119px;
		height: 4%;
		width: 100%;
	}

	.auto-style4 {
		font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
		font-size: 48pt;
		color: #555555;
		letter-spacing: -4pt;
	}

	.auto-style7 {
		font-size: x-large;
		letter-spacing: -2pt;
		color: #FFEBC6;
	}
	.auto-style8 {
		font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
		font-size: large;
		letter-spacing: -2pt;
	}
	
	.auto-style11 {
		margin-left: 48px;
		height: 3%;
		width: 79%;
		font-size: x-large;
		font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
		letter-spacing: -2pt;
	}

	.auto-style12 {
		font-size: large;
		letter-spacing: -1pt;
	}
	.auto-style13 {
		font-size: large;
		letter-spacing: -1px;
	}
	.auto-style14 {
		margin-left: 49px;
		height: 3%;
		width: 79%;
		margin-top: 6;
		font-size: 20px;
		font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
	}

	.auto-style15 {
		margin-left: 22px;
	}

	.newStyle3 {
		background-color: #918883;
	}


	.newStyle4 {
		color: #000000;
	}
	footer { 
	display: block;
} 

	.auto-style16 {
		h
	}
	.auto-style17 {
		font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
		font-size: 48pt;
		color: #FFEBC6;
		letter-spacing: -4pt;
	}
	.auto-style18 {
		font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
		font-size: 48pt;
		letter-spacing: -4pt;
		color: #431306;
	}

	.auto-style19 {
		color: #C0C0C0;
	}

	.auto-style20 {
		z-index: 1;
		margin-left: 0;
		color: #7E0202;
		background-color: #FFEBC6;
	}

	.auto-style21 {
		color: #FFEBC6;
	}

	</style>     

	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   
	<meta name="viewport" content="width=device-width, initial-scale=1" />

</head>   
	<body style="height: 101%; background-image:url('applecenter5.jpg'); background-repeat:no-repeat; ">
 
		   <form id="form1" runat="server">                      
	
		   <div id="header">
				<nav class="navbar navbar-default">
				<div class="container">
				<div class="navbar-header">
				 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				   <span class="icon-bar"></span>
				   <span class="icon-bar"></span>
				   <span class="icon-bar"></span>                        
				   </button>
				   <a class="navbar-brand" href="Login.aspx">OR</a>
					
				</div>
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
			   <div  class="auto-style16">
			   <p class="auto-style15">
				   &nbsp;</p>
			   <p class="auto-style15">
				   <span class="auto-style17">&nbsp;&nbsp; Operation</span><span class="auto-style4"> </span>
				   <span class="auto-style18">Roundup</span><span class="auto-style8"> </span>
			   </p>
			   <p class="auto-style11">
				   <span class="auto-style21">Username
								   </span>
				   <span class="auto-style19">
								   <asp:TextBox ID="txtUsername1" runat="server"  Font-Size="Medium" ForeColor="Black" Height="28px" Width="208px" CausesValidation="True" TabIndex="1" CssClass="auto-style1"></asp:TextBox>
					   
					   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
						   ControlToValidate="txtUsername1"
						   ErrorMessage="Required field!"
						   ForeColor="Red" CssClass="auto-style12">
					   </asp:RequiredFieldValidator>
				   </span>
				   </p>
				   <p class="auto-style11">
				   	   &nbsp;</p>
				   <span>
			   <p class="auto-style14" style ="margin-bottom:10px">
				   
					   <asp:Label ID="Label2" runat="server" Text="Password " CssClass="auto-style7"></asp:Label>
					   
									   &nbsp;<asp:TextBox ID="txtPassword1" runat="server" Font-Size="Medium" ForeColor="Black" Height="25px" Width="205px" TabIndex="2" TextMode="Password" CssClass="auto-style1"></asp:TextBox>
					   
					   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
						   ControlToValidate="txtPassword1"
						   ErrorMessage="Required field!"
						   ForeColor="Red" CssClass="auto-style13">
					   </asp:RequiredFieldValidator>
			   </p>
				   <p class="auto-style14" style ="margin-bottom:10px">
				   
					   &nbsp;</p></span>
			   <p class="auto-style3" style ="margin-bottom:10px; font-size: 20px;">
				   
				   <asp:Button ID="cmdSubmit"  runat="server" Text="Submit" CssClass="auto-style20" Height="43px" Width="111px" TabIndex="3" />&nbsp;&nbsp;
				   <asp:Label ID="lblInfo" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
				   </p>
			   </div>
				  </form>	
</body>
	
</html>
