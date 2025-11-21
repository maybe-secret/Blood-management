<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .custom-login{
            display: none
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



   <form1 id="form1" runat="server">
        <div class="container">
            <section class="">
                <div class="px-4 py-5 px-md-5 text-center text-lg-start" style="background-color: hsl(0, 0%, 96%)">
                    <div class="container">
                        <div class="row gx-lg-5 align-items-center">
                            <!-- Left Section -->
                            <div class="col-lg-6 mb-5 mb-lg-0">
                                <h1 class="my-5 display-3 fw-bold ls-tight">
                                    Saving Lives with <br />
                                    <span class="text-danger">Care <span style="color: #21D0C3">and</span> Trust</span>
                                </h1>
                                <p style="color: hsl(217, 10%, 50.8%)">
                                    At our blood bank, we prioritize safety, reliability, and compassion. Every donation helps save lives, bringing hope and healing to those in need. Join us in making a difference—because every drop of blood matters.
                                </p>
                            </div>

                            <!-- Right Section (Form) -->
                            <div class="col-lg-6 mb-5 mb-lg-0">
                                <div class="card shadow">
                                    <div class="card-body py-5 px-md-5">
                                        <!-- ASP.NET Form -->
                                        <form2 id="loginForm" runat="server">
                                            <!-- Name -->
                                            <div data-mdb-input-init class="form-outline mb-4">
                                                <asp:TextBox ID="txtName" CssClass="form-control" runat="server" Placeholder="Enter your full name" />
                                                <label class="form-label" for="txtName">Name</label>
                                            </div>

                                            <!-- Email -->
                                            <div data-mdb-input-init class="form-outline mb-4">
                                                <asp:TextBox ID="txtEmail" CssClass="form-control" TextMode="Email" runat="server" Placeholder="Enter your email" />
                                                <label class="form-label" for="txtEmail">Email</label>
                                            </div>

                                            <!-- Password -->
                                            <div data-mdb-input-init class="form-outline mb-4">
                                                <asp:TextBox ID="txtPassword" CssClass="form-control" TextMode="Password" runat="server" Placeholder="Enter your password" />
                                                <label class="form-label" for="txtPassword">Password</label>
                                            </div>

                                            <!-- Type -->
                                            <div data-mdb-input-init class="form-outline mb-4">
                                                <asp:DropDownList ID="ddlType" CssClass="form-control" runat="server">
                                                    <asp:ListItem Text="User" Value="User" />
                                                    <asp:ListItem Text="Admin" Value="Admin" />
                                                </asp:DropDownList>
                                                <label class="form-label" for="ddlType">Type</label>
                                            </div>

                                            <!-- Submit button -->
                                            <div class="d-flex justify-content-center">
                                                <asp:Button ID="btnLogin" CssClass="btn btn-success btn-block w-50 mb-4" Text="Login" runat="server" OnClick="btnLogin_Click" />
                                            </div>

                                            <!-- Register link -->
                                            <div class="text-center">
                                                <p>Don't have an account? <a href="signUp.aspx">Sign-up</a></p>
                                            </div>
                                        </form2>
                                        <!-- End ASP.NET Form -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </form1>



</asp:Content>
