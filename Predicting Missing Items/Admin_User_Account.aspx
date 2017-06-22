<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_User_Account.aspx.cs" Inherits="Admin_User_Account" %>

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
        <table>
            <tr>
                <td style="width: 100px">
                    Reg No</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Name</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Address</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox3" runat="server" Height="80px" ReadOnly="True" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Contact</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Email</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Account Status</td>
                <td style="width: 100px">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="80px">
                        <asp:ListItem>Off</asp:ListItem>
                        <asp:ListItem>On</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
        </table>
    
    </div>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update Status" /><br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Blue"></asp:Label><br />
        <br />
        &nbsp;
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px"
            CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <Columns>
                <asp:BoundField DataField="U_No" HeaderText="U_No" SortExpression="U_No" />
                <asp:BoundField DataField="U_Name" HeaderText="U_Name" SortExpression="U_Name" />
                <asp:BoundField DataField="U_Address" HeaderText="U_Address" SortExpression="U_Address" />
                <asp:BoundField DataField="U_Contact" HeaderText="U_Contact" SortExpression="U_Contact" />
                <asp:BoundField DataField="U_Email" HeaderText="U_Email" SortExpression="U_Email" />
                <asp:BoundField DataField="A_Status" HeaderText="A_Status" SortExpression="A_Status" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online_ShopConnectionString %>"
            SelectCommand="SELECT [U_No], [U_Name], [U_Address], [U_Contact], [U_Email], [A_Status] FROM [User_Details] ORDER BY [U_No] DESC">
        </asp:SqlDataSource>
        <br />
        <br />
        <table>
            <tr>
                <td style="width: 100px">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>U_No</asp:ListItem>
                        <asp:ListItem>U_Name</asp:ListItem>
                        <asp:ListItem>U_Contact</asp:ListItem>
                        <asp:ListItem>U_Email</asp:ListItem>
                        <asp:ListItem>A_Status</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 181px">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox6"
                        ErrorMessage="*" ValidationGroup="A"></asp:RequiredFieldValidator></td>
                <td style="width: 100px">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Search" ValidationGroup="A" /></td>
                <td style="width: 100px">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Show All" /></td>
            </tr>
        </table>
        <br />
        <br />

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
