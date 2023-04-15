<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="addproduct.aspx.cs" Inherits="FMS.WebForm1" %>
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
        <div class="card text-dark" >
                <div class="card-header" style= "background-color:#e4ea17; text-align:center">
                  <h2><b>Add product online</b> </h2>
                </div>
                <div class="card-body" style="background-color:rgb(152 236 122 / 0.85)">
                     <div class=" row">
                <div class="col-md-12">
                    &nbsp;
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <asp:Label ID="Label1" runat="server" Text="Product ID" ></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Eg.1234..." TextMode="Number"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <asp:Label ID="Label2" runat="server" Text="Product name "></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="" ></asp:TextBox>
                </div>
                </div>
            <div class="row">
                <div class="col-md-6">
                    <asp:Label ID="Label3" runat="server" Text="Brand/Company"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="" ></asp:TextBox>

                </div>
                <div class="col-md-6">
                    <asp:Label ID="Label4" runat="server" Text="Size and weight"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="100 X 100 100KG" ></asp:TextBox>

                </div>
            </div>        
             <div class="row">
                <div class="col-md-6">
                    <asp:Label ID="Label5" runat="server" Text="Product material"></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="" ></asp:TextBox>

                </div>
                 <div class="col-md-3">
                    <asp:Label ID="Label6" runat="server" Text="Category"></asp:Label>
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="" ></asp:TextBox>
                </div>
                   <div class="col-md-3">
                    <asp:Label ID="Label7" runat="server" Text=" Product QTY"></asp:Label>
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" placeholder="" TextMode="Number" ></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="Label8" runat="server" Text=" Product Color"></asp:Label>
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" placeholder="" ></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="Label9" runat="server" Text=" Product price"></asp:Label>
                    <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" placeholder="" ></asp:TextBox>
                </div>
                 <div class="col-md-3">
                    <asp:Label ID="Label11" runat="server" Text="Selling price"></asp:Label>
                    <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control" placeholder="" TextMode="Number" ></asp:TextBox>
                </div>
                  <div class="col-md-3">
                    <asp:Label ID="Label10" runat="server" Text="Product image"></asp:Label>
                    <asp:FileUpload ID="FileUpload1" runat="server" cssclass="form-control"/>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Choose the product image" CssClass="text-danger" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
                 </div>
                <div class="row">
                   
                </div>
                <div class="row">
                    <div class="col-md-12">
                          <asp:Label ID="Labe11" runat="server" Text=" Product Discription"></asp:Label>
                         <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control" placeholder="" TextMode="MultiLine" ></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                          <asp:Label ID="Label16" runat="server" Text="Key Features"></asp:Label>
                         <asp:TextBox ID="TextBox15" runat="server" CssClass="form-control" placeholder="" TextMode="MultiLine" ></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                          <asp:Label ID="Label17" runat="server" Text="Safety measures"></asp:Label>
                         <asp:TextBox ID="TextBox16" runat="server" CssClass="form-control" placeholder="" TextMode="MultiLine" ></asp:TextBox>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-md-4">
                             <asp:Label ID="Label12" runat="server" Text=" Delivary Charge"></asp:Label>
                             <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control" placeholder="" TextMode="Number" ></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                       <asp:Label ID="Label13" runat="server" Text="Payment mode"></asp:Label>
                             <asp:TextBox ID="TextBox13" runat="server" CssClass="form-control" placeholder="" ></asp:TextBox>
                    </div>
                     <div class="col-md-4">
                       <asp:Label ID="Label14" runat="server" Text="Return mode"></asp:Label>
                             <asp:TextBox ID="TextBox14" runat="server" CssClass="form-control" placeholder="" ></asp:TextBox>
                    
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <asp:Label ID="Label15" runat="server" Text="Images for product"></asp:Label><br />
                        <asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please select the image" ControlToValidate="FileUpload2" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                     <div class="row">
                    <div class="col-md-12">
                        
                        <asp:FileUpload ID="FileUpload3" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please select the image" ControlToValidate="FileUpload2" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                 <div class="row">
                    <div class="col-md-12">
                        
                        <asp:FileUpload ID="FileUpload4" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please select the image" ControlToValidate="FileUpload2" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                 <div class="row">
                    <div class="col-md-12">
                        
                        <asp:FileUpload ID="FileUpload5" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please select the image" ControlToValidate="FileUpload2" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                        <div class="col-12">
                            
                            &nbsp;
                        </div></div> <br />
                <div class="row">
                    <div class="col-md-12">
                        <asp:Button ID="Button1" runat="server" Text="Add Product" CssClass="btn btn-success btn-lg" OnClick="Button1_Click" />
                    &nbsp;</div>
                </div>
            </div>       
                </div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
