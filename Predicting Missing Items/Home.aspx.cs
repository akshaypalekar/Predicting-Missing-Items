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
public partial class Home : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    SqlDataReader rs;
    protected void Page_Load(object sender, EventArgs e)
    {
        string uid = Session["User"].ToString();
        if (uid != "")
        {
            cn.ConnectionString = "Data Source=AKSHAY-PC\\SQLEXPRESS;Initial Catalog=Online_Shop;Integrated Security=True";
            cn.Open();
            cmd.Connection = cn;
            cmd.CommandText = "select U_Name from User_Details where U_No='" + uid + "'";
            rs = cmd.ExecuteReader();
            while (rs.Read())
            {
                Label1.Text = "Hi " + rs.GetValue(0).ToString() + ", Welcome...";
            }
            rs.Close();
            cmd.Dispose();
            cn.Close();
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["User"] = "";
        Response.Redirect("Default.aspx");
    }
}
