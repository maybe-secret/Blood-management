<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="signUp.aspx.cs" Inherits="WebApplication1.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <for id="form1" runat="server">
        <div class="container" style="padding: 50px">
            <section class="vh-100">
                <div class="container h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-lg-12 col-xl-11">
                            <div class="card text-black shadow-lg" style="border-radius: 25px;">
                                <div class="card-body p-md-5">
                                    <div class="row justify-content-center">
                                        <div class="col-md-10 col-lg-6 col-xl-5">
                                            <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign Up</p>

                                            <!-- Registration Form -->
                                            <asp:Panel ID="pnlRegistration" runat="server" CssClass="mx-1 mx-md-4">
                                                <div class="d-flex flex-row align-items-center mb-4">
                                                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                                    <div class="form-outline flex-fill mb-0">
                                                        <asp:TextBox ID="txtName" CssClass="form-control" Placeholder="Your Name" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="d-flex flex-row align-items-center mb-4">
                                                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                                    <div class="form-outline flex-fill mb-0">
                                                        <asp:TextBox ID="txtEmail" CssClass="form-control" Placeholder="Your Email" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="d-flex flex-row align-items-center mb-4">
                                                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                                                    <div class="form-outline flex-fill mb-0">
                                                        <asp:TextBox ID="txtPassword" CssClass="form-control" TextMode="Password" Placeholder="Password" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="d-flex flex-row align-items-center mb-4">
                                                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                                                    <div class="form-outline flex-fill mb-0">
                                                        <asp:TextBox ID="txtConfirmPassword" CssClass="form-control" TextMode="Password" Placeholder="Repeat Password" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="form-check d-flex justify-content-center mb-5">
                                                    <asp:CheckBox ID="chkAgree" Text="I agree all statements in " runat="server" />
                                                    <a href="#!">Terms of service</a>
                                                </div>

                                                <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                                    <asp:Button ID="btnRegister" Text="Register" CssClass="btn btn-success btn-lg" OnClick="btnRegister_Click" runat="server" />
                                                </div>
                                            </asp:Panel>
                                        </div>

                                        <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center">
                                            <img src="./images/donatekar.jpg" class="img-fluid" alt="Sample image" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </for>


</asp:Content>
