<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="container">
       <div class="row">
           <div class="col-md-6 mx-auto">
               <br /><br /><br /><br />
               <div class="card">
                 <div class="card-body">
                  <center><h3>Enter email to reset your password</h3></center>
                     <div class="row">
                         <div class="col">
                             <div class="form-group">
                                 <asp:TextBox ID="ResetEmail" class="form-control" placeholder="Email id" runat="server" TextMode="Email"></asp:TextBox>
                             </div>

                         </div>
                     </div>

                    <div class="row">
                         <div class="col">
                             <div class="form-group">
                                 <asp:Button ID="btnsend" class="btn btn-primary" runat="server" Text="Send" OnClick="btnsend_Click" />
                                 
                                 
                                  </div>
                         
                         </div>
                     </div>

                </div>
             </div>
         </div>
       </div>
   </div>
     
</asp:Content>

