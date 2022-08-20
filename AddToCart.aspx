<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddToCart.aspx.cs" Inherits="AddToCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row mt-3 align-items-end">
            <div class="col-md-4">

            </div>
            <div class="col-md-4">

            </div>
            <div class="col-md-4">
               <%-- <span class="fa fa-cart-plus"  style="font-size:35px;"> </span>&nbsp--%>
                <img src="images/cart.png" width="50" height="50" />
                <asp:Label ID="lblcart" runat="server" Text="Label"></asp:Label>
            </div>
        </div>

        <br />
        <div class="container">
        <div class="row">
            <div class="col">
               
               

                <center><div class="col-md-3 mx-auto">
                    <asp:button class="btn btn-dark" runat="server" text="Continue Shopping" ID="btnpurchase" OnClick="btnpurchase_Click" />
                </div></center>
                
               
                
            </div>
        </div>
            </div>
    </div>


</asp:Content>

