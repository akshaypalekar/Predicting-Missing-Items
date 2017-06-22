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
public partial class Give_Feedback_User : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = "Data Source=AKSHAY-PC\\SQLEXPRESS;Initial Catalog=Online_Shop;Integrated Security=True";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.Connection = cn;
        cmd.CommandText = "insert into Feedback values('" + Session["User"].ToString() + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox1.Text + "')";
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        cn.Close();
        DropDownList1.SelectedIndex = -1;
        TextBox1.Text = "";
        Label1.Text = "Thank You for your Feedback";
    }
}
