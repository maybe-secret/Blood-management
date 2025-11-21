<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="stocks.aspx.cs" Inherits="WebApplication1.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Table Styling */
        .table-style {
            border-collapse: collapse;
            width: 100%;
            margin: 20px 0;
            font-size: 18px;
            text-align: left;
            border: 1px solid #ddd;
        }

        .table-style th, .table-style td {
            padding: 12px;
            border: 1px solid #ddd;
        }

        .table-style th {
            background-color: #C8233350;
            color: #333;
        }

        .table-style tr:nth-child(even) {
            background-color: #21D0C340;
        }

        .table-style tr:hover {
            background-color: #007BFF30;
        }
        .unik-c{
            color: #C82333 !important;
        }   
        .design{
            height: 3rem;
            width: 8rem;
            background-color: #C82333;
            color: #fff;
            border-radius: 10px;
            transition: all 0.1s ease-in;
            border: none;
            font-weight: bold;
            font-family: Arial;
        }
        .design:hover{
            background-color: #21D0C3;
            color: black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <for id="form1" runat="server" >
            <div>
                <asp:GridView ID="GridViewBloodStocks" runat="server" CssClass="table-style" AutoGenerateColumns="true"></asp:GridView>
            </div>
        </for>
        <div class="d-flex justify-content-center" id="red" runat="server">
            <asp:Button id="re" runat="server" CssClass="design shadow" Text="Edit Stocks" OnClick="redirect_Click" PostBackUrl="~/smanage.aspx"  />
        </div>
    </div>

</asp:Content>
