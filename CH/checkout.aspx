<%@ Page Title="Checkout" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="CH.checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="container">
        <h2><%: Title %></h2>
        <h6>shoping cart</h6>
        <hr />
        <br />
        <div class="inv_container">
            <header class="tophead">
               
                <div class="invtext">
                    <h1>INVOICE</h1>
                    <div>Incoice No: 1524</div>
                </div>
                

                <div class="invfrom">
                    <b>From:<br /></b> CourseHouse.com
                    <div><span>DATE: </span>  <%: DateTime.Now %></div>
                    <div><span>PHONE: </span>966558011177-966565071667</div>
                    <div><span>EMAIL: </span><a href="mailto:saudalqahtani2015@gmail.com">saudalqahtani2015@gmail.com</a>
                    </div>
                </div>
                <div class="invto">
                    <b>To:</b> 
                    <div><span>CUSTOMER: </span><%=Session["user_fname"] + " " + Session["user_lname"]  %></div>
                    <div><span>EMAIL:</span> <a href="<%=Session["user_email"]%>"><%=Session["user_email"]%></a></div>
                    <div><span>MOBILE:</span> <%=Session["user_phone_no"]%></div>

                </div>
            </header>
            <br />
            <br />
            <br />

            <asp:GridView ID="GridCart" runat="server" AutoGenerateColumns="False" Width="100%" ShowFooter="True" CellPadding="5" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="course_title" HeaderText="Title" />
                    <asp:TemplateField HeaderText="From">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# string.Format("{0:dd-MM-yyyy}",  Convert.ToDateTime(Eval("course_to_date"))) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="To">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# string.Format("{0:dd-MM-yyyy}",  Convert.ToDateTime(Eval("course_to_date"))) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="institute_name" HeaderText="Institute" />
                    <asp:BoundField DataField="course_price" HeaderText="Price" />
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
                <RowStyle  CssClass="throw" BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
             <div class="totaltax">
            <div>Total: <b><%=total %> </b></div>
            <div>tax: <b><%=tax %></b></div>
            <div>Grand Total: <b><%=grandtotal %> SAR</b></div>
            
        </div>
        </div>

    </div>
    <script type="text/javascript">  
        $(document).ready(function () {
            $('.active').removeClass('active');
            $('.cart').addClass('active');
        });
    </script>

</asp:Content>
