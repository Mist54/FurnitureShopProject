<%@ Page Title="" Language="C#" MasterPageFile="~/Onlinehome.Master" AutoEventWireup="true" CodeBehind="onlinehome.aspx.cs" Inherits="FMS.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <br />
    <div class="row">
        <div class="col-md-12">
            <h1 Cssclass="fw-bolder" style="text-align:center"> Online Furniture Shop</h1>
        </div>
    </div><br />
    <div class="row">
        <div class="col-md-12">
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="webform20" class="active" aria-current="true" aria-label="Slide 1"></button>
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
  <div class="card-header-pills">
        <h3 cssclass="fs-3" style="text-align:center"><u>Our Products</u></h3>
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
</div>
       <div class="row">
        <div class="col-md-12">
            &nbsp;
        </div>
    </div>   <div class="row">
        <div class="col-md-12">
            &nbsp;
        </div>
    </div><hr /><br />
    <div class="card-header-pills">
        <h3 cssclass="fs-3" style="text-align:center"><u>Our Services</u></h3>
    </div>
    <div class="card-body bg-light">
        <div class="row">
            <div class="col-md-4">
                <i class='fas fa-shipping-fast' style='font-size:30px;color:cornflowerblue'> Fast Delivary</i>
            </div>
              <div class="col-md-5">
                <i class='fa fa-trophy' style='font-size:30px;color:cornflowerblue'>Best and beautiful Quality</i>
            </div>
            <div class="col-md-3">
                <i class='fas fa-user-tie' style='font-size:30px;color:cornflowerblue'>24/7 Service</i>
            </div><br /><br />
              <div class="row">
            <div class="col-md-6">
                <i class="fa fa-rupee" style='font-size:30px;color:cornflowerblue'>Best Price with Best quality</i>
            </div></div>

        </div>
    </div><br /><hr />
    <div class="card-footer">
        <h1>Buy Furniture Online India's Favourite Destination For All Things Home!</h1>
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
    </div>   <div class="row">
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

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
