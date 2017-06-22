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
public partial class Admin_Ads : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = "Data Source=AKSHAY-PC\\SQLEXPRESS;Initial Catalog=Online_Shop;Integrated Security=True";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload1.FileName != "")
            {

                string pth = "~\\Ads\\" + FileUpload1.FileName;
                FileUpload1.SaveAs(MapPath(pth));

                pth = pth.Replace("\\", "\\\\");
                cn.Open();
                cmd.Connection = cn;
                cmd.CommandText = "insert into Ads values('" + pth + "','" + DropDownList1.SelectedItem.Text + "')";
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                cn.Close();
                Label1.Text = "Ad Uploaded successfully";
                DropDownList1.SelectedIndex = 0;
                SqlDataSource1.SelectCommand = "select * from Ads";
            }
        }
        catch
        {
            Label1.Text = "Cannot Upload Picture";
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label2.Text = GridView1.SelectedRow.Cells[0].Text;
        Label3.Text = GridView1.SelectedRow.Cells[1].Text;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Label2.Text != "" && Label3.Text != "")
        {
            cn.Open();
            cmd.Connection = cn;
            cmd.CommandText = "delete from Ads where Ad_Path='" + Label2.Text + "' and Ad_Cat='" + Label3.Text + "'";
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cn.Close();
            Label1.Text = "Ad Deleted successfully";
            Label2.Text = "";
            Label3.Text = "";

            SqlDataSource1.SelectCommand = "select * from Ads";

        }
        else
        {
            Label1.Text = "Select Ad to Delete";
        }

    }
}
