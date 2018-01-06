<%@ Page Language="VB" AutoEventWireup="false" CodeFile="staff.aspx.vb" Inherits="staff" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body bgcolor="#ffffcc">
    <form id="form1" runat="server">
    <br />
    <br />
    &nbsp;<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource2" Height="282px" 
        Width="512px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" 
        BorderWidth="1px" CellPadding="3" CellSpacing="2" 
        style="margin-left: 239px; margin-top: 0px;">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <Fields>
            <asp:BoundField DataField="id" HeaderText="id" 
                SortExpression="id" ReadOnly="True" />
            <asp:BoundField DataField="Name" HeaderText="Name" 
                SortExpression="Name" />
            <asp:BoundField DataField="Department" HeaderText="Department" 
                SortExpression="Department" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [staff_detail] WHERE [id] = @original_id AND [Name] = @original_Name AND (([Department] = @original_Department) OR ([Department] IS NULL AND @original_Department IS NULL))" 
        InsertCommand="INSERT INTO [staff_detail] ([Name], [id], [Department]) VALUES (@Name, @id, @Department)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [Name], [id], [Department] FROM [staff_detail]" 
        UpdateCommand="UPDATE [staff_detail] SET [Name] = @Name, [Department] = @Department WHERE [id] = @original_id AND [Name] = @original_Name AND (([Department] = @original_Department) OR ([Department] IS NULL AND @original_Department IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Department" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="original_id" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Department" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="id" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <br />
    &nbsp;<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" PostBackUrl="~/ADMIN1.aspx" 
        Text="Back" />
    </form>
</body>
</html>
