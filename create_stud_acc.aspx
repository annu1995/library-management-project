<%@ Page Language="VB" AutoEventWireup="false" CodeFile="create_stud_acc.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    </head>
<body bgcolor="#ffffcc">
    <form id="form1" runat="server">
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2" DataKeyNames="IDNO" 
        DataSourceID="SqlDataSource1" Height="315px" Width="509px" 
        style="margin-left: 182px">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <Fields>
            <asp:BoundField DataField="IDNO" HeaderText="IDNO" 
                ReadOnly="True" SortExpression="IDNO" />
            <asp:BoundField DataField="NAME" HeaderText="NAME" 
                SortExpression="NAME" />
            <asp:BoundField DataField="BRANCH" HeaderText="BRANCH" 
                SortExpression="BRANCH" />
            <asp:BoundField DataField="YEAR" HeaderText="YEAR" SortExpression="YEAR" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BorderWidth="2px" BackColor="#738A9C" Font-Bold="True" 
            ForeColor="White" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [STUDENT_DETAIL] WHERE [IDNO] = @original_IDNO AND [NAME] = @original_NAME AND [BRANCH] = @original_BRANCH AND (([YEAR] = @original_YEAR) OR ([YEAR] IS NULL AND @original_YEAR IS NULL))" 
        InsertCommand="INSERT INTO [STUDENT_DETAIL] ([IDNO], [NAME], [BRANCH], [YEAR]) VALUES (@IDNO, @NAME, @BRANCH, @YEAR)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [IDNO], [NAME], [BRANCH], [YEAR] FROM [STUDENT_DETAIL]" 
        UpdateCommand="UPDATE [STUDENT_DETAIL] SET [NAME] = @NAME, [BRANCH] = @BRANCH, [YEAR] = @YEAR WHERE [IDNO] = @original_IDNO AND [NAME] = @original_NAME AND [BRANCH] = @original_BRANCH AND (([YEAR] = @original_YEAR) OR ([YEAR] IS NULL AND @original_YEAR IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_IDNO" Type="String" />
            <asp:Parameter Name="original_NAME" Type="String" />
            <asp:Parameter Name="original_BRANCH" Type="String" />
            <asp:Parameter Name="original_YEAR" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="BRANCH" Type="String" />
            <asp:Parameter Name="YEAR" Type="String" />
            <asp:Parameter Name="original_IDNO" Type="String" />
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
    <br />
&nbsp;&nbsp;&nbsp;
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" PostBackUrl="~/admin.aspx" 
        Text="BACK" Width="93px" />
    <br />
    <br />
    <br />
    <br />
</form>
<p>
&nbsp;&nbsp;&nbsp;
</p>
<p>
&nbsp;&nbsp;
</p>
</body>
</html>
