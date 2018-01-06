using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using lib;

public partial class returnbook : System.Web.UI.Page
{

    Class1 dc = new Class1();
    DataSet ds2;
    SqlDataReader reader;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            reader = dc.sltname(TextBox1.Text);
            reader.Read();
            Session["bn"] = reader[0].ToString();
        }
        catch
        {
            Response.Write("<script>alert('Account does not exist')</script>");
        }

        
        
        try
        {

            int temp1 = dc.update(TextBox2.Text);
            if (temp1 == 1)
            {
                Response.Write("<script>alert('book returned')</script>");
            }
        }
        catch
        {
            Response.Write("<script>alert('problem in proccesing')</script>");
        }
    }
}
