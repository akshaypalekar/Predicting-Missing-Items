<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" 
            GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                
                <asp:BoundField DataField="Post_ID" HeaderText="Post_ID" 
                    SortExpression="Post_ID" />
                <asp:BoundField DataField="U_No" HeaderText="U_No" SortExpression="U_No" />
                <asp:BoundField DataField="Prod_Name" HeaderText="Prod_Name" 
                    SortExpression="Prod_Name" />
                <asp:BoundField DataField="Prod_Type" HeaderText="Prod_Type" 
                    SortExpression="Prod_Type" />
                <asp:BoundField DataField="Prod_MRP" HeaderText="Prod_MRP" 
                    SortExpression="Prod_MRP" />
                <asp:BoundField DataField="Prod_Rate" HeaderText="Prod_Rate" 
                    SortExpression="Prod_Rate" />
                <asp:BoundField DataField="Post_Date" HeaderText="Post_Date" 
                    SortExpression="Post_Date" />
                <asp:BoundField DataField="Prod_Desc" HeaderText="Prod_Desc" 
                    SortExpression="Prod_Desc" />
                <asp:BoundField DataField="Prod_Img" HeaderText="Prod_Img" 
                    SortExpression="Prod_Img" />
                <asp:BoundField DataField="A_Status" HeaderText="A_Status" 
                    SortExpression="A_Status" />
<asp:CommandField ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=BHAVIK-PC\SQLEXPRESS;Initial Catalog=Online_Shop;Integrated Security=True" 
            ProviderName="System.Data.SqlClient" 
            SelectCommand="SELECT * FROM [Prod_Details]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
