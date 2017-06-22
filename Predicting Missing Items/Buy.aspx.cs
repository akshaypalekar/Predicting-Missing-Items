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
public partial class Buy : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    SqlDataReader rs;
    string fid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = "Data Source=AKSHAY-PC\\SQLEXPRESS;Initial Catalog=Online_Shop;Integrated Security=True";
        if (!IsPostBack)
        {
            string s;
            s = Session["User"].ToString();
            if (s == "")
            {
                Response.Redirect("Default.aspx");
            }

        }
        cn.Open();
        cmd.Connection = cn;
        cmd.CommandText = "select * from Prod_Details where Post_ID='" + Session["PID"].ToString() + "'";
        rs = cmd.ExecuteReader();
        while (rs.Read())
        {
            TextBox1.Text = rs.GetValue(2).ToString();
            TextBox2.Text = rs.GetValue(3).ToString();
            TextBox3.Text = rs.GetValue(4).ToString();
            TextBox4.Text = rs.GetValue(5).ToString();
            TextBox5.Text = rs.GetValue(7).ToString();
            Image1.ImageUrl = rs.GetValue(8).ToString();
        }
        rs.Close();
        cmd.Dispose();
        cn.Close();
    }

    private void Auto_Gen()
    {
        int cnt;
        string id;
        int temp;
        temp = 0;
        cnt = 0;
        id = "";
        cn.Open();
        cmd.Connection = cn;
        cmd.CommandText = "select count(*) from Prod_Trans";
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
            cmd.CommandText = "select max(Trans_ID) from Prod_Trans";
            rs = cmd.ExecuteReader();
            while (rs.Read())
            {
                id = rs.GetValue(0).ToString();
            }
            rs.Close();
            cmd.Dispose();
            cn.Close();
            temp = int.Parse(id.Substring(1, 4));
            temp++;
            id = "";
            id = temp.ToString();
            if (id.Length == 1)
            {
                id = "T000" + id;
            }
            else if (id.Length == 2)
            {
                id = "T00" + id;
            }
            else if (id.Length == 3)
            {
                id = "T0" + id;
            }
            else if (id.Length == 4)
            {
                id = "T" + id;
            }
            fid = id;
        }
        else
        {
            fid = "T0001";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Auto_Gen();
        string buy = "";
        cn.Open();
        cmd.Connection = cn;
        cmd.CommandText = "select U_No,Prod_Type from Prod_Details where Post_ID='" + Session["PID"].ToString() + "'";
        rs = cmd.ExecuteReader();
        while (rs.Read())
        {
            buy = rs.GetValue(0).ToString();
            Session["ProductType"]=rs.GetValue(1).ToString();
        }
        rs.Close();
        cmd.Dispose();
        cn.Close();
        cn.Open();
        cmd.Connection = cn;
        cmd.CommandText = "insert into Prod_Trans values('" + fid + "','" + Session["PID"].ToString() + "','" + Session["User"].ToString() + "','" + buy + "','" + System.DateTime.Now.Month+"/"+System.DateTime.Now.Day+"/"+System.DateTime.Now.Year + "','" + DropDownList1.SelectedItem.Text + "'," + TextBox4.Text + ")";
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        cn.Close();

        int rev = int.Parse(TextBox4.Text);

        int tre = (int)(0.02 * rev);

        cn.Open();
        cmd.Connection = cn;
        cmd.CommandText = "insert into Admin_Revenue values('" + fid + "','" + System.DateTime.Now.Month + "/" + System.DateTime.Now.Day + "/" + System.DateTime.Now.Year + "'," + tre.ToString() + ")";
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        cn.Close();
        Label1.Text = "Transaction Completed Successfully";
    }
}
