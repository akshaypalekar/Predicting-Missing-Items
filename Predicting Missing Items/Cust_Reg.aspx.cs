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
public partial class Cust_Reg : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    SqlDataReader rs;
    string cap = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = "Data Source=AKSHAY-PC\\SQLEXPRESS;Initial Catalog=Online_Shop;Integrated Security=True";
        if (!IsPostBack)
        {
            Auto_Gen();
            Random r = new Random();
            cap = r.Next().ToString();
            Label3.Text = cap;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox8.Text == Label3.Text)
        {
            string inte = "";
            int i = 0;
            for (i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected == true)
                {
                    inte = inte + CheckBoxList1.Items[i].Text + ",";
                }
            }

            inte = inte.Substring(0, inte.Length - 1);
            cn.Open();
            cmd.Connection = cn;
            cmd.CommandText = "insert into Cust_Data values('" + Label1.Text + "','" + TextBox1.Text + "','" + TextBox7.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox6.Text + "','On','" + inte + "')";
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cn.Close();

            cn.Open();
            cmd.Connection = cn;
            cmd.CommandText = "insert into Cust_Login values('" + Label1.Text + "','" + TextBox5.Text + "')";
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cn.Close();

        Label1.Text = "";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        Label3.Text = "";

        Label2.Text = "Customer Registered Successfully";
    }
    else
    {
        Random r = new Random();
        cap = r.Next().ToString();
        Label3.Text = cap;
        Label2.Text = "Invalid. Try Again";
        TextBox8.Text = "";
        TextBox8.Focus();
    }
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
        cmd.CommandText = "select count(*) from Cust_Data";
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
            cmd.CommandText = "select max(U_No) from Cust_Data";
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
                id = "C000" + id;
            }
            else if (id.Length == 2)
            {
                id = "C00" + id;
            }
            else if (id.Length == 3)
            {
                id = "C0" + id;
            }
            else if (id.Length == 4)
            {
                id = "C" + id;
            }
            Label1.Text = id;
        }
        else
        {
            Label1.Text = "C0001";
        }
        TextBox1.Focus();
    }
}
