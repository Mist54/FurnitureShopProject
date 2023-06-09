﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="FMS.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Admin dashboard</title>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway"/>
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
   <div class="w3-container w3-row">
    <div class="w3-col s4">
      <img src="image/logo2.jpg" class="w3-circle w3-margin-right" style="width:46px"/>
    </div>
    <div class="w3-col s8 w3-bar">
      <span>Welcome, <strong>Admin</strong></span><br />
      <a href="email.html" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i></a>
      <a href="admininfo2.aspx" class="w3-bar-item w3-button"><i class="fa fa-user"></i></a>
      <a href="#" class="w3-bar-item w3-button"><i class="fa fa-cog"></i></a>
    </div>
  </div>
    <hr/>
  <div class="w3-container">
    <h5>Dashboard</h5>
  </div>
  <div class="w3-bar-block">
    <a href="#dashboard" class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black" onclick="w3_close()" title="close menu"><i class="fa fa-remove fa-fw"></i>  Close Menu</a>
    <a href="#" class="w3-bar-item w3-button w3-padding w3-blue active"><i class="fa fa-users fa-fw"></i>  Overview</a>
    <a href="online_order.aspx" class="w3-bar-item w3-button w3-padding w3-blue"><i class="fa fa-table fa-fw"></i> Manage Online</a>
    <a href="adminhome.aspx" class="w3-bar-item w3-button w3-padding w3-blue"><i class="fa fa-home fa-fw"></i>Home</a>
      <a href="adminlogin.aspx" class="w3-bar-item w3-button w3-padding w3-blue"><i class="fa fa-power-off fa-fw"></i>LogOut</a>
  </div>
</nav>
        <!-- Top menu on small screens -->
<header class="w3-container w3-top w3-hide-large w3-red w3-xlarge w3-padding">
  <a href="javascript:void(0)" class="w3-button w3-red w3-margin-right" onclick="w3_open()">☰</a>
  <span>Admin Dashbord</span>
</header>
        <!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
        <!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px;margin-top:43px;">

  <!-- Header -->
  <header class="w3-container" style="padding-top:22px">
    <h5><b><i class="fa fa-dashboard" id="dashboard"></i> My Dashboard</b></h5>
  </header>

  <div class="w3-row-padding w3-margin-bottom">
    <div class="w3-quarter">
      <div class="w3-container w3-red w3-padding-16">
        <div class="w3-left"><i class="fa fa-users w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3>
              <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Employers</h4>
      </div>
    </div>
    <div class="w3-quarter">
      <div class="w3-container w3-blue w3-padding-16">
        <div class="w3-left"><i class="fa fa-truck w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3>
              <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Suppliers</h4>
      </div>
    </div>
    <div class="w3-quarter">
      <div class="w3-container w3-teal w3-padding-16">
        <div class="w3-left"><i class="fa fa-archive w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3>
              <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Stocks</h4>
      </div>
    </div>
       <div class="w3-quarter">
      <div class="w3-container w3-orange w3-text-white w3-padding-16">
        <div class="w3-left"><i class="fa fa-barcode w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3>
              <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Orders</h4>
      </div>
    </div>
  </div>
    <div class="w3-panel">
    <div class="w3-row-padding" style="margin:0 -16px">
      <div class="w3-third">
        <h5>Regions</h5>
        <img src="image/map.jpg" style="width:50%" alt="Google Regional Map" />
      </div>

      <div class="w3-twothird">
        <h5>Feeds</h5>
        <table class="w3-table w3-striped w3-white">
          <tr>
            <td><i class="fa fa-user w3-text-blue w3-large"></i></td>
            <td>Total Records</td>
            <td><i>
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></i></td>
          </tr>
          <tr>
            <td><i class="fa fa-bell w3-text-red w3-large"></i></td>
            <td>Database error.</td>
            <td><i>15 mins</i></td>
          </tr>
          <tr>
            <td><i class="fa fa-users w3-text-yellow w3-large"></i></td>
            <td>New record, over 40 users.</td>
            <td><i>17 mins</i></td>
          </tr>
          <tr>
            <td><i class="fa fa-comment w3-text-red w3-large"></i></td>
            <td>New comments.</td>
            <td><i>25 mins</i></td>
          </tr>
          <tr>
            <td><i class="fa fa-bookmark w3-text-blue w3-large"></i></td>
            <td>Check transactions.</td>
            <td><i>28 mins</i></td>
          </tr>
          <tr>
            <td><i class="fa fa-laptop w3-text-red w3-large"></i></td>
            <td>CPU overload.</td>
            <td><i>35 mins</i></td>
          </tr>
          <tr>
            <td><i class="fa fa-share-alt w3-text-green w3-large"></i></td>
            <td>New shares.</td>
            <td><i>39 mins</i></td>
          </tr>
        </table>
      </div>
    </div>
  </div>

    <div class="w3-container">
    <h5>General Stats</h5>
    <p>New Purchase</p>
    <div class="w3-grey">
      <div class="w3-container w3-center w3-padding w3-green" style="width:50%">
          <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></div>
    </div>

    <p>New Costomers</p>
    <div class="w3-grey">
      <div class="w3-container w3-center w3-padding w3-orange" style="width:50%">
          <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
      </div>
    </div>

    <p>Selling Rate</p>
    <div class="w3-grey">
      <div class="w3-container w3-center w3-padding w3-red" style="width:75%">
           <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
      </div>
    </div><br /> <br />
        <div class="w3-container w3-dark-grey w3-padding-32">
    <div class="w3-row">
      <div class="w3-container w3-third">
        <h5 class="w3-bottombar w3-border-green">Demographic</h5>
        <p>English</p>
        <p>Kannada</p>
        <p>India</p>
        <p>Udupi</p>
      </div>
      <div class="w3-container w3-third">
        <h5 class="w3-bottombar w3-border-red">System</h5>
        <p>Chome</p>
        <p>Windows</p>
        <p>More</p>
      </div>
      <div class="w3-container w3-third">
        <h5 class="w3-bottombar w3-border-orange">Target</h5>
        <p>Costomer</p>
        <p>Active</p>
        <p>clients</p>
        <p>Interests</p>
      </div>
    </div>
  </div>
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

    </script>
  

  
    </form>
</body>
</html>

