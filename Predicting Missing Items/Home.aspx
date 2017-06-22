<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

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
				<li id="current"><a href="Home.aspx"><span>Home</span></a></li>
				<li><a href="Default.aspx"><span>Logout</span></a></li>
			</ul>
											
		</div>
		
		<div id="header-logo">			
			
			<div id="logo">Apparels <span class="red">Inc</span></div>		
		
		</div>
		
       	<div id="main">

			<h1>Welcome to our site...</h1>
				
<form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="XX-Large"
            ForeColor="#C00000" Text="Hi"></asp:Label><br />
        <br />
        &nbsp;</div>
    </form>
            											
		</div>

        <div id="sidebar" >

			<h1>Quick Links</h1>
			<div class="left-box">
				<ul class="sidemenu">
					<li><a href="Post_Prod.aspx">Post a Product</a></li>
					<li><a href="View_Post.aspx">View My Post</a></li>

					<li><a href="My_Profile.aspx">My Profile</a></li>
					<li><a href="Search_Company.aspx">Search a Company</a></li>

					<li><a href="View_Sell.aspx">View My Sell</a></li>
					<li><a href="Give_Feedback_User.aspx">Give Feedback</a></li>
					<li><a href="Change_Password.aspx">Change Password</a></li>
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
