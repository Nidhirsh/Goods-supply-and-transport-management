<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateProducts.aspx.cs" Inherits="UpdateProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                 <center><h2 style="font-family: 'Tekton Pro'">Update</h2></center>
                            </div>
                        </div>

                        <br />
                        <div class="row">
                            <div class="col-md-4">
                                <span class="badge rounded-pill bg-success" style="font-size:large">Product ID</span> 
                                  <div class="form-group">
                                       <br />
                                      <div class="input-group">
                                     
                                <asp:TextBox ID="up_product_id" CssClass="form-control" runat="server"></asp:TextBox>
                                          <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Go" OnClick="Button1_Click" />
                                           </div>
                                      </div>
                                  </div>

                            <div class="col-md-4">
                                <span class="badge rounded-pill bg-success" style="font-size:large">Brand</span> 
                                  <div class="form-group">
                                      <br />
                                <asp:TextBox ID="upbrand" CssClass="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
                            </div>
                                  </div>

                            <div class="col-md-4">
                                <span class="badge rounded-pill bg-success" style="font-size:large">Item</span> 
                                  <div class="form-group">
                                      <br />
                                <asp:TextBox ID="upitem" CssClass="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
                            </div>
                                 </div>
                             </div>

                        <br />
                        <div class="row">
                            <div class="col-md-4">
                                <span class="badge rounded-pill bg-warning" style="font-size:large">Quantity</span> 
                                  <div class="form-group">
                                      <br />
                                <asp:TextBox ID="upquantity" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                            </div>
                                 </div>

                            <div class="col-md-4">
                                <span class="badge rounded-pill bg-warning" style="font-size:large">Net weight</span> 
                                  <div class="form-group">
                                      <br />
                                <asp:TextBox ID="upntweight" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                                 </div>

                            <div class="col-md-4">
                                <span class="badge rounded-pill bg-warning" style="font-size:large">Price</span> 
                                  <div class="form-group">
                                      <br />
                                <asp:TextBox ID="up_price" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                            </div>
                                 </div>
                        </div>
                        <br />

                        <div class="col-md-4 mx-auto">
                           
                                <span class="badge rounded-pill bg-success" style="font-size:large">Image</span> 
                                  <div class="form-group">
                                      <br />
                                      <asp:fileupload id="up_upload" runat="server"></asp:fileupload>
                            </div>
                                 </div>
                          </div>
                    <br />

                    <div class="row">
                        <div class="col-md-6 mx-auto">
                            <asp:button ID="Update" class="btn btn-primary" runat="server" text="Update" OnClick="Update_Click" />
                       &nbsp&nbsp&nbsp
                            <asp:Button ID="back" CssClass="btn btn-dark" runat="server" Text="Back" OnClick="back_Click" />
                             </div>

                    </div>

                    <br />
                
                
                
                </div>
            </div>
        </div>
    </div>
</asp:Content>

