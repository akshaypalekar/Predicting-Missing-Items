<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_CP.aspx.cs" Inherits="Admin_CP" %>

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
				<li><a href="Admin_Home.aspx"><span>Home</span></a></li>
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
            <table>
                <tr>
                    <td style="width: 129px; height: 21px">
                        Old Password</td>
                    <td style="width: 100px; height: 21px">
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td style="width: 300px; height: 21px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                            ErrorMessage="*"></asp:RequiredFieldValidator></td>
                </tr>
                <tr style="color: #000000">
                    <td style="width: 129px">
                        New Password</td>
                    <td style="width: 100px">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" MaxLength="20"></asp:TextBox></td>
                    <td style="width: 300px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox1"
                            ControlToValidate="TextBox2" ErrorMessage="Old and New Password cannot be same"
                            Operator="NotEqual" Width="256px"></asp:CompareValidator></td>
                </tr>
                <tr>
                    <td style="width: 129px">
                        Confirm Password</td>
                    <td style="width: 100px">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td style="width: 300px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2"
                            ControlToValidate="TextBox3" ErrorMessage="*"></asp:CompareValidator></td>
                </tr>
            </table>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Change Password" /><br />
            <br />
            <asp:Label ID="Label1" runat="server" ForeColor="Blue"></asp:Label><br />
            <br />
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
