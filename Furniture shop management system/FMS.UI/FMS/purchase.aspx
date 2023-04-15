<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="purchase.aspx.cs" Inherits="FMS.purchase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
     <style>
        body{
            background: url(image/homeback.jpg);
        }
    </style>      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
                        <div class="col-12">
                            &nbsp;
                        </div></div> <br />
    <div class="card">
        <div class="card-header bg-warning" >
            <h2 style="text-align:center"><b>Purchase details and Stock  </b></h2>
        </div>
        <div class="card-body" style="background-color:#bdf6b6">
            <div class=" row">
                <div class="col-md-12">
                    &nbsp;
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <asp:Label ID="Label1" runat="server" Text="Product ID" ></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Eg.1234..." TextMode="Number"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter only number" ValidationExpression="^\d+" ForeColor="Red"></asp:RegularExpressionValidator>
                </div>
                <div class="col-md-6">
                    <asp:Label ID="Label2" runat="server" Text="Product name "></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="" ></asp:TextBox>
                </div>
                </div>
            <div class="row">
                <div class="col-md-6">
                    <asp:Label ID="Label3" runat="server" Text="Supplier name "></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="" ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Enter only letters" ControlToValidate="TextBox3" CssClass="text-danger" ValidationExpression="^[a-zA-Z ]+$"></asp:RegularExpressionValidator>

                </div>
                <div class="col-md-6">
                    <asp:Label ID="Label4" runat="server" Text="Company name "></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="" ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="Enter only letters" ControlToValidate="TextBox4" CssClass="text-danger" ValidationExpression="^[a-zA-Z ]+$"></asp:RegularExpressionValidator>

                </div>
            </div>
             <div class="row">
                <div class="col-md-6">
                    <asp:Label ID="Label5" runat="server" Text="Conatct No "></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="98665..(10)" TextMode="Phone" ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please enter valid phone number" ValidationExpression="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$" ForeColor="Red"></asp:RegularExpressionValidator>

                </div>
                <div class="col-md-6">
                    <asp:Label ID="Label6" runat="server" Text="Postal address "></asp:Label>
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="" ></asp:TextBox>

                </div>
            </div>
             <div class="row">
                <div class="col-md-6">
                    <asp:Label ID="Label7" runat="server" Text="Date of delivary"></asp:Label>
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" placeholder="5 Jan 2000" TextMode="Date" ></asp:TextBox>

                </div>
                <div class="col-md-6">
                    <asp:Label ID="Label8" runat="server" Text="Pincode"></asp:Label>
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" placeholder="5443..(6)" TextMode="Number" ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox8" ErrorMessage="Please enter valid pin code" ValidationExpression="^[1-9][0-9]{5}$" ForeColor="Red"></asp:RegularExpressionValidator>

                </div>
            </div>

             <div class="row">
                <div class="col-md-6">
                    <asp:Label ID="Label13" runat="server" Text="Product material"></asp:Label>
                    <asp:TextBox ID="TextBox13" runat="server" CssClass="form-control" placeholder="" ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ErrorMessage="Enter only letters" ControlToValidate="TextBox13" CssClass="text-danger" ValidationExpression="^[a-zA-Z ]+$"></asp:RegularExpressionValidator>

                </div>
                <div class="col-md-6">
                    <asp:Label ID="Label14" runat="server" Text="Product image"></asp:Label>
                    <asp:FileUpload ID="FileUpload1" runat="server" cssclass="form-control"/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Select product image" ControlToValidate="FileUpload1" CssClass="text-danger"></asp:RequiredFieldValidator>

                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="Label9" runat="server" Text="Category"></asp:Label>
                    <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" placeholder="" ></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="Label10" runat="server" Text=" Product QTY"></asp:Label>
                    <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control" placeholder="" TextMode="Number" ></asp:TextBox>
                </div>
                <div class="col-md-2">
                    <asp:Label ID="Label11" runat="server" Text=" Product Color"></asp:Label>
                    <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control" placeholder="" TextMode="Color" ></asp:TextBox>
                </div>
                <div class="col-md-2">
                    <asp:Label ID="Label12" runat="server" Text=" Product price"></asp:Label>
                    <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control" placeholder="" TextMode="Number" ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox12" ErrorMessage="Enter only number" ValidationExpression="^\d+" ForeColor="Red"></asp:RegularExpressionValidator>
                </div>
                  <div class="col-md-2">
                    <asp:Label ID="Label15" runat="server" Text=" Product Discount"></asp:Label>
                    <asp:TextBox ID="TextBox14" runat="server" CssClass="form-control" placeholder="" TextMode="Number" ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox14" ErrorMessage="Enter only number" ValidationExpression="^\d+" ForeColor="Red"></asp:RegularExpressionValidator>
                </div>
            </div>       
            
                    <div class="row">                    
                        <div class="col-md-8">
                                <br />
                                <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="Save" type="button" Width="140px" OnClick="Button1_Click" />
                                &nbsp;<asp:Button ID="Button3" runat="server" class="btn btn-dark"   type="button" Width="140px" Text="Reset" OnClick="Button3_Click"  />
                                &nbsp;<asp:Button ID="Button4" runat="server" type="button" class="btn btn-info" Text="View all" Width="140px" OnClick="Button4_Click" />
                    </div></div><br />
                    <div class=" row">
                <div class="col-md-12">
                    &nbsp;
                </div>
            </div>
            <asp:Panel ID="Panel1" runat="server">
                <div style="width: 100%; height: 400px; overflow: scroll">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" AllowSorting="True" AutoGenerateColumns="False" CssClass="table table-borderd table-hover table-responsive">

                    <Columns>
                        <asp:BoundField DataField="productid" HeaderText="Product ID" />
                        <asp:BoundField DataField="productname" HeaderText="Product name" />
                        <asp:BoundField DataField="company" HeaderText="Company" />
                        <asp:BoundField DataField="suppliername" HeaderText="Supplier" />
                        <asp:BoundField DataField="phone" HeaderText="Phone No" />
                        <asp:BoundField DataField="address" HeaderText="Address" />
                        <asp:BoundField DataField="pincode" HeaderText="Pincode" />
                        <asp:BoundField DataField="catogory" HeaderText="Catogory" />
                        <asp:BoundField DataField="qty" HeaderText="Qty" />
                        <asp:BoundField DataField="material" HeaderText="Material" />
                        <asp:BoundField DataField="colour" HeaderText="Colour" />
                        <asp:BoundField DataField="price" HeaderText="Price/set" />
                        <asp:BoundField DataField="date" HeaderText="Date of delivary" />

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

                </asp:GridView></div>
            </asp:Panel>
             </div><div class="card-footer">
                <div class="row">
                    <div class="col-md-12">
                        <div class="alert alert-warning">
                            <p> This form is for <i>saving  the details of new stocks</i></p>
                             <p><b>Please read above info carefully and fill all the records </b></p>
                             <p class=" link-dark mark"data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample"> For more click here </p>
                            
   
                        <div class="collapse" id="collapseExample">
                        <div class="card card-body bg-info">
                            This form is used to store purchased item information.We can store only info related to purchased goods.All the records will be stored in the database<br />
                            Notice: make sure to add only info of goods that already been purchased
  </div>
</div>
                        </div>
                    </div>
                </div>
      
            </div></div>
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
