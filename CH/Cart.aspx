<%@ Page Title="Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="CH.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="container">
        <h2><%: Title %></h2>
        <h6>Shoping cart</h6>
        <hr />
        <div class="cart_container">
            <asp:GridView ID="GridCart" runat="server" AutoGenerateColumns="False" Width="100%" ShowFooter="True" CellPadding="5" ForeColor="#333333" GridLines="None" OnRowDeleting="GridCart_RowDeleting" >
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>

                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# "/images/"+ Eval("course_pic") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="course_title" HeaderText="title" />
                    <asp:TemplateField HeaderText="from">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# string.Format("{0:dd-MM-yyyy}",  Convert.ToDateTime(Eval("course_to_date"))) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="to">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# string.Format("{0:dd-MM-yyyy}",  Convert.ToDateTime(Eval("course_to_date"))) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="institute_name" HeaderText="institute" />
                    <asp:BoundField DataField="course_price" HeaderText="price" />
                    <asp:BoundField DataField="course_id" HeaderText="ID" />
                    <asp:CommandField HeaderText="Control" ShowDeleteButton="True" />
                </Columns>
                <EmptyDataTemplate>
                    <div class="text-center">shopping cart is empty</div>
                </EmptyDataTemplate>
                <EditRowStyle BackColor="#999999" />
                <EmptyDataTemplate>
                    <div class="text-center">shopping cart is empty</div>
                </EmptyDataTemplate>
                <FooterStyle CssClass="tfooter" />
                <HeaderStyle CssClass="theader" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
        <% if (Session["cart"] != null)
            {
         %>
        <div class="ckeckcontain">
        <asp:LinkButton ID="BtnAddToCart" CssClass="btn btn-info btncheck"  runat="server" OnClick="checkout">Checkout</asp:LinkButton>
        
        <%
        }
        %>
    </div>
    <script type="text/javascript">  
        $(document).ready(function () {
            $('.active').removeClass('active');
            $('.cart').addClass('active');
        });
    </script>
</asp:Content>
