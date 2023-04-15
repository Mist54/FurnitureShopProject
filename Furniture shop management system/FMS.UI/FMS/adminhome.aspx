<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminhome.aspx.cs" Inherits="FMS.adminhome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> admin Homepage</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins" />
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

<style>
      body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
      body {font-size:16px;}
      .w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
      .w3-half img:hover{opacity:1}
</style>
</head>
<body>
   
    <form id="form1" runat="server">
         <nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar" ><br />
    <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
    <div class="w3-container">
    <h3 class="w3-padding-64"><b>Furniture<br />Shop</b></h3>
     </div>
         <div class="w3-bar-block">
    <a href="dashboard.aspx" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Dashboard</a> 
    <a href="employee.aspx" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Employee Details</a> 
    <a href="supplier.aspx" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Supplier Detail</a> 
    <a href="attendence.aspx" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Employee Attendence and payslip</a> 
    <a href="order.aspx" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Order List</a> 
    <a href="stock2.aspx" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">View Stock</a> 
    <a href="purchase.aspx" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white"> Stock Purchase</a> 
         </nav>
        <!-- Top menu on small screens -->
<header class="w3-container w3-top w3-hide-large w3-red w3-xlarge w3-padding">
  <a href="javascript:void(0)" class="w3-button w3-red w3-margin-right" onclick="w3_open()">☰</a>
  <span>Furniture Shop</span>
</header>
        <!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
        <!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:340px;margin-right:40px">
 <!-- Header -->
  <div class="w3-container" style="margin-top:80px" id="showcase">
    <h1 class="w3-jumbo"><b>Furniture Set</b></h1>
    <h1 class="w3-xxxlarge w3-text-red"><b> Design Showcase.</b></h1>
    <hr style="width:40px;border:5px solid red" class="w3-round" />
  </div>

     <!-- Photo grid (modal) -->
  <div class="w3-row-padding">
    <div class="w3-half">
      <img src="image/bed.jpg" style="width:100%" onclick="onClick(this)" alt=" Bunk Bed" />
      <img src="image/bedset.jpg" style="width:100%" onclick="onClick(this)" alt="luxury bed design" />
      <img src="image/sofaset.jpg" style="width:100%" onclick="onClick(this)" alt=" luxury Sofa" />
    </div>
       <div class="w3-half">
      <img src="image/white.jpg" style="width:100%" onclick="onClick(this)" alt="Table set" />
      <img src="image/chairs.jpeg" style="width:100%" onclick="onClick(this)" alt="Dining chair set" />
      <img src="image/two.jpg" style="width:100%" onclick="onClick(this)" alt=" New  chair designs" />
    </div>
  </div>
   <!-- Modal for full size images on click-->
  <div id="modal01" class="w3-modal w3-black" style="padding-top:0" onclick="this.style.display='none'">
    <span class="w3-button w3-black w3-xxlarge w3-display-topright">×</span>
    <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
      <img src="***" id="img01" class="w3-image" />
      <p id="caption"></p>
    </div>
  </div>
     <div class="w3-container"  style="margin-top:75px">
    <h1 class="w3-xxxlarge w3-text-red"><b>Services.</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round" />
    <p>We are a interior Furniyure shop that focus on what's best for your home and what's best for you!</p>
    <p>Some text about our services - what we do and what we offer... We Provide You with best Interior and exterior furniture
        that you need for your house. We provide you with <i>best and finest</i> goods with high quality and with lowest price
    </p>
  </div>

     <!-- Contact -->
  <div class="w3-container" id="contact" style="margin-top:75px">
    <h1 class="w3-xxxlarge w3-text-red"><b>Contact.</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round" />
    <p>Do you want to meet the developer? Check-out these :) We love meeting new people!</p>
     <p> <i class="fa fa-envelope" style="font-size:45px;color:red"></i>&nbsp;&nbsp;www.Example@gmail.com</p>
     <p> <i class="fa fa-phone" style="font-size:45px;color:red"></i>&nbsp;&nbsp;&nbsp;&nbsp;9986654431</p>
     <p> <i class="fa fa-map-marker" style="font-size:45px;color:red"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Manipal Furniture shop, main Road Udupi-576432</p>
     <p> <i class="fa fa-globe" style="font-size:45px;color:red"></i>&nbsp;&nbsp;&nbsp;&nbsp;WWW.Example.com</p>
      <br />
      <br />
        <br />
      <br />    
  </div></div>

    <script>
        // Script to open and close sidebar
        function w3_open() {
            document.getElementById("mySidebar").style.display = "block";
            document.getElementById("myOverlay").style.display = "block";
        }

        function w3_close() {
            document.getElementById("mySidebar").style.display = "none";
            document.getElementById("myOverlay").style.display = "none";
        }

        // Modal Image Gallery
        function onClick(element) {
            document.getElementById("img01").src = element.src;
            document.getElementById("modal01").style.display = "block";
            var captionText = document.getElementById("caption");
            captionText.innerHTML = element.alt;
        }
    </script>
    </form>
</body>
</html>
