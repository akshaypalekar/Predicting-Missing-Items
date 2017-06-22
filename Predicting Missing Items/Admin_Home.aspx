<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Home.aspx.cs" Inherits="Admin_Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>

<title>Apparels Inc</title>


<link rel="stylesheet" type="text/css" media="screen" href="images/Underground.css" />

</head>

<body>
<!-- wrap starts here -->
<div id="wrap">

		<!-- header -->
		<div id="header">			
					
			
			
			<!-- tabs -->
			<ul>
				<li id="current"><a href="Admin_Home.aspx"><span>Home</span></a></li>
				<li><a href="Admin_Login.aspx"><span>Logout</span></a></li>
			</ul>
											
		</div>
		
		<div id="header-logo">			
			
			<div id="logo">Apparels <span class="red">Inc</span></div>		
		
		</div>
		
       	<div id="main">

			<h1>Welcome to our site...</h1>
				
<form id="form1" runat="server">
    <div>
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="XX-Large"
                ForeColor="#C00000" Text="Hi"></asp:Label><br />
</div>
    
    </div>
    </form>
            											
		</div>

        <div id="sidebar" >

			<h1>Quick Links</h1>
			<div class="left-box">
				<ul class="sidemenu">
					<li><a href="Admin_User_Account.aspx">User Accout</a></li>
					<li><a href="Admin_Cust_Ac.aspx">Customer Accout</a></li>
					<li><a href="Admin_View_Post.aspx">View User Post</a></li>
					<li><a href="View_Trans.aspx">View All Transactions</a></li>
					<li><a href="Admin_Rev.aspx">View My Revenue</a></li>
					<li><a href="Admin_Ads.aspx">Ads</a></li>
					<li><a href="Admin_Feedback.aspx">View Feedback</a></li>
					<li><a href="Admin_CP.aspx">Change Password</a></li>
				</ul>
			</div>
		</div>
		
<!-- wrap ends here -->
</div>
		
<!-- footer starts here -->
<div class="footer">
	
		<p>	
		    &copy; 2011 All Rights Reserved

		</p>
		
</div>	
	
</body>
</html>
