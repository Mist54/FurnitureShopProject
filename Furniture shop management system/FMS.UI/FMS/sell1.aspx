<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sell1.aspx.cs" Inherits="FMS.sell1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
    <style>
        body{
            background: url(image/homeback.jpg);
        }
        .card {
                    border-top-left-radius: 8px;
                    border-bottom-left-radius: 8px;
                    border-bottom-right-radius: 8px;
                    border-top-right-radius: 8px;
                    border-radius: 8px;
                }

    </style>    
</head>
<body>
    <form id="form1" runat="server">
         <div class="row">
                        <div class="col-12">
                            &nbsp;
                        </div></div> <br />
    <div class="card">
        <div class="card-header bg-warning" >
            <h2 style="text-align:center"><b> Purchase and billing </b></h2>
        </div>
       <div class="card-body" style="background-color:#bdf6b6">
           <div class="row">
               <div class="col-md-3">
                    <asp:Label ID="Label2" runat="server" Text="Conatct No. "></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Eg.98664...(10)." AutoPostBack="True" OnTextChanged="TextBox2_TextChanged" TextMode="Phone"></asp:TextBox>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter valid phone number" ValidationExpression="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$" ForeColor="Red"></asp:RegularExpressionValidator>
               </div>
               <div class="col-md-3">
                         <asp:Label ID="Label5" runat="server" Text="Customer ID" ></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="" TextMode="Number"></asp:TextBox>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter only number" ValidationExpression="^\d+" ForeColor="Red"></asp:RegularExpressionValidator>
               </div>
               <div class="col-md-3">
                   <asp:Label ID="Label1" runat="server" Text="Customer name" ></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>     
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Enter only letters" ControlToValidate="TextBox1" CssClass="text-danger" ValidationExpression="^[a-zA-Z ]+$"></asp:RegularExpressionValidator>
                 
               </div>
               <div class="col-md-3">
                     <asp:Label ID="Label4" runat="server" Text="Pincode "></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Eg.4453..(6)" TextMode="Number" ></asp:TextBox>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please enter valid pin code" ValidationExpression="^[1-9][0-9]{5}$" ForeColor="Red"></asp:RegularExpressionValidator>
                  
               </div>
               <div class="row">
               <div class="col-md-6">
                   <asp:Label ID="Label3" runat="server" Text="Postal address" ></asp:Label> </div></div>
               <div class="row-cols-6">
                   <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Eg.Colony name street Place etc."></asp:TextBox><br />
                   <asp:Button ID="Button1" runat="server" Text="Save" cssclass=" btn btn-warning" OnClick="Button1_Click"/></div>  
           </div>
        </div>
        </div>
    <div class="card">
        <div class="card-body" style="background-color:#bdf6b6">
            <div class="row">
                <div class="col-md-4 col-sm-2">
                <asp:Label ID="Label6" runat="server" Text="Item ID "></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="" TextMode="Number" ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter only number" ValidationExpression="^\d+" ForeColor="Red"></asp:RegularExpressionValidator>
                </div>
                <div class="col-md-4">
                      <asp:Label ID="Label7" runat="server" Text="Item name "></asp:Label>
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" ></asp:TextBox>
                </div>
                <div class="col-md-2">
                     <asp:Label ID="Label8" runat="server" Text="In stock "></asp:Label>
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"  ></asp:TextBox>
                </div>
                <div class="col-md-2">
                     <asp:Label ID="Label9" runat="server" Text="Qty"></asp:Label>
                    <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" placeholder="" AutoPostBack="True" OnTextChanged="TextBox9_TextChanged" TextMode="Number"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox9" ErrorMessage="Enter only number" ValidationExpression="^\d+" ForeColor="Red"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                     <asp:Label ID="Label10" runat="server" Text="Item price "></asp:Label>
                    <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control" TextMode="Number" ></asp:TextBox>
                
                </div>
                <div class="col-md-4">
                    <asp:Label ID="Label11" runat="server" Text="Total Price "></asp:Label>
                    <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control"></asp:TextBox>
                
                </div>
                <div class="col-md-2">
                    <asp:Label ID="Label12" runat="server" Text="Discount "></asp:Label>
                    <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control" AutoPostBack="True"  TextMode="Number"  Enabled="false"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox12" ErrorMessage="Enter only number" ValidationExpression="^\d+" ForeColor="Red"></asp:RegularExpressionValidator>
               
                </div>
                <div class="col-md-2">
                    <asp:Label ID="Label13" runat="server" Text="Grand price "></asp:Label>
                        <asp:TextBox ID="TextBox13" runat="server" CssClass="form-control" ></asp:TextBox>
                    
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">&nbsp;</div>
            </div>
            <div class="row">
                <div class="col-md-12">
                                <asp:Button ID="Button2" runat="server" class="btn btn-success" Text="Purchase" type="button" Width="140px" OnClick="Button2_Click"/>
                                &nbsp;<asp:Button ID="Button3" runat="server" class="btn btn-warning" Text="Search" type="button" Width="140px" OnClick="Button3_Click"  />
                                &nbsp;<asp:Button ID="Button4" runat="server" class="btn btn-dark"  type="button" Width="140px" Text="Finalize Bill" OnClick="Button4_Click" />
                                &nbsp;<asp:Button ID="Button5" runat="server" type="button" class="btn btn-info" Text="Reset" Width="140px" OnClick="Button5_Click" />
                    &nbsp;&nbsp;
                                <br/><br /><div class="row">
                <div class="col-md-12">
                    &nbsp;
                </div>
            </div>
                </div>
            </div>
            <a href="order1.aspx">Want to take Order!! CLICK THIS..</a>
        </div>
        <div class=" card-footer">
            <div class="row">
                <div class="col-md-12">
                    &nbsp;
                </div>
            </div>
            <div class="row">
               <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" ShowFooter="True" CssClass="table table-bordered table table-hover" CellPadding="4" ForeColor="#333333" GridLines="None" >
            
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                            <asp:BoundField DataField="costomerid" HeaderText="Costomer ID"></asp:BoundField>
                            <asp:BoundField DataField="itemid" HeaderText="Item ID" />
                            <asp:BoundField DataField="itemname" HeaderText="Item Name" />
                            <asp:BoundField DataField="qty" HeaderText="Qty" />
                            <asp:BoundField DataField="price" HeaderText="Price" />
                            <asp:BoundField DataField="total" HeaderText="Total Price" />
                            <asp:BoundField DataField="dis" HeaderText="Discount" />
                            <asp:BoundField DataField="grand" HeaderText="Grand Total" />
           
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
