<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="certificate.aspx.cs" Inherits="WebApplication1.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;900&display=swap');

.ini {
  caret-color: red;
}



.containe {
  position: relative;
  width: 390px;
  height: 500px;
  border-radius: 20px;
  padding: 40px;
  box-sizing: border-box;
  background: #ecf0f3;
  box-shadow: 14px 14px 20px #cbced1, -14px -14px 20px white;
}

.brand-log {
  height: 100px;
  width: 100px;
  background: url("./images/rot.png") no-repeat center center;
  background-size: cover; /* Ensures the image covers the circle */
  margin: auto;
  border-radius: 50%; /* Makes it circular */
  box-sizing: border-box;
  box-shadow: 7px 7px 10px #cbced1, -7px -7px 10px white;
}


.brand-titl {
  margin-top: 10px;
  font-weight: 900;
  font-size: 1.8rem;
  color: #C82333;
  letter-spacing: 1px;
  padding-left: 25%;
}

.inputsss {
  text-align: left;
  margin-top: 30px;
}

.emil, .ini, .bittu {
  display: block;
  width: 100%;
  padding: 0;
  border: none;
  outline: none;
  box-sizing: border-box;
}

.emil {
  margin-bottom: 4px;
}

label:nth-of-type(2) {
  margin-top: 12px;
}

.ini::placeholder {
  color: gray;
}

.ini {
  background: #ecf0f3;
  padding: 10px;
  padding-left: 20px;
  height: 50px;
  font-size: 14px;
  border-radius: 50px;
  box-shadow: inset 6px 6px 6px #cbced1, inset -6px -6px 6px white;
}

.bittu {
  color: white;
  margin-top: 20px;
  background: #21D0C3;
  height: 40px;
  border-radius: 20px;
  cursor: pointer;
  font-weight: 900;
  box-shadow: 6px 6px 6px #cbced1, -6px -6px 6px white;
  transition: 0.5s;
}

.bittu:hover {
  box-shadow: none;
}

.ay {
  position: absolute;
  font-size: 8px;
  bottom: 4px;
  right: 4px;
  text-decoration: none;
  color: black;
  background: yellow;
  border-radius: 10px;
  padding: 2px;
}


    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container" style="margin-bottom: 20px">
         <div style="display: flex; justify-content: center;">
              <div class="containe">
                  <div class="brand-log"></div>
                  <div class="brand-titl">Certificate</div>
                  <div class="inputsss">
                    <labe class=emil>Full Name</labe>
                    <input type="text" class="ini" placeholder="Enter Full Name" />
                    <label class="emi">E-mail</label>
                    <input type="email" class="ini" placeholder="Enter Email" />
                    <button type="submit" class="bittu">Generate</button>
                      <p class="ay">@Soumyajit</p>
                 </div>
                </div>
         </div>
     </div>


</asp:Content>
