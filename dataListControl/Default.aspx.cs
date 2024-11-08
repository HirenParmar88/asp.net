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
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page 
{
    SqlConnection con = new SqlConnection (@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\bcaSem5\asp.net\dataListControl\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { 
            filldata();
        }
    }
    public void filldata()
    {
        SqlDataAdapter ds=new SqlDataAdapter ("select * from Table1",con);
        DataSet ds=new DataSet ();
        DataSet .Fill(ds);
        DataList1 .DataSource =ds;
        DataList1.DataBind ();
    }
protected void  Button1_Click(object sender, EventArgs e)
{
    SqlCommand cmd=new SqlCommand ("insert into Table1 values("+TextBox1.Text +",'"+TextBox2 .Text +"','"+TextBox3.Text +"')",con);
    con.Open ();
    cmd.EndExecuteNonQuery ();
    con.Close ();
    filldata ();
}
protected void  DataList1_ItemCommand(object source, DataListCommandEventArgs e)
{
    if(e.CommandName =="edit")
    {
        DataList1.EditItemIndex =e.Item.ItemIndex ;
        filldata ();
    }
    else if(e.CommandName =="cancel")
    {
        DataList1.EditItemIndex =-1;
        filldata ();
    }
    else if(e.CommandName =="update")
    {
        TextBox id=e.Item .FindControl ("TextBox1") as TextBox ;
        TextBox name=e.Item .FindControl ("TextBox2")as TextBox ;
        TextBox city=e.Item .FindControl ("TextBox3")as TextBox;
        SqlCommand cmd=new SqlCommand ("update Table1 set name'"+name.Text +"',city='"+city.Text +"',");
        con.Open ();
        cmd.EndExecuteNonQuery ();
        con.Close ();
        DataList1.EditItemIndex =-1;
        filldata ();
    }
    else if(e.CommandName =="delete")
    {
        Label id=e.Item .FindControl ("Label1")as Label ;
        SqlCommand cmd=new SqlCommand ("delete from Table1 where id="+id.Text ,con);
        con.Open ();
        cmd.EndExecuteNonQuery ();
        con.Close ();
        filldata ();
    }
}
}
