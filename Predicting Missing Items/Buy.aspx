<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Buy.aspx.cs" Inherits="Buy" %>

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
				<li><a href="Cust_Login.aspx"><span>Logout</span></a></li>
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
                <td colspan="2" rowspan="6">
                    <asp:Image ID="Image1" runat="server" Height="240px" Width="120px" /></td>
                <td style="width: 100px">
                    Product Name</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Product Type</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    MRP</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    My Rate</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Description</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox5" runat="server" Height="72px" ReadOnly="True" TextMode="MultiLine"
                        Width="152px"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Payment</td>
                <td style="width: 100px">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Cash</asp:ListItem>
                        <asp:ListItem>CreditCard</asp:ListItem>
                        <asp:ListItem>Draft</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 100px">
                    </td>
            </tr>
        </table>
    
    </div>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buy Product" /><br />
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="Blue"></asp:Label><br />
        <br />
    </form>
            											
		</div>

        <div id="sidebar" >

			<h1>Quick Links</h1>
			<div class="left-box">
				<ul class="sidemenu">
				    <li><a href="Search_Prod.aspx">Search a Product</a></li>
				    <li><a href="View_Buy.aspx">View My Buy</a></li>
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
