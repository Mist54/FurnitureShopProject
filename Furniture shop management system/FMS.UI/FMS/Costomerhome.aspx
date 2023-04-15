<%@ Page Title="" Language="C#" MasterPageFile="~/onlinehome.Master" AutoEventWireup="true" CodeBehind="Costomerhome.aspx.cs" Inherits="FMS.Costomerhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
   <meta name='viewport' content='width=device-width, initial-scale=1'>
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body {
            background-color: #d4cdcc;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!--Design starts--><br />
      <div class="row">
        <div class="col-md-12">
            <h1 Cssclass="fw-bolder" style="text-align:center"> Online Furniture Shop</h1>
        </div>
    </div>
    <!--Image Slide show-->
    <div class="row">
        <div class="col-md-12">
    <div id="carouselExampleCaptions" class="carousel slide border border-dark" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="image/godre.jpeg" class="d-block w-100" alt="..." width="350" height="400" />
      <div class="carousel-caption d-none d-md-block">
        <h5>Innovative Designs</h5>
        <p>Designs that make you happy</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="image/royal.jpg" class="d-block w-100" alt="..."  width="300" height="400"/>
      <div class="carousel-caption d-none d-md-block">
        <h5>Many Offers And Types</h5>
        <p>Freedom to Choose What you want</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="image/sofa.jpg" class="d-block w-100" alt="..."  width="350" height="400">
      <div class="carousel-caption d-none d-md-block">
        <h5>Qulity and comfort</h5>
        <p>High qulity and comfort that you need </p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>  </div></div>
    <hr />
    <!--image Show Side by side. Here Cards and container class are used--> 
    <div class="row">
        <div class="col-md-12">
            <h5 style="text-align:center"><u>Our Products</u> </h5></div>
    </div>
    <div class="row">
        <div class="col-md-12">
            &nbsp;
        </div>
    </div>
    <div class="container">
    <div class="row">
        <div class="col-md-3">
           <div class="card" style="width: 18rem;">
  <img src="image/bed.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Your beauty sleep comes with a beautiful bed. This modern upholstered bed gives the bedroom a stylish makeover.
    </p>
  </div>
</div>
        </div>
        <div class="col-md-3">
            <div class="card" style="width: 18rem;">
  <img src="image/sofaset.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">his sofa is designed to combat sagging. The multi-density foam in the seat cushions reduces sagging due to prolonged use. </p>
  </div>
</div>
        </div>
         <div class="col-md-3">
            <div class="card" style="width: 18rem;">
  <img src="image/two.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Made cushy for your tushy. The Pashe chairs feature plush upholstery in a host of modern colours, spelling comfort and style. </p>
  </div>
</div>
        </div>
         <div class="col-md-3">
            <div class="card" style="width: 18rem;">
  <img src="image/bedset.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Your beauty sleep comes with a beautiful bed. This modern upholstered bed gives the bedroom a stylish makeover.</p>
  </div>
</div>
        </div>
    </div>
</div><hr />
    <!--Here aleart class is used. Contact Us Section-->
    <div class="card-body" id="contact" >
          <div class="row">
        <div class="col-md-12">
            <h5 style="text-align:center"><u>Contact Us</u> </h5></div>
    </div>
        <div class="row">
            <div class="col-md-12">
                <div class="alert alert-primary" role="alert"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-telephone-fill" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
</svg>&nbsp;&nbsp;&nbsp;Our PhoneNo.:-98776654*** Haa!! Never mind.
            </div>
                <div class="alert alert-secondary" role="alert"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
  <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
</svg>&nbsp;&nbsp;&nbsp;Our Location/postal address:-Some Place on Earth that You Know Since this is Student software >_< </div>
                <div class="alert  alert-info" role="alert"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-envelope-fill" viewBox="0 0 16 16">
  <path d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"/>
</svg>&nbsp;&nbsp;&nbsp;Our Email:-something@hmail.com(Please Just Dont send anything We appreciate It)</div>

        </div></div></div>
    <!-- Services Section-->
    <div class="card" id="services">
    <div class="card-header-pills" >
        <h5  style="text-align:center"><u>Our Services</u></h5>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-md-4">
                <i class='fas fa-shipping-fast' style='font-size:30px;color:black'> Fast Delivary</i>
            </div>
              <div class="col-md-5">
                <i class='fa fa-trophy' style='font-size:30px;color:black'>Best Price with Best quality</i>
            </div>
            <div class="col-md-3">
                <i class='fas fa-user-tie' style='font-size:30px;color:black'>24/7 Service</i>
            </div><br /><br />
        </div>
    </div></div><br />
                <!--Blog section-->
    <div class="card-footer " id="blog" style="background-color:#a6a6a6">
        <h1 style="font-family:Georgia">Buy Furniture Online India's Favourite Destination For All Things Home!</h1>
        <p class="fs-2">Shop For The Best Furniture Online For Your Home</p>
        <p class="fs-6">Furniture is amongst the most crucial elements of a home and more often than not a true reflection of the people living in it. 
            From the style of bed to the colour of the chairs, every little detail makes a massive impact, which is why choosing the right furniture for your home is essential.
            Tired of searching for furniture shop near me in the search engine of your choice and not finding substantial results? We have just the solution for you. 
            Urban Ladder, an online furniture store, is home to exceptional furniture options for every part of your home including the bedroom, living room, dining room, 
            and more.</p>
    </div> <div class="row">
        <div class="col-md-12">
            &nbsp;
        </div>
    </div>
   <hr />
    <div class="container bg-info">
         <h5 style="text-align:center"><u>Our Community</u></h5>
  <div class="row align-items-start">
    <div class="col">
     <div class="embed-responsive embed-responsive-16by9">
  <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/q6xVs0W9FHE"></iframe>
</div>
    </div>
    <div class="col">
     <div class="embed-responsive embed-responsive-16by9">
  <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/9rpieR7B-Nw"></iframe>
</div>
    </div>
    <div class="col">
      <div class="embed-responsive embed-responsive-16by9">
  <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/_ZYrmy0Q6Tg"></iframe>
</div>
    </div>
  </div><br /></div>
    
    <!--Footer Section-->
    <div class="card-footer bg-dark text-light">
        <div class="row">
            <div class="col-md-3">
                <p> Popular Furniture Categories:</p></div>
            <div class="col-md-9"><p>
Bed , Beds By Design , Sofa Set , Wooden Sofa , Sofas By Design , Sofa and Bed , Double Bed , Single Bed , Queen Size Bed ,
                    King Size Bed , Chair , Table , Study Table , Study Chair , Wardrobe , Chest of Drawers , Futon , Loveseat , Dining Table Set ,
                    Dining Chair , Bookshelves , Shoe Rack , TV Units , Recliners , Furniture , Office Furniture , Office Table , Office Chair , 2 Seater Sofa,etc.</p>
            </div>
            <div class="col-md-3">
                <p> Delivering in:</p></div>
              <div class="col-md-9">anamalai , Agra , Ahmedabad , Alappuzha , Aler , Alibaug , Alleppey , Almora , Alwar , Ambala , Ambarnath , 
                  Amdapur , Amravati , Amritsar , Amtala , Anand , Anikorai , Ankleshwar , Arimpur , Arnala , Arutla ... More<p>
                                    </p>
        </div></div></div><br />
    <div class="alert  alert-secondary text-primary"> <marquee direction="right"  scrollamount="15" style=" font-size:20px"> Welcome to online furniture shop. Best and Easy shopping Website(This is a Student software)</marquee></div>
   
    
    <div class="row">
        <div class="col-md-12">
            &nbsp;
        </div>
    </div> <div class="row">
        <div class="col-md-12">
            &nbsp;
        </div>
    </div>   <div class="row">
        <div class="col-md-12">
            &nbsp;
        </div>
    </div>
    <!--Design Ends-->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
