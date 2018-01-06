<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add book.aspx.cs" Inherits="Add_book" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            color: #008000;
            font-style: italic;
        }
    </style>
</head>
<body bgcolor="#ccffcc">
    <form id="form1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <span class="style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    Add Book Page</span><br class="style1" />
    <br />
    <br />
&nbsp;<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="book_code" DataSourceID="SqlDataSource1" Height="268px" 
        onpageindexchanging="DetailsView1_PageIndexChanging" style="margin-left: 163px" 
        Width="602px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" 
        BorderWidth="1px" CellPadding="3" CellSpacing="2">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <Fields>
            <asp:BoundField DataField="book_code" HeaderText="book_code" 
                SortExpression="book_code" ReadOnly="True" />
            <asp:BoundField DataField="book_name" HeaderText="book_name" 
                SortExpression="book_name" />
            <asp:BoundField DataField="book_author" HeaderText="book_author" 
                SortExpression="book_author" />
            <asp:BoundField DataField="book_price" HeaderText="book_price" 
                SortExpression="book_price" />
            <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [booksdetail] WHERE [book_code] = @original_book_code AND (([book_name] = @original_book_name) OR ([book_name] IS NULL AND @original_book_name IS NULL)) AND (([book_author] = @original_book_author) OR ([book_author] IS NULL AND @original_book_author IS NULL)) AND (([book_price] = @original_book_price) OR ([book_price] IS NULL AND @original_book_price IS NULL))" 
        InsertCommand="INSERT INTO [booksdetail] ([book_code], [book_name], [book_author], [book_price]) VALUES (@book_code, @book_name, @book_author, @book_price)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [book_code], [book_name], [book_author], [book_price] FROM [booksdetail]" 
        UpdateCommand="UPDATE [booksdetail] SET [book_name] = @book_name, [book_author] = @book_author, [book_price] = @book_price WHERE [book_code] = @original_book_code AND (([book_name] = @original_book_name) OR ([book_name] IS NULL AND @original_book_name IS NULL)) AND (([book_author] = @original_book_author) OR ([book_author] IS NULL AND @original_book_author IS NULL)) AND (([book_price] = @original_book_price) OR ([book_price] IS NULL AND @original_book_price IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_book_code" Type="String" />
            <asp:Parameter Name="original_book_name" Type="String" />
            <asp:Parameter Name="original_book_author" Type="String" />
            <asp:Parameter Name="original_book_price" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="book_name" Type="String" />
            <asp:Parameter Name="book_author" Type="String" />
            <asp:Parameter Name="book_price" Type="Int32" />
            <asp:Parameter Name="original_book_code" Type="String" />
            <asp:Parameter Name="original_book_name" Type="String" />
            <asp:Parameter Name="original_book_author" Type="String" />
            <asp:Parameter Name="original_book_price" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="book_code" Type="String" />
            <asp:Parameter Name="book_name" Type="String" />
            <asp:Parameter Name="book_author" Type="String" />
            <asp:Parameter Name="book_price" Type="Int32" />
        </InsertParameters>
    </asp:SqlDataSource>
    <div>
    
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" EnableTheming="True" 
        PostBackUrl="~/choose.aspx" Text="Back" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </form>
</body>
</html>
