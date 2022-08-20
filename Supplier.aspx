<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Supplier.aspx.cs" Inherits="Supplier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
<div class="row mt-4">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <center>
                     <a href="AddProducts.aspx"> <img style="max-width:80px" class="image-fluid" src="images/add-to-basket.png"/></a>
                       <h4 style="font-family:'Adobe Gothic Std'">Add products</h4>
                    </center>
                    </div>
                </div>
            </div>

           
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <center>
                   <a href="Update.aspx"> <img style="max-width:80px" class="image-fluid" src="images/updated.png"/></a>
                       <h4 style="font-family:'Adobe Gothic Std'">Update products</h4>
                    </center>
                    </div>
                </div>
            </div>
                
             <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <center>
                     <a href="DeleteProducts.aspx">  <img style="max-width:80px" class="image-fluid" src="images/shopping-basket.png"/></a>
                       <h4 style="font-family:'Adobe Gothic Std'">Delete products</h4>
                    </center>
                    </div>
                </div>
            </div>
                </div>


        <div class="row mt-3">
            <div class="col-md-6 mx-auto">
                  <div class="card">
                    <div class="card-body">
                        <center>
                 <a href="Stock.aspx">      <img style="max-width:80px" class="image-fluid" src="images/packages.png"/></a>
                       <h4 style="font-family:'Adobe Gothic Std'">View Stock</h4>
                    </center>
                    </div>
            </div>
        </div>
   </div>
</asp:Content>


