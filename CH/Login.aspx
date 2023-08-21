<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CH.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container msgcont">
        <div id="succssmsg" runat="server" class="alert alert-success" role="alert" style="display: none; text-align: center;">
            success message here. 
        </div>
        <div id="errormsg" runat="server" class="alert alert-danger" style="display: none; text-align: center;">
            error message here.
        </div>
    </div>
    <div class="container">
    <br />
    <h2>Login</h2>
    <h6>keep your password safe.</h6>
    <hr />


    <div class="row  col-6">
        <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 mb-3">
            <label for="reg_lname">Email</label>
            <input type="email" class="form-control" runat="server" id="log_email" placeholder="Email" value="" required>
        </div>
        <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 mb-3">
            <label for="reg_lname">Password</label>
            <input type="password" class="form-control" runat="server" id="log_password" placeholder="Password" value="" required>
        </div>
        <div class="col-md-6 mb-3">
            <asp:Button ID="login_btn" runat="server" CssClass="btn btn-secondary my-3" Text="Login" OnClick="login_btn_Click" />
        </div>
    </div>


    <script type="text/javascript">  
        $(document).ready(function () {
            $('.active').removeClass('active');
            $('.login').addClass('active');
            $(".alert").delay(3000).slideUp(200, function () {
                $(this).alert('close');
            });
        });

    </script>
    </div>
</asp:Content>
