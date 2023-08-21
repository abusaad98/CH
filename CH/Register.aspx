<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CH.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="container">

        <div>
            <h2>Registration</h2>
            <h6>Create a new account.</h6>
        </div>
        <hr />
        <div class="form-row">
            <div class="col-md-6 mb-3">
                <label for="reg_fname">First name</label>

                <input type="text" class="form-control" runat="server" id="reg_fname" placeholder="First Name" value="" required>
            </div>
            <div class="col-md-6 mb-3">
                <label for="reg_lname">Last name</label>
                <input type="text" class="form-control" runat="server" id="reg_lname" placeholder="Last Name" value="" required>
            </div>

        </div>
        <div class="form-row">
            <div class="col-md-6 mb-3">
                <label for="reg_email">Email address</label>
                <input type="email" runat="server" class="form-control" id="reg_email" placeholder="Ex. name@gmail.com">
            </div>
            <div class="col-md-6 mb-3">
                <label for="reg_mobile">Mobile No.</label>
                <input type="text" class="form-control" runat="server" id="reg_mobile" placeholder="Ex. 0501234567" required>
            </div>
            <div class="col-md-3 mb-3">
                <label for="reg_password">Password</label>
                <input type="password" class="form-control" runat="server" id="reg_password" placeholder="Password" required>
            </div>
            <div class="col-md-3 mb-3">
                <label for="validationDefault05">Confirm Password</label>
                <input type="password" class="form-control" id="validationDefault05" placeholder="Confirm Password" required>
            </div>
        </div>
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-secondary" OnClick="reg_btnReg_Click" Text="Register" />
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
