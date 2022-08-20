<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin Panel.aspx.cs" Inherits="Admin_Panel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row mt-3">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <center>
                      <img style="max-width:100px" class="image-fluid" src="images/store.png"/>
                        <h5 style="font-family:'Adobe Gothic Std'">Total Retailers</h5>
                        <asp:Label ID="lblretailer" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                    </center>
                    </div>
                </div>
            </div>

             <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <center>
                      <img style="max-width:100px" class="image-fluid" src="images/inventory.png"/>
                        <h5 style="font-family:'Adobe Gothic Std'">Total Suppliers</h5>
                        <asp:Label ID="lblsupplier" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                       
                    </center>
                    </div>
                </div>
            </div>
         </div>

       <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                          <center>
                    <a href="SupplierPayment.aspx"><img style="max-width:80px" class="image-fluid"  src="images/cashless-payment.png"/> </a>
                        <h5 style="font-family:'Adobe Gothic Std'">Pay to suppliers</h5>
                    </center>
                    </div>
                </div>
            </div>

             <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                          <center>
                   <a href="RemoveSupplier.aspx"> <img style="max-width:80px" class="image-fluid" src="images/user.png"/></a>
                        <h5 style="font-family:'Adobe Gothic Std'">Remove Suppliers</h5>
                    </center>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                          <center>
                    <a href="RemoveProduct.aspx"> <img style="max-width:80px" class="image-fluid" src="images/feedback.png"/></a>
                        <h5 style="font-family:'Adobe Gothic Std'">View order details</h5>
                    </center>
                    </div>
                </div>
            </div>

           </div>

        </div>
          
</asp:Content>

