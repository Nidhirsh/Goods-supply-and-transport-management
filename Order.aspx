<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .lbl
        {
            font-weight:bold;
            font-size:large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
   
    <div class="conatiner">
        <div class="row">
         <div class="col-md-7 mx-auto">
        <div class="card mt-3">
            <div class="card-body"></div>
            <div class="row">
                <div class="col">
                     <center> <span class="badge bg-secondary" style="font-size:larger">Order</span> </center> 
                </div>
            </div>
            <div class="row">
                <div class="col">
                     <hr />
                </div>
            </div>


             


            <div class="row">
                <div class="col-md-3 mx-auto">
                    <asp:label Cssclass="lbl" runat="server" text="Product ID"></asp:label>
                    <div class="form-group">
                         <asp:textbox id="Dproduct_id" class="form-control" runat="server"></asp:textbox>
                    </div>
                    </div>


                  <div class="col-md-3 mx-auto">
                    <asp:label Cssclass="lbl" runat="server" text="Supplier"></asp:label>
                    <div class="form-group">
                         <asp:textbox id="DSupname" class="form-control" runat="server" ></asp:textbox>
                    </div>
                    </div>

                <div class="col-md-3 mx-auto">
                    <asp:label Cssclass="lbl" runat="server" text="Brand"></asp:label>
                    <div class="form-group">
                         <asp:textbox id="DBrand" class="form-control" runat="server"></asp:textbox>
                    </div>
                    </div>

              

            </div>

            <br />
            <div class="row">
                  <div class="col-md-3 mx-auto">
                    <asp:label Cssclass="lbl" runat="server" text="Item"></asp:label>
                    <div class="form-group">
                         <asp:textbox id="DItem" class="form-control" runat="server"></asp:textbox>
                    </div>
                    </div>


                 <div class="col-md-3 mx-auto">
                    <asp:label Cssclass="lbl" runat="server" text="Available stock"></asp:label>
                    <div class="form-group">
                        <asp:TextBox ID="DAStock"  class="form-control" runat="server"></asp:TextBox>
                    </div>
                    </div>

                  <div class="col-md-3 mx-auto">
                    <asp:label Cssclass="lbl" runat="server" text="NetWeight"></asp:label>
                    <div class="form-group">
                         <asp:textbox id="DNet" class="form-control" runat="server"></asp:textbox>
                    </div>
                    </div>


            </div>

            <br />

            <div class="row">
                
                  <div class="col-md-3 mx-auto">
                    <asp:label Cssclass="lbl" runat="server" text="Price"></asp:label>
                    <div class="form-group">
                         <asp:textbox id="DPrice" class="form-control" runat="server"></asp:textbox>
                    </div>
                    </div>

                 <div class="col-md-3 mx-auto">
                     <asp:label Cssclass="lbl" runat="server" text="Required quantity"></asp:label>
                    <div class="form-group">
                         <asp:textbox id="DQuantity" class="form-control" runat="server" AutoPostBack="True"></asp:textbox>
                       
                    </div>
                </div>

                   <div class="col-md-3 mx-auto">
                     <asp:label Cssclass="lbl" runat="server" text="Total price"></asp:label>
                    <div class="form-group">
                         <asp:textbox id="DTotal" class="form-control" runat="server" AutoPostBack="True"></asp:textbox>
                    </div>
                </div>
            </div>

            <br />
            <br />

            <div class="row">
                <div class="col-md-3 mx-auto">
                    <asp:button class="btn btn-primary" runat="server" text="Add to cart" ID="btncart" OnClick="btncart_Click" />
                </div>
                <div class="col-md-3 mx-auto">
                    <asp:button class="btn btn-warning" runat="server" text="View cart" ID="btnviewcart" OnClick="btnviewcart_Click"  />
                </div>
                 <div class="col-md-3 mx-auto">
                    <asp:button class="btn btn-dark" runat="server" text="Continue shopping" ID="btnshop" OnClick="btnshop_Click" />
                </div>
                

            </div>

            <br /><br />
           
            


            </div>

            

            </div>

       
   </div>
        </div>
   
    
</asp:Content>

