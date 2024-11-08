<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        id<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        name<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        city<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add" />
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" 
            onitemcommand="DataList1_ItemCommand">
            <EditItemTemplate>
                <asp:Label ID="Label7" runat="server" Text="id"></asp:Label>
                &nbsp;
                <asp:Label ID="Label8" runat="server" Text="name"></asp:Label>
&nbsp;
                <asp:Label ID="Label9" runat="server" Text="city"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("id") %>'></asp:TextBox>
                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("name") %>'></asp:TextBox>
                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Eval("city") %>'></asp:TextBox>
                <br />
                <asp:Button ID="Button4" runat="server" Text="update" />
                &nbsp;
                <asp:Button ID="Button5" runat="server" Text="cancel" />
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text="id"></asp:Label>
                &nbsp;
                <asp:Label ID="Label2" runat="server" Text="name"></asp:Label>
&nbsp;
                <asp:Label ID="Label3" runat="server" Text="city"></asp:Label>
                <br />
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                <asp:Label ID="Label6" runat="server" Text='<%# Eval("city") %>'></asp:Label>
                <br />
                <asp:Button ID="Button2" runat="server" Text="edit" />
                &nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="delete" />
            </ItemTemplate>
        </asp:DataList>
    
        </div>
    </form>
</body>
</html>
