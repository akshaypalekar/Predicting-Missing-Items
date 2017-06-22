using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
public partial class Admin_User_Account : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    SqlDataReader rs;
    string s;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            s = Session["User"].ToString();
            if (s == "")
            {
                Response.Redirect("Admin_Login.aspx");
            }
        }
        cn.ConnectionString = "Data Source=AKSHAY-PC\\SQLEXPRESS;Initial Catalog=Online_Shop;Integrated Security=True";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.Connection = cn;
        cmd.CommandText = "update User_Details set A_Status='" + DropDownList1.SelectedItem.Text + "' where U_No='" + TextBox1.Text + "'";
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        cn.Close();
        Label1.Text = "Status changed Successfully";

        SqlDataSource1.SelectCommand = "SELECT U_No,U_Name,U_Address,U_Contact,U_Email,A_Status FROM User_Details ORDER BY U_No DESC";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT U_No,U_Name,U_Address,U_Contact,U_Email,A_Status FROM User_Details ORDER BY U_No DESC";
        TextBox6.Text = "";
        DropDownList2.SelectedIndex = 0;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT U_No,U_Name,U_Address,U_Contact,U_Email,A_Status FROM User_Details where " + DropDownList2.SelectedItem.Text + "='" + TextBox6.Text + "' ORDER BY U_No DESC";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.SelectedRow.Cells[0].Text;
        TextBox2.Text = GridView1.SelectedRow.Cells[1].Text;
        TextBox3.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBox4.Text = GridView1.SelectedRow.Cells[3].Text;
        TextBox5.Text = GridView1.SelectedRow.Cells[4].Text;
        DropDownList1.SelectedValue = GridView1.SelectedRow.Cells[5].Text;
    }
}
