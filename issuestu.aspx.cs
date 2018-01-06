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

public partial class issuestu : System.Web.UI.Page
{
    Class1 dc = new Class1();
    DataSet ds2;
    SqlDataReader reader;

    protected void Page_Load(object sender, EventArgs e)
    {
        string name;
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["id"] = TextBox1.Text;

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


        int book = dc.cntbook(Session["id"].ToString());
        if (book >= 2)
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

            int temp = dc.insert(TextBox1.Text, DropDownList1.SelectedItem.ToString(), Session["bname"].ToString(), Session["bauthor"].ToString(), System.DateTime.Now.ToShortDateString());
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
        reader = dc.selectbname(DropDownList1.SelectedItem.ToString());
        reader.Read();
        Session["bname"] = reader[0].ToString();
        Session["bauthor"] = reader[1].ToString();
        
    }
}



