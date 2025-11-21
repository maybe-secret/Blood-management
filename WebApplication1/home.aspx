<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="./css/home.css" />
    <style>
        .unik-a {
            color: #C82333 !important;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <!--hero section-->
    <div class="container col-xxl-8 px-4 py-5">
        <div class="row flex-lg-row-reverse align-items-center g-5 py-5">
            <div class="col-10 col-sm-8 col-lg-6 ">
                <img src="./images/th.jpg" class="d-block mx-lg-auto img-fluid round shadow" alt="Bootstrap Themes" width="700" height="500" loading="lazy">
            </div>
            <div class="col-lg-6">
                <h1 class="display-5 fw-bold text-body-emphasis lh-1 mb-3 " id="text"></h1>
                <p class="lead">Join our blood donation camp and give the gift of life. Your small act of kindness can save lives and bring hope to many!</p>
                <div class="d-grid gap-2 d-md-flex justify-content-md-start">
                    <asp:Button ID="btnPrimary" runat="server" Text="Donate" CssClass="btn btn-danger btn-lg px-4 me-md-2"  />
                    <asp:Button ID="btnDefault" runat="server" Text="Learn more" CssClass="btn custom-item btn-lg px-4"  />
                </div>
            </div>
        </div>
    </div>


    <!--hedi section-->
  
    <div class="container px-4 py-5" id="custom-cards">
        <h2 class="pb-2 border-bottom">FEATURING</h2>

        <div class="row row-cols-1 row-cols-lg-3 align-items-stretch g-4 py-5">
          <div class="col">
            <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background:linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7)), url('./images/bim.jpg');">
              <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
                <h3 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold" id="card1">Blood Reserve</h3>
                  <p style="color: #E6E6E6; font-weight: bold;">Blood reserves are critical for emergencies, surgeries, and life-saving treatments. Maintaining adequate blood stocks ensures timely care for patients in need. Your donation helps keep these reserves full, providing hope and life to countless individuals. Donate and make a difference!</p>
                    
              </div>
            </div>
          </div>

          <div class="col">
            <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)), url('./images/Blood donate.jpg');">
              <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
                <h3 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold" id="card2">LifeStream</h3>
                  <p style="color: #E6E6E6">LifeStream is more than just a blood donation camp; it’s a mission to save lives, bring hope, and strengthen communities. Your generous contribution of blood can give someone a second chance at life. Be a part of this change.</p>
              </div>
            </div>
          </div>

          <div class="col">
            <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background:linear-gradient(rgba(0,0,0,0.3),rgba(0,0,0,0.4)), url('./images/donate.jpg');">
              <div class="d-flex flex-column h-100 p-5 pb-3 text-shadow-1">
                <h3 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold" id="card3" >Vitality</h3>
                  <p style="color: #E6E6E6">Donating blood is a selfless act that saves lives, improves health, and fosters a sense of community. It helps replenish blood banks, supports medical treatments, and enhances your own well-being by stimulating new blood cell production. Donate today!</p>
                
              </div>
            </div>
          </div>
        </div>
      </div>


    <!--fe section-->
    <div class="container px-4 py-5" id="featured-3">
        <h2 class="pb-2 border-bottom">SERVICES</h2>
        <div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
          <div class="feature col">
            <div class="feature-icon d-inline-flex align-items-center justify-content-center bgg bg-gradient fs-2 mb-3">
              <svg xmlns="http://www.w3.org/2000/svg"  height="60" fill="currentColor" class="bi bi-r-square-fill cus-1" viewBox="0 0 16 16">
                  <path d="M6.835 5.092v2.777h1.549c.995 0 1.573-.463 1.573-1.36 0-.913-.596-1.417-1.537-1.417z"/>
                  <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2zm3.5 4.002h3.11c1.71 0 2.741.973 2.741 2.46 0 1.138-.667 1.94-1.495 2.24L11.5 12H9.98L8.52 8.924H6.836V12H5.5z"/>
              </svg>
            </div>
            <h3 class="fs-2 text-body-emphasis">Register</h3>
            <p>Register now to donate blood and make a life-saving impact. Your donation can help those in urgent need. Join us today and become a hero by giving the gift of life!</p>
            <asp:HyperLink ID="link1" runat="server" NavigateUrl="register.aspx" CssClass="icon-link" Text="Register"></asp:HyperLink>
          </div>
          <div class="feature col">
            <div class="feature-icon d-inline-flex align-items-center justify-content-center bgg bg-gradient fs-2 mb-3 ">
                <svg xmlns="http://www.w3.org/2000/svg"  height="60" fill="currentColor" class="bi bi-database-fill-check cus-2" viewBox="0 0 16 16">
                  <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m1.679-4.493-1.335 2.226a.75.75 0 0 1-1.174.144l-.774-.773a.5.5 0 0 1 .708-.708l.547.548 1.17-1.951a.5.5 0 1 1 .858.514M8 1c-1.573 0-3.022.289-4.096.777C2.875 2.245 2 2.993 2 4s.875 1.755 1.904 2.223C4.978 6.711 6.427 7 8 7s3.022-.289 4.096-.777C13.125 5.755 14 5.007 14 4s-.875-1.755-1.904-2.223C11.022 1.289 9.573 1 8 1"/>
                  <path d="M2 7v-.839c.457.432 1.004.751 1.49.972C4.722 7.693 6.318 8 8 8s3.278-.307 4.51-.867c.486-.22 1.033-.54 1.49-.972V7c0 .424-.155.802-.411 1.133a4.51 4.51 0 0 0-4.815 1.843A12 12 0 0 1 8 10c-1.573 0-3.022-.289-4.096-.777C2.875 8.755 2 8.007 2 7m6.257 3.998L8 11c-1.682 0-3.278-.307-4.51-.867-.486-.22-1.033-.54-1.49-.972V10c0 1.007.875 1.755 1.904 2.223C4.978 12.711 6.427 13 8 13h.027a4.55 4.55 0 0 1 .23-2.002m-.002 3L8 14c-1.682 0-3.278-.307-4.51-.867-.486-.22-1.033-.54-1.49-.972V13c0 1.007.875 1.755 1.904 2.223C4.978 15.711 6.427 16 8 16c.536 0 1.058-.034 1.555-.097a4.5 4.5 0 0 1-1.3-1.905"/>
                </svg>
            </div>
            <h3 class="fs-2 text-body-emphasis">Stocks</h3>
            <p>Efficient blood stock management ensures a steady supply for emergencies. Our system tracks inventory, maintains quality, and ensures timely donations, so we’re always prepared to save lives when needed most.</p>
            <asp:HyperLink ID="link2" runat="server" NavigateUrl="stocks.aspx" CssClass="icon-link" Text="View Stocks"></asp:HyperLink>

          </div>
          <div class="feature col">
            <div class="feature-icon d-inline-flex align-items-center justify-content-center bgg bg-gradient fs-2 mb-3">
              <svg xmlns="http://www.w3.org/2000/svg"  height="60" fill="currentColor" class="bi bi-patch-check-fill cus-3" viewBox="0 0 16 16">
                  <path d="M10.067.87a2.89 2.89 0 0 0-4.134 0l-.622.638-.89-.011a2.89 2.89 0 0 0-2.924 2.924l.01.89-.636.622a2.89 2.89 0 0 0 0 4.134l.637.622-.011.89a2.89 2.89 0 0 0 2.924 2.924l.89-.01.622.636a2.89 2.89 0 0 0 4.134 0l.622-.637.89.011a2.89 2.89 0 0 0 2.924-2.924l-.01-.89.636-.622a2.89 2.89 0 0 0 0-4.134l-.637-.622.011-.89a2.89 2.89 0 0 0-2.924-2.924l-.89.01zm.287 5.984-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7 8.793l2.646-2.647a.5.5 0 0 1 .708.708"/>
                </svg>
            </div>
            <h3 class="fs-2 text-body-emphasis">Certificate</h3>
            <p>Paragraph of text beneath the heading to explain the heading. We'll add onto it with another sentence and probably just keep going until we run out of words.</p>
            <asp:HyperLink ID="link3" runat="server" NavigateUrl="certificate.aspx" CssClass="icon-link" Text="View Certificate"></asp:HyperLink>            
          </div>
        </div>
      </div>
    
    
    <script>
        var message = "Give Blood, Save Lives – Be Someone’s Hero Today!";
        var speed = 150;

        var i = 0;

        function autoTyper() {
            document.getElementById("text").innerHTML += message.charAt(i);
            i++;

            setTimeout(autoTyper, speed);
        }

        autoTyper();



        
    </script>
      

</asp:Content>
