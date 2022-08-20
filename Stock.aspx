<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Stock.aspx.cs" Inherits="Stock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="col-md-7 mx-auto">
    <div class="card mt-3">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge rounded-pill bg-primary" style="font-size:x-large">Stock inventory</span> 
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr/>
                     </div>
                  </div>

                   <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="PRODUCT_ID" DataSourceID="SqlDataSource1">
                       <Columns>
                           <asp:BoundField DataField="PRODUCT_ID" HeaderText="PRODUCT_ID" ReadOnly="True" SortExpression="PRODUCT_ID" />
                           <asp:BoundField DataField="BRAND" HeaderText="BRAND" SortExpression="BRAND" />
                           <asp:BoundField DataField="ITEM" HeaderText="ITEM" SortExpression="ITEM" />
                           <asp:BoundField DataField="NETWEIGHT" HeaderText="NETWEIGHT" SortExpression="NETWEIGHT" />
                           <asp:BoundField DataField="QUANTITY" HeaderText="QUANTITY" SortExpression="QUANTITY" />
                       </Columns>
                   </asp:GridView>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BULKSYSTEMConnectionString %>" SelectCommand="SELECT [PRODUCT_ID], [BRAND], [ITEM], [NETWEIGHT], [QUANTITY] FROM [Products] WHERE ([SUP_USERNAME] = @SUP_USERNAME)">
                       <SelectParameters>
                           <asp:SessionParameter Name="SUP_USERNAME" SessionField="username" Type="String" />
                       </SelectParameters>
                   </asp:SqlDataSource>
                </div>
        </div>
          </div>
    <br />
  
  <center>  <asp:Button ID="Back" runat="server" CssClass="btn btn-dark" Text="Back" OnClick="Back_Click" /></center>
</asp:Content>

