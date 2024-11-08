<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form2" runat="server">
    <div>
    
        <p>
            Pin
            <asp:TextBox ID="TextBoxPin" runat="server"></asp:TextBox>
    </p>
    <p>
        Id&nbsp;
        <asp:TextBox ID="TextBoxId" runat="server"></asp:TextBox>
    </p>
        <p>
            Name
            <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
    </p>
        <p>
            City
            <asp:TextBox ID="TextBoxCity" runat="server"></asp:TextBox>
    </p>
    
    </div>
    <asp:Button ID="Btnins" runat="server" onclick="Btnins_Click" Text="Insert" />
&nbsp;&nbsp;
    <asp:Button ID="Btnupd" runat="server" Text="Update" />
&nbsp;&nbsp;
    <asp:Button ID="Btndel" runat="server" Text="Delete" />
&nbsp;&nbsp;
    <asp:Button ID="Btnsel" runat="server" Text="Select" />
&nbsp;&nbsp;
    <asp:Button ID="Btnclr" runat="server" Text="Clear" />
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    </form>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
