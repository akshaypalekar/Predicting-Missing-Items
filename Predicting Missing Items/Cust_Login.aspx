<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cust_Login.aspx.cs" Inherits="Cust_Login" %>

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
				<li><a href="index.html"><span>Home</span></a></li>
				<li><a href= "about.html"><span>About</span></a></li>
				<li><a href="contact.html"><span>Contact</span></a></li>
			</ul>
											
		</div>
		
		<div id="header-logo">			
			
			<div id="logo">Apparels <span class="red">Inc</span></div>		
		
		</div>
		
       	<div id="main">

			<h1>Welcome to our site...</h1>
				
<form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td style="width: 100px">
                    Username</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Password</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 26px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" /></td>
                <td style="width: 100px; height: 26px">
                </td>
                <td style="width: 100px; height: 26px">
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Maroon"></asp:Label><br />
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Cust_RP.aspx">Retrive Password</asp:HyperLink><br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Cust_Reg.aspx">New Customer !!! Register Here</asp:HyperLink></div>
    </form>

            											
		</div>

        <div id="sidebar" >

			<h1>Quick Links</h1>
			<div class="left-box">
				<ul class="sidemenu">
					<li><a href="Admin_Login.aspx">Admin Login</a></li>
					<li><a href="Default.aspx">User Login</a></li>
					<li><a href="Cust_Login.aspx">Customer Login</a></li>
				</ul>
			</div>

			<h1>News / Events</h1>
			<div class="left-box">
                <ul class="sidemenu">
			<marquee direction="UP" scrolldelay="200">
			<li>News / Events 1</li>
			<li>News / Events 2</li>
			<li>News / Events 3</li>
			<li>News / Events 4</li>
			<li>News / Events 5</li>
			</marquee>	
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
