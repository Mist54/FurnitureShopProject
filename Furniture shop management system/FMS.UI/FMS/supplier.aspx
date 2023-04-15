<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="supplier.aspx.cs" Inherits="FMS.supplier" %>
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
                <div class="card-header" style= "background-color:#e4ea17;">
                  <h2  class="card-title" style=" text-align:center"><strong><b>Supplier Detail</b></strong></h2>
                </div>
                <div class="card-body"  style="background-color:rgb(152 236 122 / 0.85)">
                    <div class="row">
                        <div class="col-md-6">
                            <asp:Label ID="Label1" runat="server" Text="Supplier ID" Width="100px"></asp:Label>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Eg.1234..." autofocus="" TextMode="Number"></asp:TextBox>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter only numbers" ValidationExpression="^\d+" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="Label2" runat="server" Text="Supplier name" Width="150px"></asp:Label>
                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"  autofocus="" ></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Enter only Character" CssClass="text-danger" ControlToValidate="TextBox2" ValidationExpression="^[A-Za-z ]+$"></asp:RegularExpressionValidator>
                            <br />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                             <asp:Label ID="Label3" runat="server" Text="Contact NO." Width="150px"></asp:Label>
                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Eg.1245...(10)" autofocus="" AutoPostBack="True" OnTextChanged="TextBox3_TextChanged" TextMode="Phone" ></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter valid phone number" ValidationExpression="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="Label4" runat="server" Text="Email address" Width="150px"></asp:Label>
                            <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Eg.www.example@gmail.com" autofocus="" TextMode="Email" ></asp:TextBox>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please enter valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator><br />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                             <asp:Label ID="Label5" runat="server" Text="Postal address" Width="150px"></asp:Label>
                            <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="colony name,street name,place,state" autofocus="" ></asp:TextBox><br />

                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="Label6" runat="server" Text="Pincode" Width="150px"></asp:Label>
                            <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeholder="Eg.4421...(6)" autofocus="" TextMode="Number" ></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Please enter valid pin code" ValidationExpression="^[1-9][0-9]{5}$" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="row">
                    <div class="col-md-6">
                        <asp:Label ID="Label7" runat="server" Text="Company" Width="150px"></asp:Label>
                         <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" placeholder="" autofocus=""></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Enter only Character" CssClass="text-danger" ControlToValidate="TextBox7" ValidationExpression="^[A-Za-z ]+$"></asp:RegularExpressionValidator>
                    </div>
                        <div class="row">
                        <div class="col-12">
                            &nbsp;
                        </div></div> 
                        <div class="row">
                        <div class="col-md-12">
                            <asp:Button ID="Button1" runat="server" Text="Save" CssClass=" btn btn-success" width="150px" OnClick="Button1_Click" data-toggle="tooltip" data-placement="top" title="Save the given data"/>
                            <asp:Button ID="Button2" runat="server" Text="Delete" CssClass=" btn btn-danger" width="150px"  OnClick="Button2_Click"  data-toggle="tooltip" data-placement="top" title="Delete the specified data" />
                            <asp:Button ID="Button6" runat="server" Text="Search" CssClass=" btn btn-info" width="150px" OnClick="Button6_Click1"  data-toggle="tooltip" data-placement="top" title="Search the specified data" />
                            <asp:Button ID="Button3" runat="server" Text="Update" CssClass=" btn btn-warning" width="150px" OnClick="Button3_Click"  data-toggle="tooltip" data-placement="top" title="Update/Make the changes"/>
                            <asp:Button ID="Button4" runat="server" Text="View all" CssClass=" btn btn-dark" width="150px"  OnClick="Button4_Click"  data-toggle="tooltip" data-placement="top" title="Displays all the data"/>
                            <asp:Button ID="Button5" runat="server" Text="Reset" CssClass=" btn btn-light"   width="150px" OnClick="Button5_Click"  data-toggle="tooltip" data-placement="top" title="Reset the entaire form"/>
                           
                        </div>
                            
                        </div>
                    </div>
                     <div class="row">
                        <div class="col-12">
                            &nbsp;
                        </div></div> 
                  
                     <div class="row">
                        <div class="col-12">
                            <asp:Panel ID="Panel1" runat="server">
                                 <div style="width: 100%; height: 400px; overflow: scroll">
                                     <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" Cssclass="table table-bordered border-dark table-responsive  table-hover table-b" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                                         <Columns>
                                             <asp:BoundField DataField="supplierid" HeaderText="Supplier ID" />
                                             <asp:BoundField DataField="suppliername" HeaderText="Supplier Name" />
                                             <asp:BoundField DataField="number" HeaderText="Contact No" />
                                             <asp:BoundField DataField="email" HeaderText="Email Address" />
                                             <asp:BoundField DataField="address" HeaderText="Postal Address" />
                                             <asp:BoundField DataField="pincode" HeaderText="Pincode" />
                                             <asp:BoundField DataField="company" HeaderText="Company" />
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
                                     </asp:GridView>


                                     </div>
                            </asp:Panel>
                            &nbsp;
                        </div></div> 


                </div>
            <div class="card-footer">
                <div class="row">
                    <div class="col-md-12">
                        <div class="alert alert-warning">
                            <p> This form is for Saving Updating and deleting records of suppliers </p>
                             <p><b>Please read above info carefully and fill all the records </b></p> 
                            <p class=" link-dark mark"data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample"> For more click here </p>
                            
   
                        <div class="collapse" id="collapseExample">
                        <div class="card card-body bg-info">
                            This form is used to store supplier information.We can store and modify records related to supplier information.All the records will be stored in the database
  </div>
</div>
                    </div>
                </div>
            </div>
        </div>

        </div>

            
        
                      


                    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
  <script>
$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})
  </script>
</asp:Content>
