﻿using System;
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

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = DateTime.Now.ToLongTimeString();
        Label2.Text = DateTime.Now.ToLongTimeString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = DateTime.Now.ToLongTimeString();
        Label2.Text = DateTime.Now.ToLongTimeString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label2.Text = DateTime.Now.ToLongTimeString();
        Label1.Text = DateTime.Now.ToLongTimeString();

    }
}
