<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin Login.aspx.cs" Inherits="Admin_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="container">
  
     <div class="row">
                  <div class="col">
        <img src="images\Login.svg" width="600" height="600" />
         </div>
      <div class="col">
          <div class="row justify-content-center">
              <div class="col-md-6">
                  <br />
                <center> <img src="images\Profile.svg" width="120" height="120" /></center>
          </div>
               </div>
                  

          <div class="row">
              <div class="col">
                  <br />
               <center> <h3 style="font-family:'Adobe Gothic Std'">ADMIN</h3></center> 
              </div>
          </div>
          
          <br />
         
            
          <div class="row justify-content-center">
              <div class="col-md-6">
                  <div class="form-group">
                      
                <center>     <asp:textbox class="form-control-lg" placeholder="Username"  ID="Username" runat="server" ></asp:textbox> </center>
                         <asp:RequiredFieldValidator runat="server" ErrorMessage="Enter username" ControlToValidate="Username" ForeColor="Red"></asp:RequiredFieldValidator>  
                
                          </div>
              </div>
          </div>
        
          <div class="row justify-content-center">
              <div class="col-md-6">
                  <div class="form-group">
               <center><asp:textbox class="form-control-lg" placeholder="Password" ID="LoginPassword" TextMode ="Password" runat ="server"></asp:textbox>
                      <asp:requiredfieldvalidator runat="server" errormessage="Enter password" ControlToValidate="LoginPassword" ForeColor="Red"></asp:requiredfieldvalidator>
                       
                    </center>
                 </div>
              </div>
          </div>
                
          <div class="row justify-content-center">
              <div class="col-md-6">
                   <asp:CheckBox ID="ShowPassword" runat="server" Text="Show Password" OnCheckedChanged="ShowPassword_CheckedChanged" AutoPostBack="True" />
                  </div>

          </div>
          
     <br />
                <div class="row justify-content-center">
                    <div class="col-md-6">
                     <center><asp:Button ID="Login" class="btn btn-primary" runat="server" Text="LOGIN" OnClick="Login_Click" />  </center>
                 </div>
                   </div>
          
                    
               
        
          
  
 
       </div>
             
      </div>    
         </div> 
</asp:Content>

