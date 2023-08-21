<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Managecourses.aspx.cs" Inherits="CH.Managecourses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container adminpage">
        <br />
        <h2>Courses</h2>
        <p>Manage all courses</p>
        <hr />
        <div>
            <a class="btn btn-secondary" href="/Addcourse"> + Add New Course</a>
        </div>

        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="course_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="course_id" HeaderText="course_id" InsertVisible="False" ReadOnly="True" SortExpression="course_id" Visible="False" />
                <asp:BoundField DataField="course_pic" HeaderText="Image" SortExpression="course_pic" />
                <asp:BoundField DataField="course_title" HeaderText="Title" SortExpression="course_title" />
                <asp:BoundField DataField="course_description" HeaderText="Description" SortExpression="course_description" />
                <asp:BoundField DataField="course_goals" HeaderText="Goals" SortExpression="course_goals" />
                <asp:BoundField DataField="course_from_date" HeaderText="From" SortExpression="course_from_date" DataFormatString="{0:dd/MM/yyy}" />
                <asp:BoundField DataField="course_to_date" DataFormatString="{0:dd/MM/yyy}" HeaderText="To" SortExpression="course_to_date" />
                <asp:BoundField DataField="course_price" HeaderText="Price" SortExpression="course_price" />
                <asp:BoundField DataField="institute_id" HeaderText="institute" SortExpression="institute_id" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle CssClass="admtblheader" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [course] WHERE [course_id] = @course_id" InsertCommand="INSERT INTO [course] ([course_pic], [course_title], [course_description], [course_goals], [course_from_date], [course_to_date], [course_price], [institute_id]) VALUES (@course_pic, @course_title, @course_description, @course_goals, @course_from_date, @course_to_date, @course_price, @institute_id)" SelectCommand="SELECT * FROM [course]" UpdateCommand="UPDATE [course] SET [course_pic] = @course_pic, [course_title] = @course_title, [course_description] = @course_description, [course_goals] = @course_goals, [course_from_date] = @course_from_date, [course_to_date] = @course_to_date, [course_price] = @course_price, [institute_id] = @institute_id WHERE [course_id] = @course_id">
            <DeleteParameters>
                <asp:Parameter Name="course_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="course_pic" Type="String" />
                <asp:Parameter Name="course_title" Type="String" />
                <asp:Parameter Name="course_description" Type="String" />
                <asp:Parameter Name="course_goals" Type="String" />
                <asp:Parameter Name="course_from_date" DbType="Date" />
                <asp:Parameter DbType="Date" Name="course_to_date" />
                <asp:Parameter Name="course_price" Type="Decimal" />
                <asp:Parameter Name="institute_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="course_pic" Type="String" />
                <asp:Parameter Name="course_title" Type="String" />
                <asp:Parameter Name="course_description" Type="String" />
                <asp:Parameter Name="course_goals" Type="String" />
                <asp:Parameter Name="course_from_date" DbType="Date" />
                <asp:Parameter Name="course_to_date" DbType="Date" />
                <asp:Parameter Name="course_price" Type="Decimal" />
                <asp:Parameter Name="institute_id" Type="Int32" />
                <asp:Parameter Name="course_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
     <script type="text/javascript">  
        $(document).ready(function () {
            $('.active').removeClass('active');
            $('.mcourses').addClass('active');
        });
    </script>
</asp:Content>
