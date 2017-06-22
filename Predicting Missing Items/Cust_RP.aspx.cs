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
public partial class Cust_RP : System.Web.UI.Page
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
        cmd.CommandText = "select Count(*) from Cust_Data where U_No='" + TextBox1.Text + "' and U_Email='" + TextBox2.Text + "' and Password_Hint='" + TextBox3.Text + "'";
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
            Label1.ForeColor = System.Drawing.Color.Maroon;
            Label1.Text = "Invalid Details Provided";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox1.Focus();
        }
        else
        {
            cn.Open();
            cmd.Connection = cn;
            cmd.CommandText = "select Password from Cust_Login where Username='" + TextBox1.Text + "'";
            rs = cmd.ExecuteReader();
            while (rs.Read())
            {
                Label1.ForeColor = System.Drawing.Color.Navy;
                Label1.Text = "Your Password : " + rs.GetValue(0).ToString();
            }
            rs.Close();
            cmd.Dispose();
            cn.Close();
        }
    }
}
