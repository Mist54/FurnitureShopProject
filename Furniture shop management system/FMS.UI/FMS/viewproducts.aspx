<%@ Page Title="" Language="C#" MasterPageFile="~/costomer.Master" AutoEventWireup="true" CodeBehind="viewproducts.aspx.cs" Inherits="FMS.viewproducts" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
     <style>
         body{
             background: #fff url(image/background3.jpg);     
         }

     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!--Design starts-->
     <div class="row">
                        <div class="col-12">
                            &nbsp;
                        </div></div> <br /><!--Used card and container class to hold the design -->
    <div class="card text-center" style="width:100%;">
           <div class="card-header fs-4  fw-bolder  bg-secondary" style="font-family:Copperplate">
                           <h3>View all product</h3>  <!--used to store the user name and Id-->
                           <asp:Label ID="Label1" runat="server"  CssClass=" text-light text-start" style="font-family: cursive"></asp:Label>
                           <asp:Label ID="Label2" runat="server"  Visible="false"></asp:Label>
                       </div>
     <div class="container " style=" background-color:#d4cdcc;">
    <!--Repeater control starts--><br />
            <asp:Repeater ID="Repeater1" runat="server" >
         
                <ItemTemplate>
                    
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Id") %>' Visible="false"></asp:Label>
                   
                    
                    <div class="row">
                      
                        <div class="col-md-4">
                           
                            <img src="<%#Eval("image") %>"  class="card-img-top" alt="..." height="200" width="400"><br />
                                
                        </div></a>
                        <div class="col-md-6">
                           
                            <h5 class="card-title"><%#Eval("productname") %></h5>
                         
                                        <p class="product-text">Brand/Comapany:&nbsp;<%#Eval("company") %></p>
                                            
                                           <p class="product-text">Size & weight:&nbsp;<%#Eval("size") %></p>
                                          
                                           <p class="product-text">Selling price:&nbsp;<%#Eval("sellingprice") %></p>
                                   <a href='<%# Eval("Id", "productdetail.aspx?Id={0}") %> ' class="btn btn-outline-primary " id="link" >View more</a>
                          
                            <hr /><br />
                        </div>
                    </div>
                   
                </ItemTemplate>

                             
        </asp:Repeater><!--Reapeater control ends-->
   
        </div></div>
        <!--Design ends-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
