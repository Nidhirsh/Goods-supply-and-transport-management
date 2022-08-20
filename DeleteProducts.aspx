<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DeleteProducts.aspx.cs" Inherits="DeleteProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <asp:GridView ID="GridView1" CssClass="table table-striped" runat="server" AutoGenerateColumns="False" DataKeyNames="PRODUCT_ID" DataSourceID="SqlDataSource1">
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
        <center>
        <asp:Button ID="Back" runat="server" CssClass="btn btn-dark" Text="Back" OnClick="Back_Click" />
        &nbsp&nbsp&nbsp
        <asp:Button ID="Delete" CssClass="btn btn-danger" runat="server" Text="Delete products" OnClick="Delete_Click" />
          &nbsp&nbsp&nbsp
        <asp:Button ID="Refresh" runat="server" CssClass="btn btn-primary" Text="Refresh" OnClick="Refresh_Click" />
          </center>
        <div class="container">

   <center>
    <div class="row mt-4">
        <div class="col-md-4">
            <asp:Label ID="lblpid" Visible="false" Font-Size="Larger" Font-Bold="true" runat="server" Text="Enter product id: "></asp:Label>
        </div>
        <div class="col-md-2 ">
            <div class="form-group">
            <asp:TextBox class="form-control-lg" Visible="false" ID="txtpid" runat="server"></asp:TextBox>
        </div>
            </div>
            <div class="col-md-4 ">
            <asp:Button ID="btndelete" Visible="false" runat="server" class="btn btn-danger" Text="Delete" OnClick="btndelete_Click"></asp:Button>
        </div>
            </div>
    
       </center>
         </div>
            </div>


</asp:Content>

