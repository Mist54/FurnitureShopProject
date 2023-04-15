<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="buyproduct.aspx.cs" Inherits="FMS.buyproduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
    <title>Buy product</title>
    <style>
         body{
              background: #fff url(image/background3.jpg);
              
         }
     </style>
   
</head>
<body>
    <form id="form1" runat="server">
       <br />
        <!--Design starts-->
    <div class="container" style="width:100%;">
       
                       <div class="card-header fs-3  fw-bolder  bg-secondary text-center" >
                           <h3 style="font-family:Copperplate">Product order portal</h3>   <!--gets the info of the product-->
                       </div>
         <div class="container" style="background-color: #d4cdcc;"><br />
        <asp:Label ID="Label8" runat="server" Visible="false" Text="Label"></asp:Label>
             <asp:Label ID="Label9" runat="server" Visible="false"></asp:Label>
            <asp:Repeater ID="Repeater1" runat="server" >
                <ItemTemplate>
                    <div class="row">
                        <div class="col-md-4">
                            <img src="<%#Eval("image") %>"  class="card-img-top" alt="..." height="200" width="200">
                        </div></a>
                        <div class="col-md-8">
                            <h5 class="card-title"><%#Eval("productname") %></h5>
                         
                                        <p class="product-text">Brand/Comapany:&nbsp;<%#Eval("company") %></p>
                                            
                                           <p class="product-text">Size & weight:&nbsp;<%#Eval("size") %></p>
                                           <p class="product-text">Selling price:&nbsp;<%#Eval("sellingprice") %></p><br />
                            <hr />
                        </div>
                    </div>
                </ItemTemplate>             
        </asp:Repeater>
                 <div class="row">
                     <div class="col-md-4">
                         &nbsp;
                     </div>
                     <div class="col-md-2"><!--calculation design section-->
                          <asp:Label ID="Label1" runat="server" Text="Enter the Qty"></asp:Label>
                         
                         <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control-sm" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged" TextMode="Number" ></asp:TextBox></div>
                         <div class="col-md-2">
                              <asp:Label ID="Label11" runat="server" Text="Delivary charge"></asp:Label>
                         <asp:TextBox ID="TextBox8" runat="server" Enabled="false" AutoPostBack="True" CssClass="form-control-sm bg-white" TextMode="Number"></asp:TextBox>
                          </div>
                     <div class="col-md-2">
                         <asp:Label ID="Label7" runat="server" Text="Total amount"></asp:Label>
                         <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control-sm bg-light" AutoPostBack="True" TextMode="Number" Enabled="false"></asp:TextBox></div>
                     
                         <div class="col-md-2">
                           <asp:Label ID="Label10" runat="server" Text="Payment"></asp:Label>
                             <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control-sm bg-light" Visible="false"></asp:TextBox>
                              <!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
 Payment option
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-bs-backdrop="static">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Choose Your payment ways</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal"   aria-label="Close"></button>
      </div>
      <div class="modal-body">
          <div class="row">
              <div class="col-md-1 ms-auto">
                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-wallet2" viewBox="0 0 16 16">
              <path d="M12.136.326A1.5 1.5 0 0 1 14 1.78V3h.5A1.5 1.5 0 0 1 16 4.5v9a1.5 1.5 0 0 1-1.5 1.5h-13A1.5 1.5 0 0 1 0 13.5v-9a1.5 1.5 0 0 1 1.432-1.499L12.136.326zM5.562 3H13V1.78a.5.5 0 0 0-.621-.484L5.562 3zM1.5 4a.5.5 0 0 0-.5.5v9a.5.5 0 0 0 .5.5h13a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-13z"/>
            </svg>
            </div>
              <div class="col-md-5 ms-auto">
                  <p style="font-family:Arial, Helvetica, sans-serif">Cash on delivery</p>
              </div>
              <div class="col-md-4 ms-auto">
                  <asp:Button ID="Button2" runat="server" Text="Select" CssClass="btn btn-success" OnClick="Button2_Click" />
              </div>
          </div>
          <div class="row">
              <div class="col-md-1 ms-auto ms-sm-auto">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-credit-card" viewBox="0 0 16 16">
  <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v1h14V4a1 1 0 0 0-1-1H2zm13 4H1v5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V7z"/>
  <path d="M2 10a1 1 0 0 1 1-1h1a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1v-1z"/>
</svg>
              </div>
              <div class="col-md-5 ms-auto">
                  <p style="font-family:Arial">Credit or debit card</p>
              </div>
               <div class="col-md-4 ms-auto">
                  <asp:Button ID="Button3" runat="server" Text="Select" CssClass="btn btn-success"  OnClick="Button3_Click"/>
              </div>
          </div>
          <div class="row">
              <div class="col-md-1 ms-auto">
                 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bank2" viewBox="0 0 16 16">
  <path d="M8.277.084a.5.5 0 0 0-.554 0l-7.5 5A.5.5 0 0 0 .5 6h1.875v7H1.5a.5.5 0 0 0 0 1h13a.5.5 0 1 0 0-1h-.875V6H15.5a.5.5 0 0 0 .277-.916l-7.5-5zM12.375 6v7h-1.25V6h1.25zm-2.5 0v7h-1.25V6h1.25zm-2.5 0v7h-1.25V6h1.25zm-2.5 0v7h-1.25V6h1.25zM8 4a1 1 0 1 1 0-2 1 1 0 0 1 0 2zM.5 15a.5.5 0 0 0 0 1h15a.5.5 0 1 0 0-1H.5z"/>
</svg>
              </div>
              <div class="col-md-5 ms-auto">
                  <p style="font-family:Arial">Net banking</p>
              </div>
               <div class="col-md-4 ms-auto">
                  <asp:Button ID="Button4" runat="server" Text="Select" CssClass="btn btn-success" OnClick="Button4_Click" />
              </div>
          </div>
      
      </div>
      <div class="modal-footer">
         <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      
      </div>
    </div>
  </div>
</div>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox9" CssClass="text-danger" ErrorMessage="choose the payment method"></asp:RequiredFieldValidator>
        </div><hr />
        <div class="card" style="background-color: #d4cdcc;"><!--Customer detail section-->
            <div class="card-header bg-warning">
                <h2 style="text-align:center">Customer Infofo</h2>
            </div>
            <div class="card-body bg-info">
                <div class="row">
                    <div class="col-md-6">
                        <asp:Label ID="Label2" runat="server" Text="Phone number"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server"  CssClass="form-control" TextMode="Phone" ></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter valid phone number" ValidationExpression="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                      <div class="col-md-6">
                        <asp:Label ID="Label3" runat="server" Text="Full name"></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server"  CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                   <div class="row">
                    <div class="col-md-6">
                        <asp:Label ID="Label5" runat="server" Text="Email address"></asp:Label>
                        <asp:TextBox ID="TextBox5" runat="server"  CssClass="form-control" TextMode="Email"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please enter valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                      <div class="col-md-6">
                        <asp:Label ID="Label6" runat="server" Text="Pincode"></asp:Label>
                        <asp:TextBox ID="TextBox6" runat="server"  CssClass="form-control" TextMode="Number"></asp:TextBox>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Please enter valid pin code" ValidationExpression="^[1-9][0-9]{5}$" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                </div>
               
                <div class="row">
                    <div class="col-md-12">
                        <asp:Label ID="Label4" runat="server" Text="address"></asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server"  CssClass="form-control"  TextMode="MultiLine"></asp:TextBox>
                   
                    </div>
                </div><hr />
                <div class="row">
                   
                       <div class="d-grid gap-2">
                         <asp:Button ID="Button1" runat="server" Text="Place order" CssClass=" btn btn-success btn-lg" OnClick="Button1_Click" />
                    </div>  </div>
              

            </div>
        </div><br /><br /></div></div></div>
        <!--Design ends-->
    </form>
</body>
    <script>
        var myModal = document.getElementById('myModal')
        var myInput = document.getElementById('myInput')

        myModal.addEventListener('shown.bs.modal', function () {
            myInput.focus()
        })
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>

</html>
