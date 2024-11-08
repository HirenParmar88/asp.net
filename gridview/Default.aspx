<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        <asp:Table ID="Table1" runat="server" Height="58px" Width="94px">
            <asp:TableRow ID="No" runat="server">
            </asp:TableRow>
            <asp:TableRow ID="Name" runat="server">
            </asp:TableRow>
            <asp:TableRow ID="City" runat="server">
            </asp:TableRow>
        </asp:Table>
    </p>
    <p>
        No :
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        Name :         <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>
        City :         <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </p>
    <p>
        &nbsp;</p>
    <div>
    
    </div>
    </form>
</body>
</html>
