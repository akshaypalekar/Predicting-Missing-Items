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
using System.Text.RegularExpressions;
public partial class Cust_Home : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    SqlDataReader rs;
    protected void Page_Load(object sender, EventArgs e)
    {
        string uid = Session["User"].ToString();
        string inte = "";
        if (uid != "")
        {
            cn.ConnectionString = "Data Source=AKSHAY-PC\\SQLEXPRESS;Initial Catalog=Online_Shop;Integrated Security=True";
            cn.Open();
            cmd.Connection = cn;
            cmd.CommandText = "select U_Name,Inte from Cust_Data where U_No='" + uid + "'";
            rs = cmd.ExecuteReader();
            while (rs.Read())
            {
                Label1.Text = "Hi " + rs.GetValue(0).ToString() + ", Welcome...";
                inte = rs.GetValue(1).ToString();
            }
            rs.Close();
            cmd.Dispose();
            cn.Close();

            //Declaring the arrays
            ArrayList arr_postid = new ArrayList();
            arr_postid.Clear();
            ArrayList arr_count = new ArrayList();
            arr_count.Clear();
            ArrayList arr_prodtype = new ArrayList();
            arr_prodtype.Clear();

            ArrayList arr_color_count = new ArrayList();
            arr_color_count.Clear();
            ArrayList arr_color = new ArrayList();
            arr_prodtype.Clear();

            ArrayList arr_gender_count = new ArrayList();
            arr_gender_count.Clear();
            ArrayList arr_gender = new ArrayList();
            arr_prodtype.Clear();

            ArrayList arr_pattern_count = new ArrayList();
            arr_pattern_count.Clear();
            ArrayList arr_pattern = new ArrayList();
            arr_pattern.Clear();

            //For Prod Type
            cn.Open();
            cmd.Connection = cn;
            cmd.CommandText = "select Count(Trans_ID),p.Prod_Type from Prod_Trans pt LEFT JOIN Prod_Details p ON pt.Post_ID=p.Post_ID where Buyer='"+Session["User"].ToString()+"' group by p.Prod_Type";
            rs = cmd.ExecuteReader();
            while (rs.Read())
            {
                arr_count.Add(rs.GetValue(0).ToString());
                //arr_postid.Add(rs.GetValue(1).ToString());
                arr_prodtype.Add(rs.GetValue(1).ToString());
            }
            rs.Close();
            cmd.Dispose();
            cn.Close();

            //For Gender
            cn.Open();
            cmd.Connection = cn;
            cmd.CommandText = "select Count(Trans_ID),p.Gender from Prod_Trans pt LEFT JOIN Prod_Details p ON pt.Post_ID=p.Post_ID where Buyer='" + Session["User"].ToString() + "' group by p.Gender";
            rs = cmd.ExecuteReader();
            while (rs.Read())
            {
                arr_gender_count.Add(rs.GetValue(0).ToString());
                //arr_postid.Add(rs.GetValue(1).ToString());
                arr_gender.Add(rs.GetValue(1).ToString());
            }
            rs.Close();
            cmd.Dispose();
            cn.Close();

            for (int i = 0; i < arr_gender_count.Count; i++)
            {
                for (int j = 0; j < arr_gender_count.Count; j++)
                {
                    if (int.Parse(arr_gender_count[i].ToString()) > int.Parse(arr_gender_count[j].ToString()))
                    {
                        //Swap Gender count in Array
                        string temp_count = arr_gender_count[i].ToString();
                        arr_gender_count[i] = arr_gender_count[j];
                        arr_gender_count[j] = temp_count;

                        ////Sort PostID
                        //string temp_postid = arr_postid[i].ToString();
                        //arr_postid[i] = arr_postid[j].ToString();
                        //arr_postid[j] = temp_postid;

                        //Swap Gender in Array
                        string temp_gender = arr_gender[i].ToString();
                        arr_gender[i] = arr_gender[j];
                        arr_gender[j] = temp_gender;
                    }
                }
            }

            if (arr_gender.Count > 0)
            {
                //For Color
                cn.Open();
                cmd.Connection = cn;
                cmd.CommandText = "select Count(Trans_ID),p.Color from Prod_Trans pt LEFT JOIN Prod_Details p ON pt.Post_ID=p.Post_ID where Buyer='" + Session["User"].ToString() + "' and p.Gender='"+arr_gender[0].ToString()+"' group by p.Color";
                rs = cmd.ExecuteReader();
                while (rs.Read())
                {
                    arr_color_count.Add(rs.GetValue(0).ToString());
                    arr_color.Add(rs.GetValue(1).ToString());
                }
                rs.Close();
                cmd.Dispose();
                cn.Close();

                for (int i = 0; i < arr_color_count.Count; i++)
                {
                    for (int j = 0; j < arr_color_count.Count; j++)
                    {
                        if (int.Parse(arr_color_count[i].ToString()) > int.Parse(arr_color_count[j].ToString()))
                        {
                            //Sort Count
                            string temp_count = arr_color_count[i].ToString();
                            arr_color_count[i] = arr_color_count[j];
                            arr_color_count[j] = temp_count;

                            //Sort Color
                            string temp_color = arr_color[i].ToString();
                            arr_color[i] = arr_color[j];
                            arr_color[j] = temp_color;
                        }
                    }
                }

                //---------------//

                //For Pattern
                cn.Open();
                cmd.Connection = cn;
                cmd.CommandText = "select Count(Trans_ID),p.Pattern from Prod_Trans pt LEFT JOIN Prod_Details p ON pt.Post_ID=p.Post_ID where Buyer='" + Session["User"].ToString() + "' and p.Gender='" + arr_gender[0].ToString() + "' group by p.Pattern";
                rs = cmd.ExecuteReader();
                while (rs.Read())
                {
                    arr_pattern_count.Add(rs.GetValue(0).ToString());
                    arr_pattern.Add(rs.GetValue(1).ToString());
                }
                rs.Close();
                cmd.Dispose();
                cn.Close();

                for (int i = 0; i < arr_pattern_count.Count; i++)
                {
                    for (int j = 0; j < arr_pattern_count.Count; j++)
                    {
                        if (int.Parse(arr_pattern_count[i].ToString()) > int.Parse(arr_pattern_count[j].ToString()))
                        {
                            //Sort Count
                            string temp_count = arr_pattern_count[i].ToString();
                            arr_pattern_count[i] = arr_pattern_count[j];
                            arr_pattern_count[j] = temp_count;

                            //Sort Pattern
                            string temp_pattern = arr_pattern[i].ToString();
                            arr_pattern[i] = arr_pattern[j];
                            arr_pattern[j] = temp_pattern;
                        }
                    }
                }
            }

            for (int i = 0; i < arr_count.Count; i++)
            {
                for (int j = 0; j < arr_count.Count; j++)
                {
                    if (int.Parse(arr_count[i].ToString()) > int.Parse(arr_count[j].ToString()))
                    {
                        //Sort Count
                        string temp_count = arr_count[i].ToString();
                        arr_count[i] = arr_count[j].ToString();
                        arr_count[j] = temp_count;

                        ////Sort PostID
                        //string temp_postid = arr_postid[i].ToString();
                        //arr_postid[i] = arr_postid[j].ToString();
                        //arr_postid[j] = temp_postid;

                        //Sort productType
                        string temp_prodtype = arr_prodtype[i].ToString();
                        arr_prodtype[i] = arr_prodtype[j].ToString();
                        arr_prodtype[j] = temp_prodtype;
                    }
                }
            }



            if (arr_count.Count > 0)
            {

                cn.Open();
                cmd.Connection = cn;
                cmd.CommandText = "Select * from Prod_Trans where Buyer='"+Session["User"].ToString()+"'";
                rs = cmd.ExecuteReader();
                while (rs.Read())
                {
                    arr_postid.Add(rs.GetValue(1).ToString());
                }
                rs.Close();
                cmd.Dispose();
                cn.Close();

                string str = "";
                for (int i = 0; i < arr_postid.Count; i++)
                {
                    str = str +"'"+arr_postid[i].ToString() + "',";
                }

                str = str.Substring(0, str.Length - 1);


                string html = "<table width='100%'>";
                if (arr_color_count.Count > 0)
                {
                    html = html + "<tr><td>Image</td><td>Product Name</td><td>Product Rate</td></tr>";
                    cn.Open();
                    cmd.Connection = cn;
                    cmd.CommandText = "Select * from Prod_Details where Prod_Type='" + arr_prodtype[0].ToString() + "' and Color='" + arr_color[0].ToString() + "' and Post_ID NOT IN (" + str + ") and A_Status='On'";
                    rs = cmd.ExecuteReader();
                    while (rs.Read())
                    {
                        string path = rs.GetValue(8).ToString().Replace("~\\\\", "");
                        path = path.Replace("\\\\", "/");
                        html = html + "<tr><td><img src='" + path + "' width='150px' height='100px'></td><td>" + rs.GetValue(2).ToString() + "</td><td>" + rs.GetValue(5).ToString() + "</td></tr>";
                    }
                    rs.Close();
                    cmd.Dispose();
                    cn.Close();
                    html = html + "</table>";
                    ReplaceDivColor.InnerHtml = html;
                }

                if (arr_pattern_count.Count > 0)
                {
                    html = "<table width='100%'>";
                    html = html + "<tr><td>Image</td><td>Product Name</td><td>Product Rate</td></tr>";
                    cn.Open();
                    cmd.Connection = cn;
                    cmd.CommandText = "Select * from Prod_Details where Prod_Type='" + arr_prodtype[0].ToString() + "' and Pattern='" + arr_pattern[0].ToString() + "' and Post_ID NOT IN (" + str + ") and A_Status='On'";
                    rs = cmd.ExecuteReader();
                    while (rs.Read())
                    {
                        string path = rs.GetValue(8).ToString().Replace("~\\\\", "");
                        path = path.Replace("\\\\", "/");
                        html = html + "<tr><td><img src='" + path + "' width='150px' height='100px'></td><td>" + rs.GetValue(2).ToString() + "</td><td>" + rs.GetValue(5).ToString() + "</td></tr>";
                    }
                    rs.Close();
                    cmd.Dispose();
                    cn.Close();
                    html = html + "</table>";
                    ReplaceDivPattern.InnerHtml = html;
                }
            }
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
