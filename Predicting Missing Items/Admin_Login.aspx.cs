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
public partial class Admin_Login : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    SqlDataReader rs;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = "Data Source=AKSHAY-PC\\SQLEXPRESS;Initial Catalog=Online_Shop;Integrated Security=True";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int cnt = 0;
        cn.Open();
        cmd.Connection = cn;
        cmd.CommandText = "select Count(*) from Admin_Login where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
        rs = cmd.ExecuteReader();
        while (rs.Read())
        {
            cnt = int.Parse(rs.GetValue(0).ToString());
        }
        rs.Close();
        cmd.Dispose();
        cn.Close();

        if (cnt == 0)
        {
            Label1.Text = "Invalid Username / Password";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox1.Focus();
        }
        else
        {
            Session["User"] = TextBox1.Text;
            Session["Type"] = "Admin";
            Response.Redirect("Admin_Home.aspx");
        }
    }
}
