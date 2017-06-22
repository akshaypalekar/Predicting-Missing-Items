<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_View_Post.aspx.cs" Inherits="Admin_View_Post" %>

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
                    <td colspan="2" rowspan="3">
                        <asp:Image ID="Image1" runat="server" Height="480px" Width="240px" /></td>
                    <td style="width: 100px">
                        Post ID</td>
                    <td style="width: 100px">
                        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        Product Name</td>
                    <td style="width: 100px">
                        <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        Description</td>
                    <td style="width: 100px">
                        <asp:TextBox ID="TextBox3" runat="server" Height="88px" ReadOnly="True" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" rowspan="1">
                    </td>
                    <td style="width: 100px">
                        Status</td>
                    <td style="width: 100px">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="72px">
                            <asp:ListItem>Off</asp:ListItem>
                            <asp:ListItem>On</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
            </table>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update Status" /><br />
            <br />
            <asp:Label ID="Label1" runat="server" ForeColor="Blue"></asp:Label><br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px"
                CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <Columns>
                    <asp:BoundField DataField="Post_ID" HeaderText="Post_ID" SortExpression="Post_ID" />
                    <asp:BoundField DataField="U_No" HeaderText="U_No" SortExpression="U_No" />
                    <asp:BoundField DataField="Prod_Name" HeaderText="Prod_Name" SortExpression="Prod_Name" />
                    <asp:BoundField DataField="Prod_Type" HeaderText="Prod_Type" SortExpression="Prod_Type" />
                    <asp:BoundField DataField="Prod_MRP" HeaderText="Prod_MRP" SortExpression="Prod_MRP" />
                    <asp:BoundField DataField="Prod_Rate" HeaderText="Prod_Rate" SortExpression="Prod_Rate" />
                    <asp:BoundField DataField="Post_Date" HeaderText="Post_Date" SortExpression="Post_Date" />
                    <asp:BoundField DataField="Prod_Desc" HeaderText="Prod_Desc" SortExpression="Prod_Desc" />
                    <asp:BoundField DataField="Prod_Img" HeaderText="Prod_Img" SortExpression="Prod_Img" />
                    <asp:BoundField DataField="A_Status" HeaderText="A_Status" SortExpression="A_Status" />
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online_ShopConnectionString %>"
                SelectCommand="SELECT * FROM [Prod_Details]"></asp:SqlDataSource>
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
