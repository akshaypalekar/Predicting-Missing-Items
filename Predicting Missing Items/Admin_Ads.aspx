<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Ads.aspx.cs" Inherits="Admin_Ads" %>

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
    <table>
        <tr>
            <td style="width: 100px">
                Select File</td>
            <td style="width: 100px">
                <asp:FileUpload ID="FileUpload1" runat="server" /></td>
            <td style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FileUpload1"
                    ErrorMessage="*" ValidationGroup="A"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Ad Category</td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Mobile</asp:ListItem>
                    <asp:ListItem>Laptop</asp:ListItem>
                    <asp:ListItem>Footwear</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 100px">
                </td>
        </tr>
    </table>
    <br />
    &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Post Ad" ValidationGroup="A" /><br />
    <br />
    Path :
    <asp:Label ID="Label2" runat="server"></asp:Label><br />
    <br />
    Category :
    <asp:Label ID="Label3" runat="server"></asp:Label><br />
    <br />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Delete" /><br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84"
        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2"
        DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
        Width="416px">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <Columns>
            <asp:BoundField DataField="Ad_Path" HeaderText="Ad_Path" SortExpression="Ad_Path" />
            <asp:BoundField DataField="Ad_Cat" HeaderText="Ad_Cat" SortExpression="Ad_Cat" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online_ShopConnectionString %>"
        SelectCommand="SELECT * FROM [Ads]"></asp:SqlDataSource>
    <br />
    <asp:Label ID="Label1" runat="server" ForeColor="Blue"></asp:Label><br />
    
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
