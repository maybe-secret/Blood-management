<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebApplication1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>  
/*    body{  
      font-family: Calibri, Helvetica, sans-serif;  
      background-color: pink;  
    }  */  
  
    input[type=text], input[type=password], textarea {  
      width: 100%;  
      padding: 15px;  
      margin: 5px 0 22px 0;  
      display: inline-block;  
      border: none;  
      background: #f1f1f1;  
    }  
    input[type=text]:focus, input[type=password]:focus {  
      background-color: orange;  
      outline: none;  
    }  
     div {  
         padding: 10px 0;  
        }  
    hr {  
      border: 1px solid #f1f1f1;  
      margin-bottom: 25px;  
    }  
    .registerbtn1 {  
      background-color: #4CAF50;  
      color: white;  
      padding: 16px 20px;  
      margin: 8px 0;  
      border: none;  
      cursor: pointer;  
      width: 100%;  
      opacity: 0.9;  
    }  
    .registerbtn:hover {  
      opacity: 1;  
    }  
    .aspNetHidden{
        display: none;
    }
    .unik-d{
        color: #C82333 !important;  
    }
    </style>  


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form>  
      <div class="container w-50">  
      <center>  <h1> Doner Registeration Form</h1> </center>  
      <hr>  
      <label> Firstname </label>   
      <asp:TextBox ID="txtFirstName" runat="server" Required="true" placeholder="Firstname"></asp:TextBox><br />      
    <label> Lastname: </label>    
    <asp:TextBox ID="txtLastName" runat="server" Required="true" placeholder="Lastname"></asp:TextBox><br />  
    <div>  
        <label> Date Of Birth(D.O.B): </label>    
        <asp:TextBox ID="txtDOB" runat="server" Required="true" placeholder="DD-MM-YYYY"></asp:TextBox><br />
    <label>   
    Blood Group :  
    </label>   
  
    <asp:DropDownList ID="ddlBloodGroup" runat="server">
                <asp:ListItem>A+</asp:ListItem>
                <asp:ListItem>A-</asp:ListItem>
                <asp:ListItem>B+</asp:ListItem>
                <asp:ListItem>B-</asp:ListItem>
                <asp:ListItem>AB+</asp:ListItem>
                <asp:ListItem>AB-</asp:ListItem>
                <asp:ListItem>O+</asp:ListItem>
                <asp:ListItem>O-</asp:ListItem>
            </asp:DropDownList><br />
    </div>  
    <div>  
    <label>   
    Gender :  
    </label><br>  
    <asp:RadioButton ID="rbMale" GroupName="Gender" runat="server" Text="Male" Checked="true" />
            <asp:RadioButton ID="rbFemale" GroupName="Gender" runat="server" Text="Female" />
            <asp:RadioButton ID="rbOther" GroupName="Gender" runat="server" Text="Other" /><br />  
  
    </div>  
    <label>   
    Phone :  
    </label>  
    <input type="text" name="country code" placeholder="Country Code" value="+91" size="2"  disabled/>   
    <asp:TextBox ID="txtPhone" runat="server" Required="true" placeholder="Phone Number"></asp:TextBox><br />
    <label> Country: </label>    
    <asp:TextBox ID="txtCountry" runat="server" Required="true" placeholder="Country"></asp:TextBox><br />
    <label> State: </label>    
    <asp:TextBox ID="txtState" runat="server" Required="true" placeholder="State"></asp:TextBox><br />
    <label> City: </label>    
    <asp:TextBox ID="txtCity" runat="server" Required="true" placeholder="City"></asp:TextBox><br />    
    <label> PIN: </label>    
    <asp:TextBox ID="txtPIN" runat="server" Required="true" placeholder="PIN Code"></asp:TextBox><br />
    Current Address :  
    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="4"  Required="true" placeholder="Current Address"></asp:TextBox><br />  
    </textarea>  
     <label for="email"><b>Email</b></label>  
     <asp:TextBox ID="txtEmail" runat="server" Required="true" placeholder="Email"></asp:TextBox><br /><br />  
  
         
        <div class="d-flex justify-content-center">
            <asp:Button ID="btnSubmit" runat="server" class="registerbtn1 w-75 rounded" Text="Register" OnClick="btnSubmit_Click" />
            
        </div>    
    </form>


</asp:Content>
