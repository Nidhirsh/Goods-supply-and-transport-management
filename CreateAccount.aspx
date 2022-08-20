<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateAccount.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
       
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">

                      <div class="row">
                          <div class="col">
                              <center>
                        
                                      <i class="fas fa-address-card" style="font-size:70px; color:#6666ff"></i>
                                     
                              </center>
                            </div>
                         </div>
    
                          <div class="row">
                          <div class="col">
                              <center>
                               <h3 style="font-family: 'Tekton Pro'"> Create new account </h3>
                              </center>
                            </div>
                        </div>

                         <div class="row">
                          <div class="col">
                           <hr />
                            </div>
                        </div>

                         <div class="row">
                               <div class="col-md-6">
                                   
                                        <div class="form-group">
                                    <label style="font-family:'Times New Roman'; font-size:x-large">Name</label>
                                          <asp:TextBox class="form-control" ID="FullName" placeholder="Name *" runat="server"></asp:TextBox>
                                     <label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FullName" ErrorMessage="Must enter full name" ForeColor="Red"></asp:RequiredFieldValidator>
                                      </label>
                                      </div>
                                         </div>
                            
                              <div class="col-md-6">
                                   
                                   <div class="form-group">
                                        <label style="font-family:'Times New Roman'; font-size:x-large">Email</label>
                                       <asp:TextBox class="form-control" ID="Email" runat="server" placeholder="Email *"  TextMode="Email"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email" ErrorMessage="Please enter email" ForeColor="Red"></asp:RequiredFieldValidator>
                                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Email ID" ControlToValidate="Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                                   </div>
                                </div>
                            </div>

                        <div class="row">
                            <div class="col-md-6">
                              
                                <div class="form-group">
                                     <label style="font-family:'Times New Roman'; font-size:x-large">Phone no</label>
                                  <asp:TextBox class="form-control" ID="Contact" placeholder="Phone no *" runat="server" MaxLength="10" TextMode="Number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Contact" ErrorMessage="Please enter contact number" ForeColor="Red"></asp:RequiredFieldValidator>
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Contact" ErrorMessage="Enter 10 digits" ForeColor="Red" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        

                           <div class="col-md-6">
                                <label style="font-family:'Times New Roman'; font-size:x-large">Username</label>
                            <div class="form-group">

                                <asp:textbox class="form-control" ID="Username" placeholder="Username *" runat="server"></asp:textbox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Username" ErrorMessage="Please enter usename" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                          </div>
                        </div>

                        <div class="row">
                        <div class="col-md-6">
                            <label style="font-family:'Times New Roman'; font-size:x-large">Password</label>
                            <div class="form-group">
                                 <asp:TextBox class="form-control" ID="Password1" runat="server" placeholder="Password *" TextMode="Password"></asp:TextBox>
                                <asp:CheckBox ID="ShowPassword2" Text="Show password" runat="server" OnCheckedChanged="ShowPassword2_CheckedChanged" AutoPostBack="True" />
                            <center>  </center>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Password1" ErrorMessage="Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                                 <asp:RegularExpressionValidator runat="server" ErrorMessage="Your password must be 8 characters long with atleast 1 uppercase, 1 lowercase, 1 digit and a special character " ValidationExpression="^(?=.{8,}$)(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*\W).*$" ForeColor="Red" ControlToValidate="Password1"></asp:RegularExpressionValidator>
                                 </div>
                            
                        </div>
                  

                       
                            <div class="col-md-6">
                                 <label style="font-family:'Times New Roman'; font-size:x-large">Confirm password</label>
                                  <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="CPassword" placeholder="Confirm Password *" runat="server" TextMode="Password"></asp:TextBox>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="CPassword" ErrorMessage="Please re-enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                                      <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password1" ControlToValidate="CPassword" ErrorMessage="Password must match" ForeColor="#FF3300"></asp:CompareValidator>
                            </div>
                        </div>
                            </div>
                      
                        

                        <div class="row">
                            <div class="col">
                                  <div class="form-group">
                                    
                                      <asp:RadioButtonList ID="Category" style="font-family:'Times New Roman'; font-size:x-large" runat="server" Font-Size="X-Large" Height="16px" RepeatDirection="Horizontal" Width="653px">
                                          <asp:ListItem>Supplier</asp:ListItem>
                                          <asp:ListItem>Retailer</asp:ListItem>
                                      </asp:RadioButtonList>
                                   
                                    </div>
                            </div>
                           
                        </div>



                         <div class="row">
                            <div class="col">
                                  <div class="form-group">
                                      <asp:Button  ID="Button2" class="btn btn-primary w-100" runat="server" Text="SIGN UP" OnClick="Button1_Click" />
                                         
                                    </div>
                            </div>
                        </div>

                   

                  
                         </div>
                    </div>
                  </div>
              
        </div>
         </div>
    
</asp:Content>

