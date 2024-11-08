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
using System.IO;    //for directory

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string folderpath = Server.MapPath("~/image2/");
        if (!Directory.Exists(folderpath))
        {
            Directory.Exists(folderpath);
        }
        FileUpload1.SaveAs(folderpath + Path.GetFileName(FileUpload1.FileName));
        Image1.ImageUrl = "~/image2/" + Path.GetFileName(FileUpload1.FileName);
        Image1.Width = 200;
    }
}
