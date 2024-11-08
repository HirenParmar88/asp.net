<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "")
        {
            Label1.Text = "Please Select a city";
        }
        else
        
            Label.text = "your choice is:" + DropDownList1.SelectedValue;
        
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Country"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>India</asp:ListItem>
            <asp:ListItem>Pakistan</asp:ListItem>
            <asp:ListItem>USA</asp:ListItem>
            <asp:ListItem>Japan</asp:ListItem>
            <asp:ListItem>China</asp:ListItem>
            <asp:ListItem>Dubai</asp:ListItem>
        </asp:DropDownList>
    
    </div>
    <asp:Label ID="Label2" runat="server" Text="State"></asp:Label>
    <br />
    <asp:DropDownList ID="DropDownList2" runat="server">
        <asp:ListItem>Gujrat</asp:ListItem>
        <asp:ListItem>Maharastra</asp:ListItem>
        <asp:ListItem>Punjab</asp:ListItem>
        <asp:ListItem>UP</asp:ListItem>
        <asp:ListItem>MP</asp:ListItem>
        <asp:ListItem>Shreelanka</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label3" runat="server" Text="City"></asp:Label>
    <br />
    <asp:DropDownList ID="DropDownList3" runat="server">
        <asp:ListItem>Ahemedabad</asp:ListItem>
        <asp:ListItem>Surat</asp:ListItem>
        <asp:ListItem>Pune</asp:ListItem>
        <asp:ListItem>Mumbai</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
    </form>
</body>
</html>
