<%@ Page Title="Course Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Coursedetails.aspx.cs" Inherits="CH.Coursedetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <br />
        <h2><%: Title %></h2>
        <h6>all the details</h6>
        <hr />

        <div>
            <div class="vdetails text-center">
                
                <img class="mr-4" src="/images/<%=pic%>" />
                <div class="inndetails">
                    <div><span class="title"><%=title%> </span></div>
                    <br />
                    <div><b>Goals: </b><span class="goals"><%=goals%> </span></div>
                    <br />
                    <div><b>description: </b><span class="goals"><%=discr%> </span></div>
                    <br />
                    <div><b>Price: </b><span class="price"><%=price %> SAR</span></div>
                    <div>
                        <b>from: </b><%=from_date%>
                        <br />
                        <b>To: </b><%=to_date%>
                    </div>
                    <br />
                    <div>
                        <b>Institute: </b>
                        <span><%=institute_name%></span>
                    </div>
                    <br />
                   <asp:LinkButton ID="BtnAddToCart" CssClass="btn btn-info"  runat="server" OnClick="AddToCart_Click">+ Add to Cart</asp:LinkButton> &nbsp; 
                    &nbsp;
                </div>
            </div>
        </div>



    </div>
</asp:Content>
