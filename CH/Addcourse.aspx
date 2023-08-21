<%@ Page Title="Courses" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Addcourse.aspx.cs" Inherits="CH.Addcourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container">

        <div>
            <h2>Courses</h2>
            <h6>Add Course</h6>
        </div>
        <hr />

        <div class="form-row">
            <div class="row">
                <div class="col-6 mb-3">
                    <label>Title</label>
                    <input runat="server" class="form-control" id="course_title">
                </div>
                <br />
                <div class="col-6 mb-3">
                    <label>Description</label>
                    <input runat="server" class="form-control" id="course_description">
                </div>
                <br />
                <div class="col-12 mb-3">
                    <label>Goals</label>
                    <asp:TextBox ID="course_goals" class="form-control" runat="server" TextMode="multiline" Columns="50" Rows="5"></asp:TextBox>

                </div>
                <br />
                <div class="col-sm-6 col-md-3 mb-3">
                    <label for="">From Date</label>
                    <asp:TextBox ID="TextBox2" CssClass="form-control" TextMode="date" runat="server"></asp:TextBox>
                </div>
                <br />
                <div class="col-sm-6 col-md-3 mb-3">
                    <label for="">To Date</label>
                    <asp:TextBox ID="TextBox1" CssClass="form-control" TextMode="date" runat="server"></asp:TextBox>
                </div>
                <br />
                <div class="col-md-6 mb-3">
                    <label>Price</label>
                    <input class="form-control" runat="server" id="course_price">
                </div>
                <br />
                <div class="col-md-6 mb-3">
                    <label>Institute</label>
                    <asp:DropDownList class="form-control" ID="InstituteList" runat="server" AppendDataBoundItems="true" AutoPostBack="False" DataSourceID="SqlDataSource1" DataTextField="institute_name" DataValueField="institute_id">
                        <asp:ListItem Selected="True" Value="0">--Institute Name--</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [institute_id], [institute_name] FROM [institute]"></asp:SqlDataSource>
                </div>
                <br />
                <div class="col-md-6 mb-3">
                    <label>Course Image</label><br />
                    <asp:FileUpload ID="f1" runat="server" accept=".png,.jpg,.jpeg,.gif" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="f1" ErrorMessage="Image is Rquired" Display="None"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-secondary" Text="Add Course" OnClick="Button1_Click" />

        <br />

        <br />

    </div>
    <script type="text/javascript">  
        $(document).ready(function () {
            $('.active').removeClass('active');
            $('.Register').addClass('active');
        });
    </script>

</asp:Content>
