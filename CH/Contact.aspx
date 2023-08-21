<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CH.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="container">
        <h2>Contact us</h2>
        <h6>Let us hear your voice</h6>
        <hr />
        <div class="contactinfo">
            <div class="">
                <div>
                    <strong>Mailling Address:</strong>
                    <address>
                        CourseHouse Co.
                    <br />
                        Noor Tower, King Abdul Aziz St.
                        <br />
                        Dammam, 32547,
                <br />
                        Kingdom of Saudi Arabia.
                    </address>
                </div>
                <p>
                    <b>Mr.Saud Alqahtani<br />
                        Phone Number:</b> +966 55 8011177<br />
                    <strong>Email:</strong><a href="mailto:saudalqahtani2015@gmail.com"> saudalqahtani2015@gmail.com</a><br /><br />    
                    <b>Mr.Abdulaziz Alsulaiman<br />
                        Phone Number:</b> +966 56 5071667<br />
                    <b>Fax:</b> +966 3 898 5555
                    <br />
                    <a href="mailto:Abdlazizomar.dcc@gmail.com">Abdlazizomar.dcc@gmail.com</a>
                    <br />
                </p>
            </div>
            <div class="map">
                <img src="images/map.jpg" /></div>

        </div>
    </div>
    <script type="text/javascript">  
        $(document).ready(function () {
            $('.active').removeClass('active');
            $('.contact').addClass('active');
        });
    </script>

</asp:Content>
