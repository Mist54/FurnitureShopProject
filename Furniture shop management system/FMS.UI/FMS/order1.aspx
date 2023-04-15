<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="order1.aspx.cs" Inherits="FMS.order1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <style>
        body{
            background: url(image/homeback.jpg);

        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <style>
                .card {
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
        <div class="container">
    <div class="card text-dark" >
                <div class="card-header bg-warning" style="text-align:center">
                  <h2><b>Order Details</b> </h2>
                </div>
                <div class="card-body"  style="background-color:#bdf6b6">
                    <div class="row">
                        <div class="col-md-6">
                             <asp:Label ID="Label3" runat="server" Text="Conatct NO." Width="100px"></asp:Label>
                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Eg.98554...(10) " autofocus="" AutoPostBack="True" OnTextChanged="TextBox3_TextChanged" TextMode="Phone"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter valid phone number" ValidationExpression="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$" ForeColor="Red"></asp:RegularExpressionValidator>
                                
                              </div>
                        <div class="col-md-6">
                             <asp:Label ID="Label1" runat="server" Text="Order ID" Width="150px"></asp:Label>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Eg.1234..." autofocus="" TextMode="Number"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ErrorMessage="Enter only letters" ControlToValidate="TextBox2" CssClass="text-danger" ValidationExpression="^[a-zA-Z ]+$"></asp:RegularExpressionValidator>
                     
                            </div>
                    </div>

                    
                    <div class="row">
                        <div class="col-md-6 ">
                          <asp:Label ID="Label2" runat="server" Text="Customer name"  Width="150px"></asp:Label>
                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="" autofocus=""></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter only letters" ControlToValidate="TextBox2" CssClass="text-danger" ValidationExpression="^[a-zA-Z ]+$"></asp:RegularExpressionValidator>
                        

                          </div>
                        <div class="col-md-6">
                             <asp:Label ID="Label10" runat="server" Text=" Postal address" Width="150px"></asp:Label>
                             <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Colony place name road pincode state " autofocus=""></asp:TextBox>
                        </div>
                        </div>
                     <div class="row">
                        <div class="col-md-6 ">
                            <asp:Label ID="Label4" runat="server" Text="Pincode" Width="150px"></asp:Label>
                            <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Eg.2223.. (6)" autofocus="" TextMode="Number"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please enter valid pin code" ValidationExpression="^[1-9][0-9]{5}$" ForeColor="Red"></asp:RegularExpressionValidator>
                         
                          </div>
                            <div class="col-md-6" >
                                 <asp:Label ID="Label5" runat="server" Text="Item ID" Width="100px"></asp:Label>
                                <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeholder="Eg.1234... " autofocus="" TextMode="Number" AutoPostBack="True" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>      
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter only number" ValidationExpression="^\d+" ForeColor="Red"></asp:RegularExpressionValidator>
                              </div>
                        </div>
                      <div class="row">
                        <div class="col-md-6 ">
                             <asp:Label ID="Label6" runat="server" Text="Item name" Width="100px"></asp:Label>
                             <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" placeholder="" autofocus=""></asp:TextBox>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Enter only letters" ControlToValidate="TextBox7" CssClass="text-danger" ValidationExpression="^[a-zA-Z ]+$"></asp:RegularExpressionValidator>
                           </div>
                            <div class="col-md-6" >
                                <asp:Label ID="Label7" runat="server" Text="Item price"  Width="150px"></asp:Label>
                                 <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" placeholder=" " autofocus="" TextMode="Number"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox8" ErrorMessage="Enter only number" ValidationExpression="^\d+" ForeColor="Red"></asp:RegularExpressionValidator>
                             
                                </div>
                        </div>
                      <div class="row">
                        <div class="col-md-6 ">
                            <asp:Label ID="Label8" runat="server" Text="Tranport fees"  Width="150px"></asp:Label>
                          <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" placeholder="" autofocus="" TextMode="Number"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox9" ErrorMessage="Enter only number" ValidationExpression="^\d+" ForeColor="Red"></asp:RegularExpressionValidator>
                                
                          </div>
                            <div class="col-md-6" >
                                        <asp:Label ID="Label9" runat="server" Text="Order staus"  Width="150px"></asp:Label>
                                        <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server"  autofocus=""></asp:TextBox>
                             
                                </div>
                        </div>
                    <div class="row">
                        <div class="col-md-2">
                            &nbsp;
                        </div>
                    <div class="row">
                    <div class="col-md-6">
                                <asp:Button ID="Button7" runat="server"  Width="130px" CssClass="btn  btn-outline-success" OnClick="Button7_Click" />
                                &nbsp;<asp:Button ID="Button8" runat="server" Width="130px" CssClass="btn btn-outline-danger"   OnClick="Button8_Click" /><br /></div>
                         <div class="col-md-6">
                                &nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Text="Save" CssClass=" btn btn-success" Width="120px" OnClick="Button1_Click" />
                            &nbsp;&nbsp;<asp:Button ID="Button6" runat="server" Text="Search" CssClass=" btn  btn-warning"  Width="120px" OnClick="Button6_Click"  />
                            &nbsp;<asp:Button ID="Button4" runat="server" Text="View all" CssClass=" btn btn-dark"  Width="120px" OnClick="Button4_Click"  />
                            &nbsp;<asp:Button ID="Button5" runat="server" Text="Reset" CssClass=" btn btn-light"  Width="120px" OnClick="Button5_Click" />
                                <asp:Button ID="Button2" runat="server" Text="Logout" CssClass=" fa fa-sign-out btn btn-outline-secondary" OnClick="Button2_Click"  />
                         </div>
                      
                          

                    </div>
                    <div class="row">
                        <div class="col-md-2">
                            &nbsp;
                        </div>
                    <div class="row">
                            <div class="col-lg-12">
                                 <asp:Panel ID="Panel1" runat="server">
                             <div style="width: 100%; height: 400px; overflow: scroll">
                                 <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-responsive table-bordered border-dark" AutoGenerateColumns="False">
                                     <Columns>
                                <asp:BoundField DataField="costomerid" HeaderText="Costomer ID" />
                                <asp:BoundField DataField="costomername" HeaderText="Costomer name" />
                                <asp:BoundField DataField="phone" HeaderText="Phone NO." />
                                <asp:BoundField DataField="address" HeaderText="Address" />
                                <asp:BoundField DataField="itemid" HeaderText="Item ID" />
                                <asp:BoundField DataField="itemname" HeaderText="Item Name" />
                                <asp:BoundField DataField="price" HeaderText="Item Price" />
                                <asp:BoundField DataField="fees" HeaderText="Tranport Fees" />
                                <asp:BoundField DataField="status" HeaderText="Status" />
                            </Columns>
                            <EditRowStyle BorderColor="#FFFF66" />
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                            <PagerStyle ForeColor="#330099" HorizontalAlign="Center" BackColor="#FFFFCC" />
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <SortedAscendingCellStyle BackColor="#FEFCEB" />
                            <SortedAscendingHeaderStyle BackColor="#AF0101" />
                            <SortedDescendingCellStyle BackColor="#F6F0C0" />
                            <SortedDescendingHeaderStyle BackColor="#7E0000" />
                                 </asp:GridView>

                                 </div>
                       
                    </asp:Panel>

                            </div>
                    </div>
                                </div></div>
                     <div class="row">
            <div class="col-md-12">
                &nbsp;
            </div>
        </div>
         
                    <div class="row">
            <div class="col-md-12">
                <a href="sell1.aspx">Want to go-to billing section CLICK HERE!!</a>
            </div>
        </div>
                </div>
        <div class="row">
            <div class="col-md-12">
                &nbsp;
            </div>
        </div>
         
            <div class="card-footer">
                <div class="alert-warning">
                    <p>This is the order for used to take Order from the Costomers</p>
                    <p><b>Please read above info carefully and fill all the records </b></p>
                </div>
            </div>
        </div>
                         
     </div>
    </form>
</body>
</html>
