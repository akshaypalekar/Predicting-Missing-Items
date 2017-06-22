using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page 
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
        int cnt = 0,cnt2=0;
        cn.Open();
        cmd.Connection = cn;
        cmd.CommandText = "select Count(*) from User_Login where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
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
            cn.Open();
            cmd.Connection = cn;
            cmd.CommandText = "select Count(*) from User_Details where U_No='" + TextBox1.Text + "' and A_Status='On'";
            rs = cmd.ExecuteReader();
            while (rs.Read())
            {
                cnt2 = int.Parse(rs.GetValue(0).ToString());
            }
            rs.Close();
            cmd.Dispose();
            cn.Close();
            if (cnt2 == 0)
            {
                Label1.Text = "Your account has been locked. Please contact Admin";
            }
            else
            {
                Session["User"] = TextBox1.Text;
                Response.Redirect("Home.aspx");
            }
        }
    }
}
