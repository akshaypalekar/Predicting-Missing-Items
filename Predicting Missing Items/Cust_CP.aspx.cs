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
public partial class Cust_CP : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    SqlDataReader rs;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string s;
            s = Session["User"].ToString();
            if (s == "")
            {
                Response.Redirect("Cust_Login.aspx");
            }
        }
        cn.ConnectionString = "Data Source=AKSHAY-PC\\SQLEXPRESS;Initial Catalog=Online_Shop;Integrated Security=True";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int cnt = 0;
        cn.Open();
        cmd.Connection = cn;
        cmd.CommandText = "select Count(*) from Cust_Login where Username='" + Session["User"].ToString() + "' and Password='" + TextBox1.Text + "'";
        rs = cmd.ExecuteReader();
        while (rs.Read())
        {
            cnt = int.Parse(rs.GetValue(0).ToString());
        }
        rs.Close();
        cmd.Dispose();
        cn.Close();
        if (cnt > 0)
        {
            cn.Open();
            cmd.Connection = cn;
            cmd.CommandText = "update Cust_Login set Password='" + TextBox3.Text + "' where Username='" + Session["User"].ToString() + "'";
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cn.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            Label1.Text = "Password change Successfully!!!";
        }
        else
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            Label1.Text = "Invalid Old Password";
        }
    }
}
