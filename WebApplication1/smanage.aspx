<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="smanage.aspx.cs" Inherits="WebApplication1.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        /* Form Container */


        /* Headings */
        h2, h3 {
            font-family: Arial, sans-serif;
            margin-bottom: 10px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        h3 {
            color: #555;
        }

        /* Input Fields */
        input[type="text"],
        asp:TextBox {
            display: block;
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        /* Buttons */
        asp:Button {
            display: inline-block;
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 15px;
            font-size: 14px;
            cursor: pointer;
            border-radius: 4px;
            margin: 5px 5px 5px 0;
            transition: background-color 0.3s ease;
        }

        asp:Button:hover {
            background-color: #0056b3;
        }

        /* GridView Styling */
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
        /* Margin between sections */
        .section {
            margin-top: 20px;
        }
        .unik-c{
    color: #C82333 !important;
} 
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <div class="container">
       <div class="formi" id="form1" runat="server">
        <h2>Blood Stocks Management</h2>

        <div class="section">
            <asp:GridView ID="GridView1" CssClass="table-style" runat="server" AutoGenerateColumns="true" />
        </div>

        <div class="section">
            <h3 class="search">Search by Collect Date</h3>
            <asp:TextBox ID="TxtSearchCollectDate" runat="server" Placeholder="Enter Collect Date"></asp:TextBox>
            <asp:Button ID="BtnSearch" runat="server" Text="Search" OnClick="BtnSearch_Click" />
        </div>

        <div class="section">
            <h3>Insert/Update/Delete Blood Stock</h3>
            <asp:TextBox ID="TxtSQ" runat="server" Placeholder="SQ (for Update/Delete)" />
            <asp:TextBox ID="TxtBloodGroup" runat="server" Placeholder="Blood Group" />
            <asp:TextBox ID="TxtBloodStocks" runat="server" Placeholder="Blood Stocks" />
            <asp:TextBox ID="TxtCollectDate" runat="server" Placeholder="Collect Date" />
            <asp:TextBox ID="TxtExpireyDate" runat="server" Placeholder="Expiry Date" />

            <br />
            <asp:Button ID="BtnInsert" runat="server" Text="Insert" OnClick="BtnInsert_Click" />
            <asp:Button ID="BtnUpdate" runat="server" Text="Update" OnClick="BtnUpdate_Click" />
            <asp:Button ID="BtnDelete" runat="server" Text="Delete" OnClick="BtnDelete_Click" />
        </div>
    </div>
  </div>


</asp:Content>
