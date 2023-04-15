<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="online_order.aspx.cs" Inherits="FMS.online_order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Orders</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
   
</head>
    
   
<body>
    <form id="form1" runat="server">
        <div class="card">
            <div class="card-header" style="text-align:center"><h2>Online order list</h2></div>
            <div class="card-body">
                 <div style="width: 100%; height: 400px; overflow: scroll">
                        <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered border-dark table-responsive table-primary" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False">
                            <Columns>
                                
                                <asp:BoundField DataField="productid" HeaderText="Product ID" />
                                <asp:BoundField DataField="fullname" HeaderText="Customer Name" />
                                <asp:BoundField DataField="email" HeaderText="Email address" />
                                <asp:BoundField DataField="address" HeaderText="Postal address" />
                                <asp:BoundField DataField="pincode" HeaderText="Pincode" />
                                <asp:BoundField DataField="qty" HeaderText="QTY" />
                                <asp:BoundField DataField="totalamount" HeaderText="Total amount" />
                                <asp:BoundField DataField="paymentmethod" HeaderText="Payment" />
                            </Columns>
                            </asp:GridView></div>
            </div>
        </div>
           
            <div class="card">
                <div class="card-header"  style="text-align:center"><h2>Online product list</h2></div>
                <div class="card-body">
                        <div style="width: 100%; height: 400px; overflow: scroll">
                         <asp:GridView ID="GridView2" runat="server" Cssclass="table table-bordered border-dark table-responsive table-info"  AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False">
                             <Columns>
                                 <asp:BoundField DataField="Id" HeaderText="Product ID" />
                                 <asp:BoundField DataField="productid" HeaderText="Product No" />
                                 <asp:BoundField DataField="company" HeaderText="Comapny" />
                                 <asp:BoundField DataField="qty" HeaderText="Stock QTY" />
                                 <asp:BoundField DataField="catogory" HeaderText="Catogory" />
                                 <asp:BoundField DataField="actualprice" HeaderText="Actual Price" />
                                 <asp:BoundField DataField="sellingprice" HeaderText="Selling Price" />
                                 <asp:BoundField DataField="delivarycharge" HeaderText="Delivary Charge" />
                                 <asp:HyperLinkField DataNavigateUrlFields="image" HeaderText="Product Image" Text="Click here" Target="_blank" />
                             </Columns>
                            </asp:GridView></div>
                    </div>
                
            </div>
        <div class="d-grid gap-2">
            <asp:Button ID="Button1" runat="server" Text="View more"  CssClass="btn btn-info" OnClick="Button1_Click"/>
            <asp:Button ID="Button3" runat="server" Text="Back" CssClass="btn btn-dark" OnClick="Button3_Click" /><br />
             
            </div>
 
  
        <asp:Panel ID="Panel1" runat="server">
            <div class="card">
                <div class="card-header" style="text-align:center"><h2>Online customer list</h2></div>
                <div class=" card-footer">
                     <div style="width: 100%; height: 400px; overflow: scroll">
                    <asp:GridView ID="GridView3" runat="server" AllowSorting="True" AutoGenerateColumns="False"  Cssclass="table table-bordered border-dark table-responsive table-warning">
                        <Columns>
                            <asp:BoundField DataField="uid" HeaderText="User ID" />
                            <asp:BoundField DataField="username" HeaderText="User name" />
                            <asp:BoundField DataField="email" HeaderText="Email address" />
                            <asp:BoundField DataField="phonenumber" HeaderText="Phone number" />
                            <asp:BoundField />
                        </Columns>
                    </asp:GridView></div>
                </div>

            </div>
        </asp:Panel>
        <div class="d-grid gap-2">
              <asp:Button ID="Button2" runat="server" Text="View less" CssClass="btn btn-info" OnClick="Button2_Click" /><br />
        </div>
        
    </form>
</body>
</html>
