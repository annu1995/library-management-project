<%@ Page Language="VB" AutoEventWireup="false" CodeFile="REMOVESTAFFDETAIL.aspx.vb" Inherits="REMOVESTAFFDETAIL" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
        CellPadding="4" DataKeyNames="id" 
        DataSourceID="SqlDataSource1" GridLines="Horizontal" 
        style="margin-left: 168px" Width="654px">
        <RowStyle BackColor="White" ForeColor="#333333" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="SNO" HeaderText="SNO" 
                SortExpression="SNO" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="id" HeaderText="id" 
                SortExpression="id" ReadOnly="True" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Department" HeaderText="Department" 
                SortExpression="Department" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#336666" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [staff_detail] WHERE [id] = @original_id AND [Name] = @original_Name AND (([Department] = @original_Department) OR ([Department] IS NULL AND @original_Department IS NULL)) AND [SNO] = @original_SNO" 
        InsertCommand="INSERT INTO [staff_detail] ([Name], [id], [Department]) VALUES (@Name, @id, @Department)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [staff_detail] WHERE ([id] = @id)" 
        UpdateCommand="UPDATE [staff_detail] SET [Name] = @Name, [Department] = @Department, [SNO] = @SNO WHERE [id] = @original_id AND [Name] = @original_Name AND (([Department] = @original_Department) OR ([Department] IS NULL AND @original_Department IS NULL)) AND [SNO] = @original_SNO">
        <SelectParameters>
            <asp:SessionParameter Name="id" SessionField="name" Type="String" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Department" Type="String" />
            <asp:Parameter Name="original_SNO" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="SNO" Type="Int32" />
            <asp:Parameter Name="original_id" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Department" Type="String" />
            <asp:Parameter Name="original_SNO" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="id" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" PostBackUrl="~/remvestaff.aspx" 
        Text="Back" Width="60px" />
    </form>
</body>
</html>
