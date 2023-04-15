<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="stock2.aspx.cs" Inherits="FMS.stock2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
      <style>
        body{
            background: url(image/homeback.jpg);
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        
        .card{
             border-top-left-radius: 8px;
            border-bottom-left-radius: 8px;
            border-bottom-right-radius: 8px;
            border-top-right-radius: 8px;
            border-radius: 8px;
        }
    </style>

                     <div class="row">
                        <div class="col-12">
                            &nbsp;
                        </div></div> <br />
        <div class="card text-dark" >
                <div class="card-header bg-warning" style="text-align:center">
                  <h2><b>Stocks Detail</b> </h2>
                </div>
                <div class="card-body"  style="background-color:#bdf6b6">

                    <div class="row">
                        <div class="col-md-4 ">
                            <asp:Label ID="Label1" runat="server" Text="Product ID" Width="150px"></asp:Label>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Eg.1234...." autofocus=""></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter only numbers" ValidationExpression="^\d+" ForeColor="Red"></asp:RegularExpressionValidator><br />
                               
                          </div>
                            <div class="col-md-4" >
                                 <asp:Label ID="Label2" runat="server" Text="Product name"  Width="150px"></asp:Label>
                                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="" autofocus=""></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Enter only letters" ControlToValidate="TextBox2" CssClass="text-danger" ValidationExpression="^[a-zA-Z ]+$"></asp:RegularExpressionValidator>
                             </div>
                        <div class="col-md-4">
                             <asp:Label ID="Label3" runat="server" Text="Company" Width="100px"></asp:Label>
                             <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder=" " autofocus=""></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Enter only letters" ControlToValidate="TextBox3" CssClass="text-danger" ValidationExpression="^[a-zA-Z ]+$"></asp:RegularExpressionValidator><br />
                        </div>
                        </div>
                    <div class="row">
                        <div class="col-md-4 ">
                            <asp:Label ID="Label4" runat="server" Text="Supplier name" Width="150px"></asp:Label>
                             <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="" autofocus=""></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Enter only letters" ControlToValidate="TextBox4" CssClass="text-danger" ValidationExpression="^[a-zA-Z ]+$"></asp:RegularExpressionValidator><br />
                          </div>
                            <div class="col-md-4" >
                              <asp:Label ID="Label5" runat="server" Text=" Item category" Width="100px"></asp:Label>
                                  <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder=" " autofocus=""></asp:TextBox>
                                </div>
                         <div class="col-md-4" >
                             <asp:Label ID="Label6" runat="server" Text="Item QTY" Width="100px"></asp:Label>
                             <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeholder="" autofocus=""></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox6" ErrorMessage="Please enter only numbers" ValidationExpression="^\d+" ForeColor="Red"></asp:RegularExpressionValidator><br />
                                
                                </div>
                        </div>
                    <div class="row">
                        <div class="col-md-4">
                            <asp:Label ID="Label7" runat="server" Text=" Item Meterial"  Width="150px"></asp:Label>
                          <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" placeholder="" autofocus=""></asp:TextBox><br />
                                
                        </div>
                            <div class="col-md-2" >
                                <asp:Label ID="Label8" runat="server" Text="Item Color"  Width="150px"></asp:Label>
                                 <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" placeholder="" autofocus="" TextMode="Color"></asp:TextBox><br />
                            </div>
                        <div class="col-md-2 ">
                             <asp:Label ID="Label9" runat="server" Text="Item Price"  Width="150px"></asp:Label>
                            <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" placeholder="" autofocus=""></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox9" ErrorMessage="Please enter only numbers" ValidationExpression="^\d+" ForeColor="Red"></asp:RegularExpressionValidator><br />
                               
                          </div>
                         <div class="col-md-4">
                             <asp:Label ID="Label10" runat="server" Text="Item Discount"  Width="150px"></asp:Label>
                            <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" placeholder="" autofocus="" TextMode="Number"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox10" ErrorMessage="Please enter only numbers" ValidationExpression="^\d+" ForeColor="Red"></asp:RegularExpressionValidator><br />
                               
                          </div>
                    </div>
                    <div class="row">
                     <div class="col-md-2 ">
                           &nbsp;
                            
                          </div>
                        <div class=" col-md-8">
                             &nbsp;<asp:Button ID="Button2" runat="server" Text="Search" CssClass=" btn btn-info" Width="130px" OnClick="Button2_Click" />
                             &nbsp;<asp:Button ID="Button3" runat="server" Text="Update" CssClass=" btn btn-warning" Width="130px" OnClick="Button3_Click" />
                             &nbsp;<asp:Button ID="Button4" runat="server" Text="Delete" CssClass=" btn btn-danger" Width="130px" OnClick="Button4_Click" />
                            &nbsp;<asp:Button ID="Button1" runat="server" Text="View all" CssClass=" btn btn-dark" Width="130px" OnClick="Button1_Click" />&nbsp;
                            <asp:Button ID="Button5" runat="server" Text="Reset" CssClass=" btn btn-light"  Width="130px" OnClick="Button5_Click"  />
                      &nbsp;<asp:Button ID="Button6" runat="server" Text="Home" CssClass="btn btn-secondary"  Width="130px" OnClick="Button6_Click"  />
                             <br />
                             <br />
                             <br /></div>
                            <div class="row">
                                <div class="col-md-12">
                                      <asp:Panel ID="Panel1" runat="server">
                            <div style="width: 100%; height: 400px; overflow: scroll">
                             <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="table table-responsive table-hover table-bordered border-dark">
                                 <Columns>
                                     <asp:BoundField DataField="productid" HeaderText="Product ID" />
                                     <asp:BoundField DataField="productname" HeaderText="Product name" />
                                     <asp:BoundField DataField="company" HeaderText="Company name" />
                                     <asp:BoundField DataField="suppliername" HeaderText="Supplier name" />
                                     <asp:BoundField DataField="catogory" HeaderText="Catogory" />
                                     <asp:BoundField DataField="qty" HeaderText="QTY" />
                                     <asp:BoundField DataField="material" HeaderText="Material" />
                                     <asp:BoundField DataField="colour" HeaderText="Color" />
                                     <asp:BoundField DataField="price" HeaderText="Price" />
                                     <asp:BoundField DataField="Discount" HeaderText="discount" />
                                     <asp:HyperLinkField DataNavigateUrlFields="image" HeaderText="Product image" Target="_blank" Text="Image" />
                                 </Columns>
                                 <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                 <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                 <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                 <RowStyle BackColor="White" ForeColor="#330099" />
                                 <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                 <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                 <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                 <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                 <SortedDescendingHeaderStyle BackColor="#7E0000" />
                             </asp:GridView></div></asp:Panel>
                        </div>
                    
                      <br /><br /></div></div></div>

                    <div class="card-footer">
                <div class="alert-warning">
                    <p>This form used for <i>to view the Stocks  </i> employee details</p>
                    <p><b>Please read above info carefully and fill all the records </b></p>
 <p class=" link-dark mark"data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample"> For more click here </p>
                            
   
                        <div class="collapse" id="collapseExample">
                        <div class="card card-body bg-info">
                            This form is used to store stocks and inventory information.We can store and modify records related to inventory.All the records will be stored in the database. All the inventory can be managed
  </div>
</div>
                </div>
            </div>
                                </div>

                          

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
