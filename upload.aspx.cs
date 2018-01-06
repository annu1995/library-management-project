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

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath(@"~\Files\") + FileUpload1.FileName);
        Response.Write(FileUpload1.FileName.ToString());
        String s2 = FileUpload1.FileName.ToString();

        String s5 = "Insert into File values('" + s2 + "');";



       // String s7 = (String)cmd.ExecuteScalar();
       // String s8 = s7.Trim();

       //Response.Write("<a href:&quot;~\Files\>);
    }
}
