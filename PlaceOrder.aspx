<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PlaceOrder.aspx.cs" Inherits="PlaceOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:panel id="Panel1" BorderStyle="Double" runat="server">
        <center>
        <table border="1">
            <tr>
                <td style="text-align:center">
                    <h2 style="text-align:center">Bill</h2>
                </td>
            </tr>
            <tr>
                <td>
                    Order no:
            <asp:Label runat="server" id="Label1" Text="Label"></asp:Label>
                    <br /><br />
                    Order date & time:
            <asp:Label runat="server" id="Label2" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <table>
                        <tr>
                            <td>
                                Supplier: 
                                 <asp:Label runat="server" id="Label3" Text="Label"></asp:Label>
                            </td>
                            <td>
                                Supplier address:
                                 <asp:Label runat="server" id="Label4" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" >
                    <Columns>
                        <asp:BoundField DataField="PRODUCT_ID" HeaderText="Product_ID" />
                        <asp:BoundField DataField="BRAND" HeaderText="Brand" />
                        <asp:BoundField DataField="ITEM" HeaderText="Item" />
                        <asp:BoundField DataField="QUANTITY" HeaderText="Quantity" />
                        <asp:BoundField DataField="PRICE" HeaderText="Price" />
                        <asp:BoundField DataField="TOTAL_PRICE" HeaderText="Total Price" />
                    </Columns>
                    </asp:GridView>
                   
                   
                   
                </td>
            </tr>
            <tr>
                <td>
                    Grand total:
                     <asp:Label runat="server" id="Label5" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align:center">
                    This is a computer generated bill and does not require signature
                </td>
            </tr>
            <tr>
         <td>
<asp:Button runat="server" class="btn btn-primary" id="btndownload" Text="Download bill" OnClick="btndownload_Click"></asp:Button>
         </td>
            </tr>

        </table>
             </center>
    </asp:panel>
   
</asp:Content>

