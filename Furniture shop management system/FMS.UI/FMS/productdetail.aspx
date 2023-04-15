<%@ Page Title="" Language="C#" MasterPageFile="~/costomer.Master" AutoEventWireup="true" CodeBehind="productdetail.aspx.cs" Inherits="FMS.productdetail" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
     <style>
         body{
              background: #fff url(image/background3.jpg);
              
         }
/* [1] The container */
.img-hover-zoom {
  height: 300px; /* [1.1] Set it as per your need */
  overflow: hidden; /* [1.2] Hide the overflowing of child elements */
}

/* [2] Transition property for smooth transformation of images */
.img-hover-zoom img {
  transition: transform 5s, filter 3s ease-in-out;
}

/* [3] Finally, transforming the image when container gets hovered */
.img-hover-zoom:hover img {
  transform: scale(3);
}



/* The flip card container - set the width and height to whatever you want. We have added the border property to demonstrate that the flip itself goes out of the box on hover (remove perspective if you don't want the 3D effect */
.flip-card {
  background-color: transparent;
  width:600px;
  height: 500px;
  border: 1px solid #f1f1f1;
  perspective: 1000px; /* Remove this if you don't want the 3D effect */
}

/* This container is needed to position the front and back side */
.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.8s;
  transform-style: preserve-3d;
}

/* Do an horizontal flip when you move the mouse over the flip box container */
.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

/* Position the front and back side */
.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden; /* Safari */
  backface-visibility: hidden;
}

/* Style the front side (fallback if image is missing) */
.flip-card-front {
  background-color: #bbb;
  color: black;
}

/* Style the back side */
.flip-card-back {
  background-color: dodgerblue;
  color: white;
  transform: rotateY(180deg);
}


     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!--Design starts-->
   
    <div class="row">
                        <div class="col-12">
                            &nbsp;
                        </div></div> <br />
  
        <div class="card-header fs-3  fw-bolder  bg-secondary text-center" style="font-family:Copperplate">Product details</div>
          <asp:Label ID="Label1" runat="server" Visible="false"></asp:Label>
        <div class="container-fluid" style="background-color: #d4cdcc;"><br/>
        <!--Reapeater control -->
            <asp:Repeater ID="Repeater1" runat="server">

               <ItemTemplate>
                    <div class="container" style="width:100%">
                   <div class="row">
                        <div class="col-md-4">
                         <div class="img-hover-zoom">
                            <img src="<%#Eval("image") %>"  class="card-img-top" alt="..." height="250" width="500"></div>
                                
                        </a></div>
                        <div class="col-md-8">
                           
                            <h5 class="card-title"><%#Eval("productname") %></h5>
                         
                                        <p class="product-text">Brand/Comapany:&nbsp;<%#Eval("company") %></p>
                                           <p class="product-text">Size & weight:&nbsp;<%#Eval("size") %></p>
                                           <p class="product-text">Actual price:&nbsp;<del><%#Eval("actualprice") %></del> </p>
                                           <p class="product-text">Selling price:&nbsp;<%#Eval("sellingprice") %> </p>
                           
                                            <asp:Button ID="Button1" runat="server" Text="Buy now"  CssClass="btn-success btn-sm" OnClick="Button1_Click" Width="100" />
                          
                       </div></div>
                   </div>
                           <hr />
                   <div class="row">
                       <div class="col-md-12">
                           <div class="container">
                               <div class="card">
                                    <div class="card-header fs-2 fw-bolder text-center">Related images</div>
    <div class="row">
        <div class="col-md-3">
            <div class="card" style="width: 18rem;">     
  <img src="<%#Eval("image") %>" class="card-img-top" alt="..." height="200" width="400">
  <div class="card-body">
  </div>
</div>
        </div>
        <div class="col-md-3">
            <div class="card" style="width: 18rem;">
                 
  <img src="<%#Eval("image2") %>" class="card-img-top" alt="..." height="200" width="400">
  <div class="card-body">
  </div>
</div>
        </div>
         <div class="col-md-3">
            <div class="card" style="width: 18rem;">
                 
  <img src="<%#Eval("image3") %>" class="card-img-top" alt="..." height="200" width="400" >
  <div class="card-body">
  </div>
</div>
        </div>
         <div class="col-md-3">
            <div class="card" style="width: 18rem;">
                
  <img src="<%#Eval("image4") %>" class="card-img-top" alt="..." height="200" width="400">
  <div class="card-body">
  </div>
</div>
        </div>
    </div></div>
</div><hr />
                          </div></div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h2 cssclass="fs-2">Product information and detail</h2><!--get and set the data from database-->
                                    </div>
                                    <div class="card-body" style="background: linear-gradient(153deg, #cbefef 8%, #8cccca 29%, #45a7ba 42%, #909ad2 58%, #c4e3f0 81%, #33e9e9 97%);">
                                        <table class="table table-hover  table-responsive"><!--Table Design starts-->

  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Product number</td>
      <td><%#Eval("productid") %></td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Company/Brand name</td>
      <td><%#Eval("company") %></td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Material</td>
      <td><%#Eval("material") %></td>
    </tr>
       <tr>
      <th scope="row">4</th>
      <td>Catogory</td>
      <td><%#Eval("catogory") %></td>
    </tr>
        <tr>
      <th scope="row">5</th>
      <td>Available colors</td>
      <td><%#Eval("color") %></td>
    </tr>
        <tr>
      <th scope="row">6</th>
      <td>Available paymentmode</td>
      <td><%#Eval("paymentmode") %></td>
    </tr>
        <tr>
      <th scope="row">7</th>
      <td>Return option</td>
      <td><%#Eval("returnmode") %></td>
    </tr>
        <tr>
      <th scope="row">8</th>
      <td>delivary charge</td>
      <td cssclass="table-danger"><%#Eval("delivarycharge") %></td>
    </tr>
  </tbody>
</table><!--Table design ends-->
                                        

                                    </div>
                                </div>
                                 <div class="row">
                        <div class="col-12">
                            &nbsp;
                        </div></div>
                                <div class="card-footer alert alert-light">
                                     <div class="row">
                        <div class="col-3 fs-4">
                           <p> Product description</p>
                        </div>
                                         <div class="col-9">
                                             <p><%#Eval("discription") %></p>
                                         </div>

                                     </div>

                                </div><br />
                               <div class="card">
                                   <div class="card-body">
                                        <div class="row align-items-center">
    <div class="col">
     <div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front bg-info">
        <BR />
      <h1 style="font-family:'Times New Roman'" class="text-center">PRODUCT KEY FEATURES</h1>
        <br />
        <img src="image\feature.png" alt="..." style="border-radius:50%" width="200" height="200">
    </div>
    <div class="flip-card-back">
      <p><%#Eval("features") %></p>
    </div>
  </div>
</div>
                                           
    </div>
    <div class="col">
      <div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front bg-warning">
        <br />
      <h1 style="font-family:'Times New Roman'" class="text-center">SAFETY MEASURE</h1>
         <br />
        <img src="image\safety.png" alt="..." style="border-radius:50%" width="200" height="200">
    </div>
    <div class="flip-card-back " >
      <p><%#Eval("safety") %></p>
    </div>
  </div>
</div>
                                           
    </div>
  </div>
                                      
                                    
                                   </div>
                               </div><hr />
                                <div class="row">
                                    <div class="col-12">
                                        <div class="alert alert-danger fs-5"><p> Delivary charge will be taken separately**</p></div>
                                    </div> </div>
                                    <div class="row">
                                    <div class="col-12">
                                        <div class="alert alert-info fs-5"><a href="termsandconditions.html" class="link link-dark">Please read all terms and conditions</a></div>
                                    </div>
                                </div>
                           
                        </div>
                  </div>
               </ItemTemplate>
            </asp:Repeater><br /><br /><!--Reapeater Ends-->
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
