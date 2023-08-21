<%@ Page Title="Admin" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="CH.Admin1" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container">
        <h2><%: Title %></h2>
        <h6>Overview</h6>
        <hr />

        <asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="course_id,Expr1" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="course_id" HeaderText="course_id" SortExpression="course_id" InsertVisible="False" ReadOnly="True" Visible="False" />
                <asp:TemplateField HeaderText="Image" SortExpression="course_pic">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("course_pic") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# "/images/"+ Eval("course_pic") %>' />
                        </ItemTemplate>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="course_title" HeaderText="Title" SortExpression="course_title" />
                <asp:BoundField DataField="course_description" HeaderText="course_description" SortExpression="course_description" Visible="False" />
                <asp:BoundField DataField="course_goals" HeaderText="course_goals" SortExpression="course_goals" Visible="False" />
                <asp:BoundField DataField="course_from_date" HeaderText="From" SortExpression="course_from_date" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="course_to_date" HeaderText="To" SortExpression="course_to_date" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="course_price" HeaderText="Price" SortExpression="course_price" />
                <asp:BoundField DataField="institute_id" HeaderText="Institute" SortExpression="institute_id" Visible="False" />
                <asp:BoundField DataField="Expr1" HeaderText="Expr1" InsertVisible="False" ReadOnly="True" SortExpression="Expr1" Visible="False" />
                <asp:BoundField DataField="institute_name" HeaderText="Institute" SortExpression="institute_name" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [course] WHERE [course_id] = @course_id" InsertCommand="INSERT INTO [course] ([course_pic], [course_title], [course_description], [course_goals], [course_from_date], [course_to_date], [course_price], [institute_id]) VALUES (@course_pic, @course_title, @course_description, @course_goals, @course_from_date, @course_to_date, @course_price, @institute_id)" SelectCommand="SELECT course.course_id, course.course_pic, course.course_title, course.course_description, course.course_goals, course.course_from_date, course.course_to_date, course.course_price, course.institute_id, institute.institute_id AS Expr1, institute.institute_name FROM course INNER JOIN institute ON course.institute_id = institute.institute_id" UpdateCommand="UPDATE [course] SET [course_pic] = @course_pic, [course_title] = @course_title, [course_description] = @course_description, [course_goals] = @course_goals, [course_from_date] = @course_from_date, [course_to_date] = @course_to_date, [course_price] = @course_price, [institute_id] = @institute_id WHERE [course_id] = @course_id">
            <DeleteParameters>
                <asp:Parameter Name="course_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="course_pic" Type="String" />
                <asp:Parameter Name="course_title" Type="String" />
                <asp:Parameter Name="course_description" Type="String" />
                <asp:Parameter Name="course_goals" Type="String" />
                <asp:Parameter DbType="Date" Name="course_from_date" />
                <asp:Parameter DbType="Date" Name="course_to_date" />
                <asp:Parameter Name="course_price" Type="Decimal" />
                <asp:Parameter Name="institute_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="course_pic" Type="String" />
                <asp:Parameter Name="course_title" Type="String" />
                <asp:Parameter Name="course_description" Type="String" />
                <asp:Parameter Name="course_goals" Type="String" />
                <asp:Parameter DbType="Date" Name="course_from_date" />
                <asp:Parameter DbType="Date" Name="course_to_date" />
                <asp:Parameter Name="course_price" Type="Decimal" />
                <asp:Parameter Name="institute_id" Type="Int32" />
                <asp:Parameter Name="course_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <script type="text/javascript">  
        $(document).ready(function () {
            $('.active').removeClass('active');
            $('.admin').addClass('active');
        });
    </script>
</asp:Content>
