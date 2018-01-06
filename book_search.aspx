<%@ Page Language="VB" AutoEventWireup="false" CodeFile="book_search.aspx.vb" Inherits="book_search" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body bgcolor="#ffffcc">
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
        CellPadding="3" CellSpacing="1" DataKeyNames="book_code" 
        DataSourceID="SqlDataSource1" GridLines="None">
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="sno" SortExpression="sno" 
                InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="book_code" HeaderText="book_code" 
                SortExpression="book_code" ReadOnly="True" />
            <asp:BoundField DataField="book_name" HeaderText="book_name" 
                SortExpression="book_name" />
            <asp:BoundField DataField="book_author" HeaderText="book_author" 
                SortExpression="book_author" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        
        
        SelectCommand="SELECT sno, book_code, book_name, book_author FROM booksdetail WHERE (book_author LIKE '%' + @book_author + '%') OR (book_name LIKE '%' + @book_name + '%')">
        <SelectParameters>
            <asp:SessionParameter Name="book_author" SessionField="name" />
            <asp:SessionParameter Name="book_name" SessionField="name" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
