<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
       <br />
         <div class="row">
                 <div class="col-md-4">
                     <label style="font-family:'Times New Roman'; font-size:x-large">Agency</label>
                 </div>
             <div class="col-md-2">
                     <div class="form-group">
                         <asp:TextBox Class="form-control-lg" placeholder="Store name*" ID="StoreName" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="StoreName" ErrorMessage="Enter Store name" ForeColor="Red"></asp:RequiredFieldValidator>
                     </div>
                 </div>
         </div>

        <br />

        <div class="row">
                 <div class="col-md-4">
                     <label style="font-family:'Times New Roman'; font-size:x-large">Choose category:</label>
                 </div>
             <div class="col-md-2">
                 <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                     <asp:ListItem>Food </asp:ListItem>
                     <asp:ListItem>Sanitary</asp:ListItem>
                     <asp:ListItem>Electronics</asp:ListItem>
                     <asp:ListItem>Cosmetics</asp:ListItem>
                       <asp:ListItem>Stationary</asp:ListItem>
                 </asp:CheckBoxList>
              


                 </div>
         </div>

        <br />

         <div class="row">
                 <div class="col-md-4">
                     <label style="font-family:'Times New Roman'; font-size:x-large">Address:</label>
                 </div>
             <div class="col-md-2">
                     <div class="form-group">
                         <asp:TextBox Class="form-control-lg" placeholder="Address*" ID="Address" runat="server" Height="65px" TextMode="MultiLine" Width="451px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Address" ErrorMessage="Enter address" ForeColor="Red"></asp:RequiredFieldValidator>
                     </div>
                 </div>
         </div>


        <br />
         <div class="row">
                 <div class="col-md-4">
                     <label style="font-family:'Times New Roman'; font-size:x-large">Shipping method:</label>
                 </div>
             <div class="col-md-3">
                     <div class="form-group">
                     
                         <asp:RadioButton ID="EasyShip" Text="Easy ship" runat="server" />

                    
                     </div>
                 </div>
             <div class="col-md-3">
                     <div class="form-group">
                    
                         <asp:RadioButton ID="SelfShip" Text="Self ship" runat="server" />    
                     </div>
                 </div>

         </div>

      
       <div class="row">
           <div class="col-md-4">

           </div>
           <div class="col-md-3">
              
              <label style="font-family:Calibri; color:brown; font-size:larger">You store and pack orders at your location. We pick them from the above address and deliver to customers.</label> 
      </div>
            <div class="col-md-3">
              
              <label style="font-family:Calibri; color:brown; font-size:larger">You store and pack orders at your location. Also, you need to deliver orders to customers on your own.</label> 
      </div>    
       </div>

        <div class="row mt-3">
            <div class="col-md-4">
               <span class="badge bg-primary" style="font-size:large">Bank details</span>
            </div>
         </div>

        <div class="row mt-3">
                 <div class="col-md-4">
                     <label style="font-family:'Times New Roman'; font-size:x-large">Bank name:</label>
                 </div>
             <div class="col-md-2">
                 <asp:dropdownlist id="bank" class="dropdown-menu-dark" runat="server">
                     <asp:ListItem class="dropdown-item">Canara Bank</asp:ListItem>
                     <asp:ListItem class="dropdown-item">Indian Overseas Bank</asp:ListItem>
                     
                     <asp:ListItem class="dropdown-item">Bank of Baroda</asp:ListItem>
                     
                 </asp:dropdownlist>
                 
                 </div>
         </div>


        <div class="row mt-3">
            <div class="col-md-4">
                 <label style="font-family:'Times New Roman'; font-size:x-large">Account no: </label>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="AccNo" ErrorMessage="Enter Account Number" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="AccNo" ErrorMessage="Enter 12 digits" ValidationExpression="^[0-9]{12}$" ForeColor="Red"></asp:RegularExpressionValidator>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <asp:TextBox ID="AccNo" placeholder="Account no*" runat="server" class="form-control-lg"></asp:TextBox> 
                </div>
            </div>
            

            </div>

        <div class="row mt-3">
                 <div class="col-md-4">
                     <label style="font-family:'Times New Roman'; font-size:x-large">IFSC:</label>
                 </div>
             <div class="col-md-2">
                     <div class="form-group">
                         <asp:TextBox Class="form-control-lg" placeholder="IFSC*" ID="IFSC" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter IFSC " ForeColor="Red" ControlToValidate="IFSC"></asp:RequiredFieldValidator>
                     </div>
                 </div>
         </div>

       <br />

           <div class="row">
           <div class="col-md-4">
             <center>  <asp:Button ID="SaveButton" class="btn btn-primary w-50" runat="server" Text="Save" OnClick="SaveButton_Click" /></center>
           </div>
       </div>
        
        <hr />

       
   </div>
   

   

   
</asp:Content>

