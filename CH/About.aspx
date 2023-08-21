<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="CH.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="container">
        <h2><%: Title %></h2>
        <h6>We are greate house</h6>
        <hr />
        <div class="row">
            <br />
            <div class="col-6">
                <p>This site is your gateway to improve your skills to get more job opportunities. We are not the only ones, but we aspire to be the best.</p>
                    
            </div>
        </div>

    </div>
    <script type="text/javascript">  
        $(document).ready(function () {
            $('.active').removeClass('active');
            $('.about').addClass('active');
        });
    </script>
</asp:Content>
