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
using System.IO ;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentType == "image/jpeg")
            {
                FileUpload1.SaveAs(@"d:\bcasem5\asp.net\fileupload\files\" + FileUpload1.FileName);

                Label1.Text = "File" + FileUpload1.FileName + "IS UPLOADED";

                Label2.Text = "FILE CONTENT TYPE:" + FileUpload1.PostedFile.ContentType;

                Label3.Text = "FILE CONTENT BYTE:" + FileUpload1.PostedFile.ContentLength;
            }
            else
            {
                Label1.Text = "Please Select Image Only";
                Label2.Text = "";
                Label3.Text = "";
            }
        }
        else
        {
            Label1.Text = "Please Select Image Only";
            Label2.Text = "";
            Label3.Text = "";
        }
       
    }
    
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        String Folderpath = Server.MapPath("~/fileupload/");

    }
}
