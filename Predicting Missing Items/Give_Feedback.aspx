<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Give_Feedback.aspx.cs" Inherits="Give_Feedback" %>

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
				<li><a href="Cust_Home.aspx"><span>Home</span></a></li>
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
        <table>
            <tr>
                <td style="width: 100px">
                    Type</td>
                <td style="width: 100px">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Feedback</asp:ListItem>
                        <asp:ListItem>Complain</asp:ListItem>
                        <asp:ListItem>Suggestions</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Data</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox1" runat="server" MaxLength="100" TextMode="MultiLine"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
        </table>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Give Feedback" /><br />
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="#0000C0"></asp:Label></div>
    </form>
            											
		</div>

        <div id="sidebar" >

			<h1>Quick Links</h1>
			<div class="left-box">
				<ul class="sidemenu">
				    <li><a href="Search_Prod.aspx">Search a Product</a></li>
				    <li><a href="View_Buy.aspx">View My Buy</a></li>
				    <li><a href="Give_Feedback.aspx">Give Feedback</a></li>
					<li><a href="Cust_CP.aspx">Change Password</a></li>
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
