<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Rev.aspx.cs" Inherits="Admin_Rev" %>

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

    
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px"
        CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" Width="464px">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <Columns>
            <asp:BoundField DataField="Trans_ID" HeaderText="Trans_ID" SortExpression="Trans_ID" />
            <asp:BoundField DataField="Trans_Date" HeaderText="Trans_Date" SortExpression="Trans_Date" />
            <asp:BoundField DataField="Rev" HeaderText="Rev" SortExpression="Rev" />
        </Columns>
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online_ShopConnectionString %>"
        SelectCommand="SELECT * FROM [Admin_Revenue]"></asp:SqlDataSource>
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
