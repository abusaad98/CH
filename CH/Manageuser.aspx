<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Manageuser.aspx.cs" Inherits="CH.Manageuser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container adminpage">
        <br />
        <h2>Users</h2>
    <p>Manage all users</p>
    <hr />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="user_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="user_id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="user_id"  Visible="False" />
            <asp:BoundField DataField="user_fname" HeaderText="First Name" SortExpression="user_fname" />
            <asp:BoundField DataField="user_lname" HeaderText="Last Name" SortExpression="user_lname" />
            <asp:BoundField DataField="user_email" HeaderText="Email" SortExpression="user_email" />
            <asp:BoundField DataField="user_phone_no" HeaderText="Phone No." SortExpression="user_phone_no" />
            <asp:BoundField DataField="user_type" HeaderText="User Type" SortExpression="user_type" />
            <asp:CommandField HeaderText="Control" ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle CssClass="admtblheader"/>
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [users] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [users] ([user_fname], [user_lname], [user_email], [user_phone_no], [user_type]) VALUES (@user_fname, @user_lname, @user_email, @user_phone_no, @user_type)" SelectCommand="SELECT [user_id], [user_fname], [user_lname], [user_email], [user_phone_no], [user_type] FROM [users] WHERE ([user_type] = @user_type)" UpdateCommand="UPDATE [users] SET [user_fname] = @user_fname, [user_lname] = @user_lname, [user_email] = @user_email, [user_phone_no] = @user_phone_no, [user_type] = @user_type WHERE [user_id] = @user_id">
        <DeleteParameters>
            <asp:Parameter Name="user_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="user_fname" Type="String" />
            <asp:Parameter Name="user_lname" Type="String" />
            <asp:Parameter Name="user_email" Type="String" />
            <asp:Parameter Name="user_phone_no" Type="String" />
            <asp:Parameter Name="user_type" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="student" Name="user_type" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="user_fname" Type="String" />
            <asp:Parameter Name="user_lname" Type="String" />
            <asp:Parameter Name="user_email" Type="String" />
            <asp:Parameter Name="user_phone_no" Type="String" />
            <asp:Parameter Name="user_type" Type="String" />
            <asp:Parameter Name="user_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
     <script type="text/javascript">  
        $(document).ready(function () {
            $('.active').removeClass('active');
            $('.musers').addClass('active');
        });
    </script>
</asp:Content>
