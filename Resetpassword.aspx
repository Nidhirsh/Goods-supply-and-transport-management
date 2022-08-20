<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Resetpassword.aspx.cs" Inherits="Resetpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                   <br /><br /><br /><br />
                <div class="card bg-primary">
                     <div class="card-body">
                 <center><h2 style="color:white; font-family:Calibri">Reset Password </h2></center>

                <div class="row">
                    <div class="col">
                        <div class="form-group">
                          <asp:TextBox ID="txtreset" class="form-control-lg" placeholder="New Password *" runat="server" TextMode="Password" ForeColor="Black"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtreset" runat="server" ErrorMessage="Password must be 8-15 character long, must contain minimum 1 uppercase letter, 1 lowercase letter and a digit" ValidationExpression="^(?=.{8,}$)(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*\W).*$"></asp:RegularExpressionValidator>
                             
                            <br />
                             
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtreset" ErrorMessage="Enter new password" ForeColor="White"></asp:RequiredFieldValidator>
                   
                             </div>
                        
                         </div>
                    <div class="col">
                        <asp:CheckBox ID="CheckBox1" ForeColor="White" Text="Show Password" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
                    </div>
                    </div>


                 <div class="row">
                    <div class="col">
                        <div class="form-group">
                             <asp:TextBox ID="txtconfirm" placeholder="Confirm Password *" class="form-control-lg" runat="server" ForeColor="Black" TextMode="Password"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password must match" ControlToCompare="txtreset" ControlToValidate="txtconfirm"></asp:CompareValidator>
                              </div>
                    </div>
                </div>

                         

                <div class="row">
                    <div class="col">
                        <div class="form-group">
                            
 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Re-enter password" ControlToValidate="txtconfirm" ForeColor="White"></asp:RequiredFieldValidator>
                                <br />
                             <center><asp:Button ID="btnreset" class="btn btn-dark" runat="server" Text="RESET" OnClick="btnreset_Click"></asp:Button> </center>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
            </div>
        </div>
        
    </div>
</asp:Content>

