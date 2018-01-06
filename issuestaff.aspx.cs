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
public partial class issuestaff : System.Web.UI.Page
{
    Class1 dc1 = new Class1();
    DataSet ds3;
    SqlDataReader reade;

    protected void Page_Load(object sender, EventArgs e)
    {
        string name;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["id"] = TextBox1.Text;

        try
        {
            reade = dc1.sltname1(TextBox1.Text);
            reade.Read();
            Session["bn"] = reade[0].ToString();
        }
        catch
        {
            Response.Write("<script>alert('Account does not exist')</script>");
        }


        int book = dc1.cntbook(Session["id"].ToString());
        if (book >= 4)
        {
            Response.Write("<script>alert('Allready issued')</script>");
        }
        else
        {
            Label2.Visible = true;
            DropDownList1.Visible = true;
            Button3.Visible = true;
            Button4.Visible = true;
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {

            int temp = dc1.insert(TextBox1.Text, DropDownList1.SelectedItem.ToString(), Session["bname"].ToString(), Session["bauthor"].ToString(), System.DateTime.Now.ToShortDateString());
            if (temp == 1)
            {
                //Session["y"] = "Yes";
                //int temp1 = dc.update1(DropDownList1.SelectedItem.ToString(), Session["y"].ToString());
                Response.Write("<script>alert('hello values inserted')</script>");
            }
        }
        catch
        {
            Response.Write("<script>alert('Not inserted')</script>");
        }



    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        reade = dc1.selectbname(DropDownList1.SelectedItem.ToString());
        reade.Read();
        Session["bname"] = reade[0].ToString();
        Session["bauthor"] = reade[1].ToString();

    }
}


