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
public partial class Admin_View_Post : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string s;
            s = Session["User"].ToString();
            if (s == "")
            {
                Response.Redirect("Admin_Login.aspx");
            }
        }
        cn.ConnectionString = "Data Source=AKSHAY-PC\\SQLEXPRESS;Initial Catalog=Online_Shop;Integrated Security=True";

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.SelectedRow.Cells[0].Text;
        TextBox2.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBox3.Text = GridView1.SelectedRow.Cells[7].Text;
        Image1.ImageUrl = GridView1.SelectedRow.Cells[8].Text;
        DropDownList1.SelectedValue = GridView1.SelectedRow.Cells[9].Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            cn.Open();
            cmd.Connection = cn;
            cmd.CommandText = "update Prod_Details set A_Status='" + DropDownList1.SelectedItem.Text + "' where Post_ID='" + TextBox1.Text + "'";
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cn.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            Image1.ImageUrl = "";
            SqlDataSource1.SelectCommand = "select * from Prod_Details";
               Label1.Text = "Status Updated";

        }
    }
}
