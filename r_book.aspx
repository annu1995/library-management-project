<%@ Page Language="C#" AutoEventWireup="true" CodeFile="r_book.aspx.cs" Inherits="r_book" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="book_code" DataSourceID="SqlDataSource1" Height="50px" 
        Width="715px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" 
        BorderWidth="1px" CellPadding="3" CellSpacing="2" style="margin-left: 81px">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <Fields>
            <asp:BoundField DataField="sno" HeaderText="sno" SortExpression="sno" 
                InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="book_code" HeaderText="book_code" ReadOnly="True" 
                SortExpression="book_code" />
            <asp:BoundField DataField="book_name" HeaderText="book_name" 
                SortExpression="book_name" />
            <asp:BoundField DataField="book_author" HeaderText="book_author" 
                SortExpression="book_author" />
            <asp:BoundField DataField="book_price" HeaderText="book_price" 
                SortExpression="book_price" />
            <asp:CommandField ShowDeleteButton="True" />
        </Fields>
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [booksdetail] WHERE [book_code] = @original_book_code AND [sno] = @original_sno AND (([book_name] = @original_book_name) OR ([book_name] IS NULL AND @original_book_name IS NULL)) AND (([book_author] = @original_book_author) OR ([book_author] IS NULL AND @original_book_author IS NULL)) AND (([book_price] = @original_book_price) OR ([book_price] IS NULL AND @original_book_price IS NULL))" 
        InsertCommand="INSERT INTO [booksdetail] ([book_code], [book_name], [book_author], [book_price]) VALUES (@book_code, @book_name, @book_author, @book_price)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [booksdetail] WHERE ([book_code] = @book_code)" 
        UpdateCommand="UPDATE [booksdetail] SET [sno] = @sno, [book_name] = @book_name, [book_author] = @book_author, [book_price] = @book_price WHERE [book_code] = @original_book_code AND [sno] = @original_sno AND (([book_name] = @original_book_name) OR ([book_name] IS NULL AND @original_book_name IS NULL)) AND (([book_author] = @original_book_author) OR ([book_author] IS NULL AND @original_book_author IS NULL)) AND (([book_price] = @original_book_price) OR ([book_price] IS NULL AND @original_book_price IS NULL))">
        <SelectParameters>
            <asp:SessionParameter Name="book_code" SessionField="name" Type="String" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="original_book_code" Type="String" />
            <asp:Parameter Name="original_sno" Type="Int32" />
            <asp:Parameter Name="original_book_name" Type="String" />
            <asp:Parameter Name="original_book_author" Type="String" />
            <asp:Parameter Name="original_book_price" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="sno" Type="Int32" />
            <asp:Parameter Name="book_name" Type="String" />
            <asp:Parameter Name="book_author" Type="String" />
            <asp:Parameter Name="book_price" Type="Int32" />
            <asp:Parameter Name="original_book_code" Type="String" />
            <asp:Parameter Name="original_sno" Type="Int32" />
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" EnableViewState="False" 
        PostBackUrl="~/Removebooooo.aspx" Text="Back" />
    </form>
</body>
</html>
