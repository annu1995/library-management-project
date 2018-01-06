<%@ Page Language="VB" AutoEventWireup="false" CodeFile="removeacc.aspx.vb" Inherits="Default4" %>

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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
        CellPadding="4" DataKeyNames="IDNO" DataSourceID="SqlDataSource1" 
        GridLines="Horizontal" style="margin-left: 226px" Width="520px">
        <RowStyle BackColor="White" ForeColor="#333333" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="SNO" HeaderText="SNO" InsertVisible="False" 
                ReadOnly="True" SortExpression="SNO" />
            <asp:BoundField DataField="IDNO" HeaderText="IDNO" ReadOnly="True" 
                SortExpression="IDNO" />
            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
            <asp:BoundField DataField="BRANCH" HeaderText="BRANCH" 
                SortExpression="BRANCH" />
            <asp:BoundField DataField="YEAR" HeaderText="YEAR" SortExpression="YEAR" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [STUDENT_DETAIL] WHERE [IDNO] = @original_IDNO AND [SNO] = @original_SNO AND [NAME] = @original_NAME AND [BRANCH] = @original_BRANCH AND (([YEAR] = @original_YEAR) OR ([YEAR] IS NULL AND @original_YEAR IS NULL))" 
        InsertCommand="INSERT INTO [STUDENT_DETAIL] ([IDNO], [NAME], [BRANCH], [YEAR]) VALUES (@IDNO, @NAME, @BRANCH, @YEAR)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [STUDENT_DETAIL] WHERE ([IDNO] = @IDNO)" 
        UpdateCommand="UPDATE [STUDENT_DETAIL] SET [SNO] = @SNO, [NAME] = @NAME, [BRANCH] = @BRANCH, [YEAR] = @YEAR WHERE [IDNO] = @original_IDNO AND [SNO] = @original_SNO AND [NAME] = @original_NAME AND [BRANCH] = @original_BRANCH AND (([YEAR] = @original_YEAR) OR ([YEAR] IS NULL AND @original_YEAR IS NULL))">
        <SelectParameters>
            <asp:SessionParameter Name="IDNO" SessionField="name" Type="String" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="original_IDNO" Type="String" />
            <asp:Parameter Name="original_SNO" Type="Int32" />
            <asp:Parameter Name="original_NAME" Type="String" />
            <asp:Parameter Name="original_BRANCH" Type="String" />
            <asp:Parameter Name="original_YEAR" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="SNO" Type="Int32" />
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="BRANCH" Type="String" />
            <asp:Parameter Name="YEAR" Type="String" />
            <asp:Parameter Name="original_IDNO" Type="String" />
            <asp:Parameter Name="original_SNO" Type="Int32" />
            <asp:Parameter Name="original_NAME" Type="String" />
            <asp:Parameter Name="original_BRANCH" Type="String" />
            <asp:Parameter Name="original_YEAR" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="IDNO" Type="String" />
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="BRANCH" Type="String" />
            <asp:Parameter Name="YEAR" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" PostBackUrl="~/removestu.aspx" 
        Text="BACK" />
    </form>
<p>
&nbsp;
</p>
</body>
</html>
