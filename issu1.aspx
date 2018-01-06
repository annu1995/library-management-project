<%@ Page Language="VB" AutoEventWireup="false" CodeFile="issu1.aspx.vb" Inherits="issu1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2" DataKeyNames="Sno" 
        DataSourceID="SqlDataSource1">
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="Sno" HeaderText="Sno" ReadOnly="True" 
                SortExpression="Sno" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="account_id" HeaderText="account_id" 
                SortExpression="account_id" />
            <asp:BoundField DataField="book_code" HeaderText="book_code" 
                SortExpression="book_code" />
            <asp:BoundField DataField="book_name" HeaderText="book_name" 
                SortExpression="book_name" />
            <asp:BoundField DataField="issue_date" HeaderText="issue_date" 
                SortExpression="issue_date" />
            <asp:BoundField DataField="return_date" HeaderText="return_date" 
                SortExpression="return_date" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [staff_detail] WHERE [Sno] = @original_Sno AND [Name] = @original_Name AND [account_id] = @original_account_id AND (([book_code] = @original_book_code) OR ([book_code] IS NULL AND @original_book_code IS NULL)) AND (([book_name] = @original_book_name) OR ([book_name] IS NULL AND @original_book_name IS NULL)) AND (([issue_date] = @original_issue_date) OR ([issue_date] IS NULL AND @original_issue_date IS NULL)) AND (([return_date] = @original_return_date) OR ([return_date] IS NULL AND @original_return_date IS NULL))" 
        InsertCommand="INSERT INTO [staff_detail] ([Sno], [Name], [account_id], [book_code], [book_name], [issue_date], [return_date]) VALUES (@Sno, @Name, @account_id, @book_code, @book_name, @issue_date, @return_date)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [Sno], [Name], [account_id], [book_code], [book_name], [issue_date], [return_date] FROM [staff_detail] WHERE ([account_id] = @account_id)" 
        UpdateCommand="UPDATE [staff_detail] SET [Name] = @Name, [account_id] = @account_id, [book_code] = @book_code, [book_name] = @book_name, [issue_date] = @issue_date, [return_date] = @return_date WHERE [Sno] = @original_Sno AND [Name] = @original_Name AND [account_id] = @original_account_id AND (([book_code] = @original_book_code) OR ([book_code] IS NULL AND @original_book_code IS NULL)) AND (([book_name] = @original_book_name) OR ([book_name] IS NULL AND @original_book_name IS NULL)) AND (([issue_date] = @original_issue_date) OR ([issue_date] IS NULL AND @original_issue_date IS NULL)) AND (([return_date] = @original_return_date) OR ([return_date] IS NULL AND @original_return_date IS NULL))">
        <SelectParameters>
            <asp:SessionParameter Name="account_id" SessionField="name" Type="String" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="original_Sno" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_account_id" Type="String" />
            <asp:Parameter Name="original_book_code" Type="String" />
            <asp:Parameter Name="original_book_name" Type="String" />
            <asp:Parameter Name="original_issue_date" Type="String" />
            <asp:Parameter Name="original_return_date" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="account_id" Type="String" />
            <asp:Parameter Name="book_code" Type="String" />
            <asp:Parameter Name="book_name" Type="String" />
            <asp:Parameter Name="issue_date" Type="String" />
            <asp:Parameter Name="return_date" Type="String" />
            <asp:Parameter Name="original_Sno" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_account_id" Type="String" />
            <asp:Parameter Name="original_book_code" Type="String" />
            <asp:Parameter Name="original_book_name" Type="String" />
            <asp:Parameter Name="original_issue_date" Type="String" />
            <asp:Parameter Name="original_return_date" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Sno" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="account_id" Type="String" />
            <asp:Parameter Name="book_code" Type="String" />
            <asp:Parameter Name="book_name" Type="String" />
            <asp:Parameter Name="issue_date" Type="String" />
            <asp:Parameter Name="return_date" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" PostBackUrl="~/issuestaff.aspx" 
        Text="Back" />
    </form>
</body>
</html>
