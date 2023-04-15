<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="employee.aspx.cs" Inherits="FMS.employee" %>
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
                <div class="card-header" style= "background-color:#e4ea17; text-align:center">
                  <h2><b>Employee Detail</b> </h2>
                </div>
                <div class="card-body" style="background-color:rgb(152 236 122 / 0.85)">

                    <div class="row">
                        <div class="col-md-4 ">
                            <asp:Label ID="Label1" runat="server" Text="Employee ID" Width="150px"></asp:Label>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Eg.123..." autofocus="" TextMode="Search"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter only number" ValidationExpression="^\d+" ForeColor="Red"></asp:RegularExpressionValidator>
                          </div>
                            <div class="col-md-4" >
                                 <asp:Label ID="Label2" runat="server" Text="Employee name"  Width="150px"></asp:Label>
                                 <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="" autofocus=""></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Enter only Character" CssClass="text-danger" ControlToValidate="TextBox2" ValidationExpression="^[A-Za-z ]+$"></asp:RegularExpressionValidator>
                                </div>
                        <div class="col-md-4 ">
                             <asp:Label ID="Label3" runat="server" Text="Date of Birth" Width="100px"></asp:Label>
                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Eg.2 Jan 2020 " autofocus="" TextMode="Date"></asp:TextBox>
                           
                          </div></div>
                         <div class="row">
                            <div class="col-md-4" >
                                 <asp:Label ID="Label4" runat="server" Text="Date of Joining" Width="150px"></asp:Label>
                                 <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Eg.2 Jan 2020 " autofocus="" TextMode="Date"></asp:TextBox>
                                 <br />
                           
                                </div>
                        <div class="col-md-4">
                            <asp:Label ID="Label5" runat="server" Text="Contact NO." Width="100px"></asp:Label>
                           <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Eg.98774....(10) " autofocus="" AutoPostBack="True" OnTextChanged="TextBox5_TextChanged" TextMode="Phone"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please enter valid phone number" ValidationExpression="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$" ForeColor="Red"></asp:RegularExpressionValidator><br />
                                </div>
                            <div class="col-md-4" >
                                 <asp:Label ID="Label6" runat="server" Text="Email address" Width="100px"></asp:Label>
                                 <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeholder="Eg.www.example@gmail.com " autofocus="" TextMode="Email"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox6" ErrorMessage="Please enter valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator><br />
                                </div></div>
                     <div class="row">
                        <div class="col-md-8">
                            <asp:Label ID="Label7" runat="server" Text="Postal address"  Width="150px"></asp:Label>
                             <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" placeholder="Eg.Apartment name, street, district, place name,state etc " autofocus=""></asp:TextBox><br />
                           
                          </div>
                            <div class="col-md-4" >
                                <asp:Label ID="Label8" runat="server" Text="Designation"  Width="150px"></asp:Label>
                                <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" placeholder="Eg.Worker,attender,clener etc " autofocus=""></asp:TextBox><br />
                           
                                </div>
                        </div>
                      <div class="row">
                        <div class="col-md-4 ">
                             <asp:Label ID="Label9" runat="server" Text="Salary"  Width="150px"></asp:Label>
                            <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" placeholder="Eg.20000,50000 " autofocus="" TextMode="Number"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox9" ErrorMessage="Please enter only numbers" ValidationExpression="^\d+" ForeColor="Red"></asp:RegularExpressionValidator><br />
                            
                          </div>
                            <div class="col-md-4" >
                                <asp:Label ID="Label10" runat="server" Text="Aadhar number"  Width="150px"></asp:Label>
                                 <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" placeholder="Eg.3343 4432 6544(12) " autofocus="" AutoPostBack="True" OnTextChanged="TextBox10_TextChanged"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox10" ErrorMessage="enter valid addhar numbers" ValidationExpression="^\d{4}\s\d{4}\s\d{4}$" ForeColor="Red"></asp:RegularExpressionValidator><br />
                                </div>
                           
                        </div>
                     
                    <div class="row">
                       
                        <div class="col-md-4">
                     &nbsp;<asp:Button ID="Button1" runat="server" Text="Save" CssClass=" btn btn-success" Width="120px" OnClick="Button1_Click" />
                    &nbsp;<asp:Button ID="Button2" runat="server" Text="Delete" CssClass=" btn btn-danger"  Width="120px" OnClick="Button2_Click"  />
                    &nbsp;<asp:Button ID="Button6" runat="server" Text="Search" CssClass="btn btn-info"  Width="120px" OnClick="Button6_Click"  /></div>
                        <div class="col-md-4">
                    &nbsp;<asp:Button ID="Button3" runat="server" Text="Update" CssClass="btn btn-warning"  Width="120px" OnClick="Button3_Click"/>
                    &nbsp;<asp:Button ID="Button4" runat="server" Text="View all" CssClass="btn btn-dark"  Width="120px" OnClick="Button4_Click" />
                    &nbsp;<asp:Button ID="Button5" runat="server" Text="Reset" CssClass="btn btn-light"  Width="120px" OnClick="Button5_Click" />
                      </div>
                        
                    </div><br /><br />
                     <div class="row">
                        <div class="col-12">
                            <asp:Panel ID="Panel1" runat="server">
                                 <div style="width: 100%; height: 400px; overflow: scroll">
                                     <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="table table-hover table-bordered border-dark">
                                         <Columns>
                                             <asp:BoundField DataField="employeeid" HeaderText="Employee ID" />
                                             <asp:BoundField DataField="name" HeaderText="Employee name" />
                                             <asp:BoundField DataField="dob" HeaderText="Date of Birth" />
                                             <asp:BoundField DataField="doj" HeaderText="Date of Joining" />
                                             <asp:BoundField DataField="phone" HeaderText="PhoneNO" />
                                             <asp:BoundField DataField="address" HeaderText="Postal address" />
                                             <asp:BoundField DataField="email" HeaderText="Email address" />
                                             <asp:BoundField DataField="designation" HeaderText="Designation" />
                                             <asp:BoundField DataField="addharnumber" HeaderText="AddharNO" />
                                             <asp:BoundField DataField="salary" HeaderText="Salary" />
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
                              
                        </div>
                           
                     </div>
                 
                </div> <div class="card-footer">
                <div class="alert-warning">
                    <p>This form used for <i>saving deleting and viewing </i> employee details</p>
                    <p><b>Please read above info carefully and fill all the records </b></p>
                     <p class=" link-dark mark"data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample"> For more click here </p>
                            
   
                        <div class="collapse" id="collapseExample">
                        <div class="card card-body bg-info">
                            This form is used to store employee information.We can store and modify records related to employee.All the records will be stored in the database
  </div>
</div>
                </div>
                   
            </div>
            
        </div> <br /><br /> <br /><br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
   
</asp:Content>
