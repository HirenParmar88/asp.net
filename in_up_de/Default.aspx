<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>Id</td>
                <td>
                    <asp:TextBox ID="id" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>FirstName</td>
                <td>
                    <asp:TextBox ID="firstname" runat="server"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td>LastName</td>
                <td>
                    <asp:TextBox ID="lastname" runat="server"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td>
                    City
                </td>
                <td>
                    <asp:TextBox ID="city" runat="server"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td colspan ="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Insert" onclick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="Delete" onclick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" Text="Update" onclick="Button3_Click" 
                        style="height: 26px" />
                    <asp:Button ID="Button4" runat="server" Text="View" onclick="Button4_Click" />
                </td>
            </tr>
            
           
        </table>
        
        <br/>
        
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        
        
    </div>
    </form>
</body>
</html>
