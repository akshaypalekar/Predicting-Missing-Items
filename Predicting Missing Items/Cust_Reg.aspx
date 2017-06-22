<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cust_Reg.aspx.cs" Inherits="Cust_Reg" %>

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
                <td style="width: 119px">
                    Registration No</td>
                <td style="width: 100px">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>&nbsp;</td>
                <td style="width: 148px">
                    (This is your username)</td>
            </tr>
            <tr>
                <td style="width: 119px">
                    Name</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox1" runat="server" MaxLength="20"></asp:TextBox></td>
                <td style="width: 148px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="Please enter Name"></asp:RequiredFieldValidator></td>
            </tr>
            <tr style="color: #000000">
                <td style="width: 119px; height: 40px">
                    Address</td>
                <td style="width: 100px; height: 40px">
                    <asp:TextBox ID="TextBox7" runat="server" Height="80px" TextMode="MultiLine" Width="152px" MaxLength="100"></asp:TextBox></td>
                <td style="width: 148px; height: 40px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7"
                        ErrorMessage="Please enter Address"></asp:RequiredFieldValidator></td>
            </tr>
            <tr style="color: #000000">
                <td style="width: 119px; height: 25px;">
                    Contact No</td>
                <td style="width: 100px; height: 25px;">
                    <asp:TextBox ID="TextBox2" runat="server" MaxLength="10"></asp:TextBox></td>
                <td style="width: 148px; height: 25px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr style="color: #000000">
                <td style="width: 119px">
                    Email ID</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox3" runat="server" MaxLength="50"></asp:TextBox></td>
                <td style="width: 148px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
                        ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3"
                        ErrorMessage="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td style="width: 119px">
                    Password</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" MaxLength="20"></asp:TextBox></td>
                <td style="width: 148px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 119px">
                    Confirm Password</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox></td>
                <td style="width: 148px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5"
                        ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4"
                        ControlToValidate="TextBox5" ErrorMessage="*"></asp:CompareValidator></td>
            </tr>
            <tr>
                <td style="width: 119px">
                    Password Hint</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox6" runat="server" MaxLength="20"></asp:TextBox></td>
                <td style="width: 148px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 119px">
                    Interest</td>
                <td style="width: 100px">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" Width="150px">
                        <asp:ListItem>Red</asp:ListItem>
                        <asp:ListItem>Green</asp:ListItem>
                        <asp:ListItem>Blue</asp:ListItem>
                    </asp:CheckBoxList></td>
                <td style="width: 148px">
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Font-Strikeout="True"
            ForeColor="DimGray"></asp:Label><br />
        <br />
        Enter the Above Text
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8"
            ErrorMessage="*"></asp:RequiredFieldValidator><br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register Me" /><br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Navy"></asp:Label><br />
        <br />
        </div>
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
