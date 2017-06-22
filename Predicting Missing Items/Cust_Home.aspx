<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cust_Home.aspx.cs" Inherits="Cust_Home" %>

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
            <div id="logo">
                Trade <span class="red">In</span></div>
        </div>
        <div id="main">
            <h1>
                Welcome to our site...</h1>
            <form id="form1" runat="server">
            <div>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="XX-Large"
                    ForeColor="#C00000" Text="Hi"></asp:Label><br />
                <br />
                <h2>
                    User Preference Based On Color</h2>
                <div id="ReplaceDivColor" runat="server">
                </div>
                <h2>
                    User Preference Based On Pattern</h2>
                <div id="ReplaceDivPattern" runat="server">
                </div>
            </form>
        </div>
        
        <!-- wrap ends here -->
    </div>
    <div id="sidebar">
            <h1>
                Quick Links</h1>
            <div class="left-box">
                <ul class="sidemenu">
                    <li><a href="Search_Prod.aspx">Search a Product</a></li>
                    <li><a href="View_Buy.aspx">View My Buy</a></li>
                    <li><a href="Give_Feedback.aspx">Give Feedback</a></li>
                    <li><a href="Cust_CP.aspx">Change Password</a></li>
                </ul>
            </div>
        </div>
    <!-- footer starts here -->
    <div class="footer">
        <p>
            &copy; 2011 All Rights Reserved
        </p>
    </div>
</body>
</html>
