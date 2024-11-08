using System;
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
namespace DropDownListExample

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "")
        {
            Label1.Text = "Please Select a City";
        }
        else
            Label1.Text = "Your Choice is:" + DropDownList1.SelectedValue;
    }
}
