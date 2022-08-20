<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddProducts.aspx.cs" Inherits="AddProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid" >
  
    <table class="table table-success table-striped">
        <thead>
            <tr>
                
            <th scope="col"  style="font-size:larger">Product ID</th>
            <th scope="col"  style="font-size:larger">Brand</th>
              <th scope="col"  style="font-size:larger">Item</th>
              <th scope="col"  style="font-size:larger">Quantity</th>
              <th scope="col"  style="font-size:larger">Net weight</th>
                <th scope="col"  style="font-size:larger">Price ( per item )</th>
                <th scope="col"  style="font-size:larger">Upload image</th>
                
                   
           </tr>
        </thead>
        <tr>
           <td> <asp:textbox id="PRODUCT_ID" runat="server"></asp:textbox></td>
             <td> <asp:textbox id="BRAND" runat="server"></asp:textbox></td>
             <td> <asp:textbox id="ITEM" runat="server"></asp:textbox></td>
             <td> <asp:textbox id="QUANTITY" runat="server" TextMode="Number"></asp:textbox></td>
             <td> <asp:textbox id="NETWT" runat="server"></asp:textbox></td>
              <td> <asp:textbox id="PRICE" runat="server" TextMode="Number"></asp:textbox></td>
            <td><asp:fileupload id="upload" runat="server"></asp:fileupload> </td>
        </tr>
    </table>
            <center> 
                <asp:button id="BtnAdd" class="btn btn-lg btn-primary" runat="server" text="Add" OnClick="BtnAdd_Click" />
               &nbsp&nbsp&nbsp
                 <asp:button id="btnreset" class="btn btn-success btn-lg" runat="server" text="Reset" OnClick="btnreset_Click"/>
              &nbsp&nbsp&nbsp
                 <asp:button id="btnback" class="btn btn-dark btn-lg" runat="server" text="Back" OnClick="btnback_Click"/>


            </center>

</div>
       

</asp:Content>

