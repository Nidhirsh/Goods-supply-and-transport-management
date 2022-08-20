<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    <asp:GridView ID="GridView1" CssClass="table table-striped" runat="server" AutoGenerateColumns="False" DataKeyNames="PRODUCT_ID" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:BoundField DataField="PRODUCT_ID" HeaderText="PRODUCT_ID" ReadOnly="True" SortExpression="PRODUCT_ID" />
            <asp:BoundField DataField="SUPNAME" HeaderText="SUPPLIER" SortExpression="SUPNAME" />
            <asp:BoundField DataField="BRAND" HeaderText="BRAND" SortExpression="BRAND" />
            <asp:BoundField DataField="ITEM" HeaderText="ITEM" SortExpression="ITEM" />
            <asp:BoundField DataField="QUANTITY" HeaderText="QUANTITY" SortExpression="QUANTITY" />
            <asp:BoundField DataField="NETWEIGHT" HeaderText="NETWEIGHT" SortExpression="NETWEIGHT" />
            <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE" />
            <asp:BoundField DataField="IMAGE" HeaderText="IMAGE" SortExpression="IMAGE" />
        </Columns>


    </asp:GridView>

       
         
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BULKSYSTEMConnectionString %>" SelectCommand="SELECT [PRODUCT_ID], [SUPNAME], [BRAND], [ITEM], [QUANTITY], [NETWEIGHT], [PRICE], [IMAGE] FROM [Products] WHERE ([SUP_USERNAME] = @SUP_USERNAME)">
                <SelectParameters>
                    <asp:SessionParameter Name="SUP_USERNAME" SessionField="username" Type="String" />
                </SelectParameters>
    </asp:SqlDataSource>
         
      <center>  <asp:Button ID="Back" runat="server" CssClass="btn btn-dark" Text="Back" OnClick="Back_Click" /> </center> 
         
       
     
  </div>
     
</asp:Content>

