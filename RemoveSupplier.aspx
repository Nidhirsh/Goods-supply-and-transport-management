<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RemoveSupplier.aspx.cs" Inherits="RemoveRetailer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BULKSYSTEMConnectionString %>" SelectCommand="SELECT NAME, EMAIL, PHONE_NO,STORE_NAME,ADDRESS,PRIMARY_CATEGORY FROM NewAccount,Register where NEWACCOUNT.USERNAME=REGISTER.USERNAME;"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" class="table table-striped" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
            <asp:BoundField DataField="STORE_NAME" HeaderText="STORE_NAME" SortExpression="STORE_NAME" />
             <asp:BoundField DataField="PHONE_NO" HeaderText="PHONE_NO" SortExpression="PHONE_NO" />

            <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
            <asp:BoundField DataField="PRIMARY_CATEGORY" HeaderText="CATEGORY" SortExpression="PRIMARY_CATEGORY" />
        
        </Columns>

    </asp:GridView>
    <center>
<asp:Button ID="Back" class="btn btn-dark" runat="server" Text="Back" OnClick="Back_Click"></asp:Button>
          &nbsp&nbsp&nbsp&nbsp
    <asp:Button ID="RemoveSupplier"  class="btn btn-danger" runat="server" Text="Remove Supplier" OnClick="RemoveSupplier_Click" />
    &nbsp&nbsp&nbsp&nbsp
    <asp:Button ID="Refresh" class="btn btn-primary" runat="server" Text="Refresh" OnClick="Refresh_Click" />
        
        </center>
    <div class="container">

   <center>
    <div class="row mt-4">
        <div class="col-md-4">
            <asp:Label ID="lblsup" Visible="false" Font-Size="Larger" Font-Bold="true" runat="server" Text="Enter the name of the supplier: "></asp:Label>
        </div>
        <div class="col-md-2 ">
            <div class="form-group">
            <asp:TextBox class="form-control-lg" Visible="false" ID="txtsup" runat="server"></asp:TextBox>
        </div>
            </div>
            <div class="col-md-4 ">
            <asp:Button ID="btndelete" Visible="false" runat="server" class="btn btn-danger" Text="Delete" OnClick="btndelete_Click"></asp:Button>
        </div>
            </div>
    
       </center>
         </div>
        
    </asp:Content>

