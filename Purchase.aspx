<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Purchase.aspx.cs" Inherits="Purchase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-md-10 mx-auto">
            <div class="card mt-3">
               <div class="card-body">
                  <div class="row align-items-end">
                      <div class="col-md-4">

                      </div>
                     <div class="col-md-4">
                        <center>
                             <span class="badge rounded-pill bg-success" style="font-size:x-large">Available products</span>

                        </center> 

                         
                     </div>
                      <div class="col-md-4">
                          <asp:Button ID="Button1" class="btn btn-warning"  runat="server" Text="View Cart" OnClick="Button1_Click" />
                      </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr/>
                     </div>
                  </div>
    
   <div class="row">
       <div class="col">
           <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered " AutoGenerateColumns="False" DataKeyNames="PRODUCT_ID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
               <Columns>
                   <asp:BoundField DataField="PRODUCT_ID" HeaderText="PRODUCT_ID" ReadOnly="True" SortExpression="PRODUCT_ID" />
                 
                   <asp:BoundField DataField="SUPNAME" HeaderText="SUPNAME" SortExpression="SUPNAME" />
                   <asp:BoundField DataField="BRAND" HeaderText="BRAND" SortExpression="BRAND" />
                   <asp:BoundField DataField="ITEM" HeaderText="ITEM" SortExpression="ITEM" />
                   <asp:BoundField DataField="QUANTITY" HeaderText="QUANTITY" SortExpression="QUANTITY" />
                   <asp:BoundField DataField="NETWEIGHT" HeaderText="NETWEIGHT" SortExpression="NETWEIGHT" />
                  
                   <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE" />
                  
         
                   <asp:TemplateField>
                       <ItemTemplate>
                           <asp:Image ID="Image1" Width="100px" Height="100px" runat="server" ImageUrl='<%# Eval("IMAGE") %>' />
                       </ItemTemplate>
                   </asp:TemplateField>
                  
                   

      
                  
                   <asp:CommandField ButtonType="Button" ShowSelectButton="True">
                   <ControlStyle BackColor="Black" ForeColor="White" />
                   </asp:CommandField>
                  
                   

      
                  
               </Columns>
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BULKSYSTEMConnectionString %>" SelectCommand="SELECT [PRODUCT_ID], [SUPNAME], [BRAND], [ITEM], [QUANTITY], [NETWEIGHT], [PRICE], [IMAGE] FROM [Products]"></asp:SqlDataSource>
       </div>
   </div>
                   </div>
                </div>
        </div>
    
    
</asp:Content>

