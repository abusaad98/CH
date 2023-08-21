<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CH._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container msgcont">
        <div id="succssmsg" runat="server" class="alert alert-success" role="alert" style="display: none; text-align: center;">
            success message here. 
        </div>
        <div id="errormsg" runat="server" class="alert alert-danger" style="display: none; text-align: center;">
            error message here.
        </div>
    </div>
    <div class="jumbotron mt-0 text-white bg">
        <div class="container">
            <h1 class="display-4">Education with no limits</h1>
            <p class="lead">The best place for all educational institutes and students to share knowledge</p>
        </div>
    </div>
    <div class="container">
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=CourseManagmentEntities" DefaultContainerName="CourseManagmentEntities" EnableFlattening="False" EntitySetName="courses" Include="institute"></asp:EntityDataSource>
        <h4 class="mb-3">All Courses</h4>
        <div class="d-flex flex-row">
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="EntityDataSource1" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <div class="">
                        <div class="text-center defaultitems">
                            <img src="/images/<%# Eval("course_pic") %>" />
                            <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("course_title") %>' ForeColor="#333" />
                            <br />
                            <div>Price: <span class="price"><%# Eval("course_price") %> SAR</span></div>
                            <a href="Coursedetails.aspx?id=<%# Eval("course_id") %>" class="badge badge-info">read more..</a>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

        </div>
    </div>
    <script type="text/javascript">  
        $(document).ready(function () {
            $('.active').removeClass('active');
            $('.home').addClass('active');
            $(".alert").delay(3000).slideUp(200, function () {
                $(this).alert('close');
            });
        });
    </script>
</asp:Content>
