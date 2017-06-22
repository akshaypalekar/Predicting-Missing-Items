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

public partial class Admin_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string uid = Session["User"].ToString();
        if (uid != "")
        {
                Label1.Text = "Hi Admin Welcome...";
        }
        else
        {
            Response.Redirect("Admin_Login.aspx");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["User"] = "";
        Response.Redirect("Admin_Login.aspx");
    }
}
